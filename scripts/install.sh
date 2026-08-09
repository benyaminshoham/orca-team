#!/bin/sh
set -eu

usage() {
  printf '%s\n' \
    'Usage: scripts/install.sh [--dest PATH] [--force]' \
    '' \
    'Installs build-agent-team and run-agent-team-on-codex.' \
    'Existing skills are preserved unless --force is supplied.'
}

force_install=0
if [ -n "${CODEX_HOME:-}" ]; then
  install_destination="$CODEX_HOME/skills"
else
  install_destination="$HOME/.codex/skills"
fi

while [ "$#" -gt 0 ]; do
  case "$1" in
    --dest)
      [ "$#" -ge 2 ] || { printf '%s\n' 'Missing value for --dest.' >&2; exit 2; }
      install_destination=$2
      shift 2
      ;;
    --force)
      force_install=1
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      printf 'Unknown option: %s\n' "$1" >&2
      usage >&2
      exit 2
      ;;
  esac
done

script_directory=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
repository_root=$(CDPATH= cd -- "$script_directory/.." && pwd)
skills_source="$repository_root/skills"

[ -f "$skills_source/build-agent-team/SKILL.md" ] || {
  printf '%s\n' 'Could not find the bundled build-agent-team skill.' >&2
  exit 1
}
[ -f "$skills_source/run-agent-team-on-codex/SKILL.md" ] || {
  printf '%s\n' 'Could not find the bundled run-agent-team-on-codex skill.' >&2
  exit 1
}

mkdir -p "$install_destination"
backup_stamp="$(date '+%Y%m%d%H%M%S').$$"

for skill_name in build-agent-team run-agent-team-on-codex; do
  source_path="$skills_source/$skill_name"
  target_path="$install_destination/$skill_name"

  if [ -e "$target_path" ]; then
    if [ "$force_install" -ne 1 ]; then
      printf 'Refusing to replace existing skill: %s\n' "$target_path" >&2
      printf '%s\n' 'Re-run with --force to back it up and install this copy.' >&2
      exit 1
    fi
    backup_path="$target_path.backup.$backup_stamp"
    mv "$target_path" "$backup_path"
    printf 'Backed up %s to %s\n' "$skill_name" "$backup_path"
  fi

  cp -R "$source_path" "$target_path"
  printf 'Installed %s to %s\n' "$skill_name" "$target_path"
done

printf '%s\n' 'Installation complete. Restart Codex to reload skills.'
