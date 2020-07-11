# Docker-xmltv-sd-json
 
Quick and dirty container for Schedules Direct to XMLTV.

To configure, use `/opt/app/tv_grab_az_sdjson_sqlite/tv_grab_az_sdjson_sqlite --manage-lineups` and then `/opt/app/tv_grab_az_sdjson_sqlite/tv_grab_az_sdjson_sqlite --configure`

For a manual run use `/opt/app/tv_grab_az_sdjson_sqlite/tv_grab_az_sdjson_sqlite --output /output/sd.xml` - This command is automatically run every two hours

Mount `/output` to your output directory and `/root/.xmltv` to a config directory
