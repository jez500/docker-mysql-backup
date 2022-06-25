#!/bin/bash
# Rename backup file.
if [[ -n "$DB_DUMP_DEBUG" ]]; then
  set -x
fi

if [ -e ${DUMPFILE} ];
then
  new_name=/backups/db_backup-all.tgz
  old_name=$(basename ${DUMPFILE})
  echo "Removing old backup ${new_name}"
  rm -f ${new_name}
  echo "Renaming backup file from ${old_name} to ${new_name}"
  mv ${DUMPFILE} ${new_name}
else
  echo "ERROR: Backup file ${DUMPFILE} does not exist!"
fi
