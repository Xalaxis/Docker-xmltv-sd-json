# Docker-xmltv-sd-json
 
Quick and dirty container for Schedules Direct to XMLTV.

To configure, use `/opt/app/tv_grab_az_sdjson_sqlite/tv_grab_az_sdjson_sqlite --manage-lineups` and then `/opt/app/tv_grab_az_sdjson_sqlite/tv_grab_az_sdjson_sqlite --configure`

For a manual run use `/opt/app/tv_grab_az_sdjson_sqlite/tv_grab_az_sdjson_sqlite --output /output/sd.xml > /proc/1/fd/1 2>/proc/1/fd/2` - This command is automatically run every two hours