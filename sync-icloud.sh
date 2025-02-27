#!/bin/ash

##### Functions #####
initialise_config_file(){
   {
      if [ "$(grep -c "albums_with_dates=" "${config_file}")" -eq 0 ]; then echo albums_with_dates="${albums_with_dates:=false}"; fi
      if [ "$(grep -c "apple_id=" "${config_file}")" -eq 0 ]; then echo apple_id="${apple_id}"; fi
      if [ "$(grep -c "authentication_type=" "${config_file}")" -eq 0 ]; then echo authentication_type="${authentication_type:=MFA}"; fi
      if [ "$(grep -c "auth_china=" "${config_file}")" -eq 0 ]; then echo auth_china="${auth_china:=false}"; fi
      if [ "$(grep -c "auto_delete=" "${config_file}")" -eq 0 ]; then echo auto_delete="${auto_delete:=false}"; fi
      if [ "$(grep -c "bark_device_key=" "${config_file}")" -eq 0 ]; then echo bark_device_key="${bark_device_key}"; fi
      if [ "$(grep -c "bark_server=" "${config_file}")" -eq 0 ]; then echo bark_server="${bark_server}"; fi
      if [ "$(grep -c "convert_heic_to_jpeg=" "${config_file}")" -eq 0 ]; then echo convert_heic_to_jpeg="${convert_heic_to_jpeg:=false}"; fi
      if [ "$(grep -c "debug_logging=" "${config_file}")" -eq 0 ]; then echo debug_logging="${debug_logging:=false}"; fi
      if [ "$(grep -c "delete_accompanying=" "${config_file}")" -eq 0 ]; then echo delete_accompanying="${delete_accompanying:=false}"; fi
      if [ "$(grep -c "delete_after_download=" "${config_file}")" -eq 0 ]; then echo delete_after_download="${delete_after_download:=false}"; fi
      if [ "$(grep -c "delete_notifications=" "${config_file}")" -eq 0 ]; then echo delete_notifications="${delete_notifications:=true}"; fi
      if [ "$(grep -c "dingtalk_token=" "${config_file}")" -eq 0 ]; then echo dingtalk_token="${dingtalk_token}"; fi
      if [ "$(grep -c "directory_permissions=" "${config_file}")" -eq 0 ]; then echo directory_permissions="${directory_permissions:=750}"; fi
      if [ "$(grep -c "discord_id=" "${config_file}")" -eq 0 ]; then echo discord_id="${discord_id}"; fi
      if [ "$(grep -c "discord_token=" "${config_file}")" -eq 0 ]; then echo discord_token="${discord_token}"; fi
      if [ "$(grep -c "download_notifications=" "${config_file}")" -eq 0 ]; then echo download_notifications="${download_notifications:=true}"; fi
      if [ "$(grep -c "download_path=" "${config_file}")" -eq 0 ]; then echo download_path="${download_path}"; fi
      if [ "$(grep -c "file_permissions=" "${config_file}")" -eq 0 ]; then echo file_permissions="${file_permissions:=640}"; fi
      if [ "$(grep -c "folder_structure=" "${config_file}")" -eq 0 ]; then echo folder_structure="${folder_structure:={:%Y/%m/%d\}}"; fi
      if [ "$(grep -c "gotify_app_token=" "${config_file}")" -eq 0 ]; then echo gotify_app_token="${gotify_app_token}"; fi
      if [ "$(grep -c "group=" "${config_file}")" -eq 0 ]; then echo group="${group:=group}"; fi
      if [ "$(grep -c "group_id=" "${config_file}")" -eq 0 ]; then echo group_id="${group_id:=1000}"; fi
      if [ "$(grep -c "icloud_china=" "${config_file}")" -eq 0 ]; then echo icloud_china="${icloud_china}"; fi
      if [ "$(grep -c "iyuu_token=" "${config_file}")" -eq 0 ]; then echo iyuu_token="${iyuu_token}"; fi
      if [ "$(grep -c "jpeg_path=" "${config_file}")" -eq 0 ]; then echo jpeg_path="${jpeg_path}"; fi
      if [ "$(grep -c "jpeg_quality=" "${config_file}")" -eq 0 ]; then echo jpeg_quality="${jpeg_quality:=90}"; fi
      if [ "$(grep -c "libraries_with_dates=" "${config_file}")" -eq 0 ]; then echo libraries_with_dates="${libraries_with_dates:=false}"; fi
      if [ "$(grep -c "nextcloud_delete=" "${config_file}")" -eq 0 ]; then echo nextcloud_delete="${nextcloud_delete:=false}"; fi
      if [ "$(grep -c "nextcloud_upload=" "${config_file}")" -eq 0 ]; then echo nextcloud_upload="${nextcloud_upload:=false}"; fi
      if [ "$(grep -c "nextcloud_url=" "${config_file}")" -eq 0 ]; then echo nextcloud_url="${nextcloud_url}"; fi
      if [ "$(grep -c "nextcloud_username=" "${config_file}")" -eq 0 ]; then echo nextcloud_username="${nextcloud_username}"; fi
      if [ "$(grep -c "nextcloud_password=" "${config_file}")" -eq 0 ]; then echo nextcloud_password="${nextcloud_password}"; fi
      if [ "$(grep -c "notification_days=" "${config_file}")" -eq 0 ]; then echo notification_days="${notification_days:=7}"; fi
      if [ "$(grep -c "notification_type=" "${config_file}")" -eq 0 ]; then echo notification_type="${notification_type}"; fi
      if [ "$(grep -c "photo_album=" "${config_file}")" -eq 0 ]; then echo photo_album="${photo_album}"; fi
      if [ "$(grep -c "photo_library=" "${config_file}")" -eq 0 ]; then echo photo_library="${photo_library}"; fi
      if [ "$(grep -c "photo_size=" "${config_file}")" -eq 0 ]; then echo photo_size="${photo_size:=original}"; fi
      if [ "$(grep -c "prowl_api_key=" "${config_file}")" -eq 0 ]; then echo prowl_api_key="${prowl_api_key}"; fi
      if [ "$(grep -c "pushover_sound=" "${config_file}")" -eq 0 ]; then echo pushover_sound="${pushover_sound}"; fi
      if [ "$(grep -c "pushover_token=" "${config_file}")" -eq 0 ]; then echo pushover_token="${pushover_token}"; fi
      if [ "$(grep -c "pushover_user=" "${config_file}")" -eq 0 ]; then echo pushover_user="${pushover_user}"; fi
      if [ "$(grep -c "recent_only=" "${config_file}")" -eq 0 ]; then echo recent_only="${recent_only}"; fi
      if [ "$(grep -c "set_exif_datetime=" "${config_file}")" -eq 0 ]; then echo set_exif_datetime="${set_exif_datetime:=false}"; fi
      if [ "$(grep -c "skip_album=" "${config_file}")" -eq 0 ]; then echo skip_album="${skip_album}"; fi
      if [ "$(grep -c "skip_library=" "${config_file}")" -eq 0 ]; then echo skip_library="${skip_library}"; fi
      if [ "$(grep -c "single_pass=" "${config_file}")" -eq 0 ]; then echo single_pass="${single_pass:=false}"; fi
      if [ "$(grep -c "skip_check=" "${config_file}")" -eq 0 ]; then echo skip_check="${skip_check:=false}"; fi
      if [ "$(grep -c "skip_download=" "${config_file}")" -eq 0 ]; then echo skip_download="${skip_download:=false}"; fi
      if [ "$(grep -c "skip_live_photos=" "${config_file}")" -eq 0 ]; then echo skip_live_photos="${skip_live_photos:=false}"; fi
      if [ "$(grep -c "skip_videos=" "${config_file}")" -eq 0 ]; then echo skip_videos="${skip_videos:=false}"; fi
      if [ "$(grep -c "synchronisation_delay=" "${config_file}")" -eq 0 ]; then echo synchronisation_delay="${synchronisation_delay:=0}"; fi
      if [ "$(grep -c "synchronisation_interval=" "${config_file}")" -eq 0 ]; then echo synchronisation_interval="${synchronisation_interval:=86400}"; fi
      if [ "$(grep -c "synology_ignore_path=" "${config_file}")" -eq 0 ]; then echo synology_ignore_path="${synology_ignore_path:=false}"; fi     
      if [ "$(grep -c "telegram_chat_id=" "${config_file}")" -eq 0 ]; then echo telegram_chat_id="${telegram_chat_id}"; fi
      if [ "$(grep -c "telegram_polling=" "${config_file}")" -eq 0 ]; then echo telegram_polling="${telegram_polling:=true}"; fi
      if [ "$(grep -c "telegram_server=" "${config_file}")" -eq 0 ]; then echo telegram_server="${telegram_server}"; fi
      if [ "$(grep -c "telegram_silent_file_notifications=" "${config_file}")" -eq 0 ]; then echo telegram_silent_file_notifications="${telegram_silent_file_notifications}"; fi
      if [ "$(grep -c "telegram_token=" "${config_file}")" -eq 0 ]; then echo telegram_token="${telegram_token}"; fi
      if [ "$(grep -c "trigger_nextlcoudcli_synchronisation=" "${config_file}")" -eq 0 ]; then echo trigger_nextlcoudcli_synchronisation="${trigger_nextlcoudcli_synchronisation}"; fi
      if [ "$(grep -c "until_found=" "${config_file}")" -eq 0 ]; then echo until_found="${until_found}"; fi
      if [ "$(grep -c "user=" "${config_file}")" -eq 0 ]; then echo user="${user:=user}"; fi
      if [ "$(grep -c "user_id=" "${config_file}")" -eq 0 ]; then echo user_id="${user_id:=1000}"; fi
      if [ "$(grep -c "webhook_https=" "${config_file}")" -eq 0 ]; then echo webhook_https="${webhook_https:=false}"; fi
      if [ "$(grep -c "webhook_id=" "${config_file}")" -eq 0 ]; then echo webhook_id="${webhook_id}"; fi
      if [ "$(grep -c "webhook_path=" "${config_file}")" -eq 0 ]; then echo webhook_path="${webhook_path:=/api/webhook/}"; fi
      if [ "$(grep -c "webhook_port=" "${config_file}")" -eq 0 ]; then echo webhook_port="${webhook_port:=8123}"; fi
      if [ "$(grep -c "webhook_server=" "${config_file}")" -eq 0 ]; then echo webhook_server="${webhook_server}"; fi
      if [ "$(grep -c "wecom_id=" "${config_file}")" -eq 0 ]; then echo wecom_id="${wecom_id}"; fi
      if [ "$(grep -c "wecom_proxy=" "${config_file}")" -eq 0 ]; then echo wecom_proxy="${wecom_proxy}"; fi
      if [ "$(grep -c "wecom_secret=" "${config_file}")" -eq 0 ]; then echo wecom_secret="${wecom_secret}"; fi
      if [ "$(grep -c "agentid=" "${config_file}")" -eq 0 ]; then echo agentid="${agentid}"; fi
      if [ "$(grep -c "touser=" "${config_file}")" -eq 0 ]; then echo touser="${touser}"; fi
      if [ "$(grep -c "content_source_url=" "${config_file}")" -eq 0 ]; then echo content_source_url="${content_source_url}"; fi
      if [ "$(grep -c "name=" "${config_file}")" -eq 0 ]; then echo name="${name}"; fi
      if [ "$(grep -c "media_id_startup=" "${config_file}")" -eq 0 ]; then echo media_id_startup="${media_id_startup}"; fi
      if [ "$(grep -c "media_id_download=" "${config_file}")" -eq 0 ]; then echo media_id_download="${media_id_download}"; fi
      if [ "$(grep -c "media_id_delete=" "${config_file}")" -eq 0 ]; then echo media_id_delete="${media_id_delete}"; fi
      if [ "$(grep -c "media_id_expiration=" "${config_file}")" -eq 0 ]; then echo media_id_expiration="${media_id_expiration}"; fi
      if [ "$(grep -c "media_id_warning=" "${config_file}")" -eq 0 ]; then echo media_id_warning="${media_id_warning}"; fi
   } >> "${config_file}"
   if [ "${albums_with_dates}" ]; then sed -i "s%^albums_with_dates=.*%albums_with_dates=${albums_with_dates}%" "${config_file}"; fi
   if [ "${apple_id}" ]; then sed -i "s%^apple_id=.*%apple_id=${apple_id}%" "${config_file}"; fi
   if [ "${authentication_type}" ]; then sed -i "s%^authentication_type=.*%authentication_type=${authentication_type}%" "${config_file}"; fi
   if [ "${auth_china}" ]; then sed -i "s%^auth_china=.*%auth_china=${auth_china}%" "${config_file}"; fi
   if [ "${auto_delete}" ]; then sed -i "s%^auto_delete=.*%auto_delete=${auto_delete}%" "${config_file}"; fi
   if [ "${bark_device_key}" ]; then sed -i "s%^bark_device_key=.*%bark_device_key=${bark_device_key}%" "${config_file}"; fi
   if [ "${bark_server}" ]; then sed -i "s%^bark_server=.*%bark_server=${bark_server}%" "${config_file}"; fi
   if [ "${convert_heic_to_jpeg}" ]; then sed -i "s%^convert_heic_to_jpeg=.*%convert_heic_to_jpeg=${convert_heic_to_jpeg}%" "${config_file}"; fi
   if [ "${debug_logging}" ]; then sed -i "s%^debug_logging=.*%debug_logging=${debug_logging}%" "${config_file}"; fi
   if [ "${delete_accompanying}" ]; then sed -i "s%^delete_accompanying=.*%delete_accompanying=${delete_accompanying}%" "${config_file}"; fi
   if [ "${delete_after_download}" ]; then sed -i "s%^delete_after_download=.*%delete_after_download=${delete_after_download}%" "${config_file}"; fi
   if [ "${delete_notification}" ]; then sed -i "s%^delete_notification=.*%delete_notification=${delete_notification}%" "${config_file}"; fi
   if [ "${dingtalk_token}" ]; then sed -i "s%^dingtalk_token=.*%dingtalk_token=${dingtalk_token}%" "${config_file}"; fi
   if [ "${directory_permissions}" ]; then sed -i "s%^directory_permissions=.*%directory_permissions=${directory_permissions}%" "${config_file}"; fi
   if [ "${discord_id}" ]; then sed -i "s%^discord_id=.*%discord_id=${discord_id}%" "${config_file}"; fi
   if [ "${discord_token}" ]; then sed -i "s%^discord_token=.*%discord_token=${discord_token}%" "${config_file}"; fi
   if [ "${download_notifications}" ]; then sed -i "s%^download_notifications=.*%download_notifications=${download_notifications}%" "${config_file}"; fi
   if [ "${download_path}" ]; then sed -i "s%^download_path=.*%download_path=${download_path}%" "${config_file}"; fi
   if [ "${file_permissions}" ]; then sed -i "s%^file_permissions=.*%file_permissions=${file_permissions}%" "${config_file}"; fi
   if [ "${folder_structure}" ]; then
      sanitised_folder_structure="${folder_structure//\//\\/}"
      sed -i "s@^folder_structure=.*@folder_structure=${sanitised_folder_structure}@" "${config_file}"
   fi
   if [ "${gotify_app_token}" ]; then sed -i "s%^gotify_app_token=.*%gotify_app_token=${gotify_app_token}%" "${config_file}"; fi
   if [ "${group}" ]; then sed -i "s%^group=.*%group=${group}%" "${config_file}"; fi
   if [ "${group_id}" ]; then sed -i "s%^group_id=.*%group_id=${group_id}%" "${config_file}"; fi
   if [ "${icloud_china}" ]; then sed -i "s%^icloud_china=.*%icloud_china=${icloud_china}%" "${config_file}"; fi
   if [ "${iyuu_token}" ]; then sed -i "s%^iyuu_token=.*%iyuu_token=${iyuu_token}%" "${config_file}"; fi
   if [ "${jpeg_path}" ]; then sed -i "s%^jpeg_path=.*%jpeg_path=${jpeg_path}%" "${config_file}"; fi
   if [ "${jpeg_quality}" ]; then sed -i "s%^jpeg_quality=.*%jpeg_quality=${jpeg_quality}%" "${config_file}"; fi
   if [ "${libraries_with_dates}" ]; then sed -i "s%^libraries_with_dates=.*%libraries_with_dates=${libraries_with_dates}%" "${config_file}"; fi
   if [ "${nextcloud_delete}" ]; then sed -i "s%^nextcloud_delete=.*%nextcloud_delete=${nextcloud_delete}%" "${config_file}"; fi
   if [ "${nextcloud_upload}" ]; then sed -i "s%^nextcloud_upload=.*%nextcloud_upload=${nextcloud_upload}%" "${config_file}"; fi
   if [ "${nextcloud_url}" ]; then sed -i "s%^nextcloud_url=.*%nextcloud_url=${nextcloud_url}%" "${config_file}"; fi
   if [ "${nextcloud_username}" ]; then sed -i "s%^nextcloud_username=.*%nextcloud_username=${nextcloud_username}%" "${config_file}"; fi
   if [ "${nextcloud_password}" ]; then sed -i "s%^nextcloud_password=.*%nextcloud_password=${nextcloud_password}%" "${config_file}"; fi
   if [ "${notification_days}" ]; then sed -i "s%^notification_days=.*%notification_days=${notification_days}%" "${config_file}"; fi
   if [ "${notification_type}" ]; then sed -i "s%^notification_type=.*%notification_type=${notification_type}%" "${config_file}"; fi
   if [ "${photo_album}" ]; then sed -i "s%^photo_album=.*%photo_album=\"${photo_album}\"%" "${config_file}"; fi
   if [ "${photo_library}" ]; then sed -i "s%^photo_library=.*%photo_library=${photo_library}%" "${config_file}"; fi
   if [ "${photo_size}" ]; then sed -i "s%^photo_size=.*%photo_size=${photo_size}%" "${config_file}"; fi
   if [ "${prowl_api_key}" ]; then sed -i "s%^prowl_api_key=.*%prowl_api_key=${prowl_api_key}%" "${config_file}"; fi
   if [ "${pushover_sound}" ]; then sed -i "s%^pushover_sound=.*%pushover_sound=${pushover_sound}%" "${config_file}"; fi
   if [ "${pushover_token}" ]; then sed -i "s%^pushover_token=.*%pushover_token=${pushover_token}%" "${config_file}"; fi
   if [ "${pushover_user}" ]; then sed -i "s%^pushover_user=.*%pushover_user=${pushover_user}%" "${config_file}"; fi
   if [ "${recent_only}" ]; then sed -i "s%^recent_only=.*%recent_only=${recent_only}%" "${config_file}"; fi
   if [ "${set_exif_datetime}" ]; then sed -i "s%^set_exif_datetime=.*%set_exif_datetime=${set_exif_datetime}%" "${config_file}"; fi
   if [ "${single_pass}" ]; then sed -i "s%^single_pass=.*%single_pass=${single_pass}%" "${config_file}"; fi
   if [ "${skip_album}" ]; then sed -i "s%^skip_album=.*%skip_album=\"${skip_album}\"%" "${config_file}"; fi
   if [ "${skip_library}" ]; then sed -i "s%^skip_library=.*%skip_library=\"${skip_library}\"%" "${config_file}"; fi
   if [ "${skip_check}" ]; then sed -i "s%^skip_check=.*%skip_check=${skip_check}%" "${config_file}"; fi
   if [ "${skip_download}" ]; then sed -i "s%^skip_download=.*%skip_download=${skip_download}%" "${config_file}"; fi
   if [ "${skip_live_photos}" ]; then sed -i "s%^skip_live_photos=.*%skip_live_photos=${skip_live_photos}%" "${config_file}"; fi
   if [ "${skip_videos}" ]; then sed -i "s%^skip_videos=.*%skip_videos=${skip_videos}%" "${config_file}"; fi
   if [ "${synchronisation_delay}" ]; then sed -i "s%^synchronisation_delay=.*%synchronisation_delay=${synchronisation_delay}%" "${config_file}"; fi
   if [ "${synchronisation_interval}" ]; then sed -i "s%^synchronisation_interval=.*%synchronisation_interval=${synchronisation_interval}%" "${config_file}"; fi
   if [ "${synology_ignore_path}" ]; then sed -i "s%^synology_ignore_path=.*%synology_ignore_path=${synology_ignore_path}%" "${config_file}"; fi
   if [ "${telegram_chat_id}" ]; then sed -i "s%^telegram_chat_id=.*%telegram_chat_id=${telegram_chat_id}%" "${config_file}"; fi
   if [ "${telegram_polling}" ]; then sed -i "s%^telegram_polling=.*%telegram_polling=${telegram_polling}%" "${config_file}"; fi
   if [ "${telegram_server}" ]; then sed -i "s%^telegram_server=.*%telegram_server=${telegram_server}%" "${config_file}"; fi
   if [ "${telegram_silent_file_notifications}" ]; then sed -i "s%^telegram_silent_file_notifications=.*%telegram_silent_file_notifications=${telegram_silent_file_notifications}%" "${config_file}"; fi
   if [ "${telegram_token}" ]; then sed -i "s%^telegram_token=.*%telegram_token=${telegram_token}%" "${config_file}"; fi
   if [ "${trigger_nextlcoudcli_synchronisation}" ]; then sed -i "s%^trigger_nextlcoudcli_synchronisation=.*%trigger_nextlcoudcli_synchronisation=${trigger_nextlcoudcli_synchronisation}%" "${config_file}"; fi
   if [ "${until_found}" ]; then sed -i "s%^until_found=.*%until_found=${until_found}%" "${config_file}"; fi
   if [ "${user}" ]; then sed -i "s%^user=.*%user=${user}%" "${config_file}"; fi
   if [ "${user_id}" ]; then sed -i "s%^user_id=.*%user_id=${user_id}%" "${config_file}"; fi
   if [ "${webhook_https}" ]; then sed -i "s%^webhook_https=.*%webhook_https=${webhook_https}%" "${config_file}"; fi
   if [ "${webhook_id}" ]; then sed -i "s%^webhook_id=.*%webhook_id=${webhook_id}%" "${config_file}"; fi
   if [ "${webhook_path}" ]; then sed -i "s%^webhook_path=.*%webhook_path=${webhook_path}%" "${config_file}"; fi
   if [ "${webhook_port}" ]; then sed -i "s%^webhook_port=.*%webhook_port=${webhook_port}%" "${config_file}"; fi
   if [ "${webhook_server}" ]; then sed -i "s%^webhook_server=.*%webhook_server=${webhook_server}%" "${config_file}"; fi
   if [ "${wecom_id}" ]; then sed -i "s%^wecom_id=.*%wecom_id=${wecom_id}%" "${config_file}"; fi
   if [ "${wecom_proxy}" ]; then sed -i "s%^wecom_proxy=.*%wecom_proxy=${wecom_proxy}%" "${config_file}"; fi
   if [ "${wecom_secret}" ]; then sed -i "s%^wecom_secret=.*%wecom_secret=${wecom_secret}%" "${config_file}"; fi
   if [ "${agentid}" ]; then sed -i "s%^agentid=.*%agentid=${agentid}%" "${config_file}"; fi
   if [ "${touser}" ]; then sed -i "s%^touser=.*%touser=${touser}%" "${config_file}"; fi
   if [ "${content_source_url}" ]; then sed -i "s%^content_source_url=.*%content_source_url=${content_source_url}%" "${config_file}"; fi
   if [ "${name}" ]; then sed -i "s%^name=.*%name=${name}%" "${config_file}"; fi
   if [ "${media_id_startup}" ]; then sed -i "s%^media_id_startup=.*%media_id_startup=${media_id_startup}%" "${config_file}"; fi
   if [ "${media_id_download}" ]; then sed -i "s%^media_id_download=.*%media_id_download=${media_id_download}%" "${config_file}"; fi
   if [ "${media_id_delete}" ]; then sed -i "s%^media_id_delete=.*%media_id_delete=${media_id_delete}%" "${config_file}"; fi
   if [ "${media_id_expiration}" ]; then sed -i "s%^media_id_expiration=.*%media_id_expiration=${media_id_expiration}%" "${config_file}"; fi
   if [ "${media_id_warning}" ]; then sed -i "s%^media_id_warning=.*%media_id_warning=${media_id_warning}%" "${config_file}"; fi
   mv "${config_file}" "${config_file}.tmp"
   sort "${config_file}.tmp" --output="${config_file}"
   chmod --reference="${config_file}.tmp" "${config_file}"
   rm "${config_file}.tmp"
   sed -i 's/=True/=true/g' "${config_file}"
   sed -i 's/=False/=false/g' "${config_file}"
   sed -i 's/authentication_type=2FA/authentication_type=MFA/' "${config_file}"
}

Initialise(){

   echo
   LogInfo "***** boredazfcuk/icloudpd container for icloud_photo_downloader v1.0.$(cat /build_version.txt) started *****"
   LogInfo "***** For support, please go here: https://github.com/boredazfcuk/docker-icloudpd *****"
   LogInfo "$(cat /etc/*-release | grep "^NAME" | sed 's/NAME=//g' | sed 's/"//g') $(cat /etc/*-release | grep "VERSION_ID" | sed 's/VERSION_ID=//g' | sed 's/"//g')"
   LogInfo "Python version: $(python3 --version | awk '{print $2}')"

   config_file="${config_dir}/icloudpd.conf"
   initialise_config_file
   LogInfo "Loading configuration from: ${config_file}"
   source "${config_file}"
   save_ifs="${IFS}"
   lan_ip="$(hostname -i)"
   login_counter=0
   apple_id="$(echo -n ${apple_id} | tr '[:upper:]' '[:lower:]')"
   cookie_file="$(echo -n "${apple_id//[^a-z0-9_]/}")"
   
   local icloud_dot_com dns_counter
   if [ "${icloud_china:=false}" = true ]; then
      icloud_domain="icloud.com.cn"
   else
      icloud_domain="icloud.com"
   fi
   case "${synchronisation_interval:=86400}" in
      21600) synchronisation_interval=21600;; # 6 hours
      43200) synchronisation_interval=43200;; # 12 hours
      86400) synchronisation_interval=86400;; # 24 hours
      129600) synchronisation_interval=129600;; # 36 hours
      172800) synchronisation_interval=172800;; # 48 hours
      604800) synchronisation_interval=604800;; # 7 days
      *) synchronisation_interval=86400;; # 24 hours
   esac
   if [ "${synchronisation_delay:=0}" -gt 60 ]; then
      synchronisation_delay=60
   fi
   if [ ! -d "/tmp/icloudpd" ]; then mkdir --parents "/tmp/icloudpd"; fi
   if [ -f "/tmp/icloudpd/icloudpd_check_exit_code" ]; then rm "/tmp/icloudpd/icloudpd_check_exit_code"; fi
   if [ -f "/tmp/icloudpd/icloudpd_download_exit_code" ]; then rm "/tmp/icloudpd/icloudpd_download_exit_code"; fi
   if [ -f "/tmp/icloudpd/icloudpd_check_error" ]; then rm "/tmp/icloudpd/icloudpd_check_error"; fi
   if [ -f "/tmp/icloudpd/icloudpd_download_error" ]; then rm "/tmp/icloudpd/icloudpd_download_error"; fi
   if [ -f "/tmp/icloudpd/icloudpd_sync.log" ]; then rm "/tmp/icloudpd/icloudpd_sync.log"; fi
   if [ -f "/tmp/icloudpd/icloudpd_tracert.err" ]; then rm "/tmp/icloudpd/icloudpd_tracert.err"; fi
   touch "/tmp/icloudpd/icloudpd_check_exit_code"
   touch "/tmp/icloudpd/icloudpd_download_exit_code"
   touch "/tmp/icloudpd/icloudpd_check_error"
   touch "/tmp/icloudpd/icloudpd_download_error"
   touch "/tmp/icloudpd/icloudpd_sync.log"
   touch "/tmp/icloudpd/icloudpd_tracert.err"

   if [ -z "${apple_id}" ]; then
      LogError "Apple ID not set - exiting"
      sleep 120
      exit 1
   fi
   LogDebug "Running user id: $(id --user)"
   LogDebug "Running group id: $(id --group)"
   if [ "${user}" = "root" ]; then
      LogWarning "The local user for synchronisation cannot be root"
      unset user
   fi
   if [ "${user_id}" -eq 0 ]; then
      LogWarning "The local user id for synchronisation cannot be 0"
      unset user_id
   fi
   LogDebug "Local user: ${user:=user}:${user_id:=1000}"
   if [ "${group}" = "root" ]; then
      LogWarning "The local group for synchronisation cannot be root"
      unset group
   fi
   if [ "${group_id}" -eq 0 ]; then
      LogWarning "The local group id for synchronisation cannot be 0"
      unset group_id force_gid
   fi
   LogDebug "Local group: ${group:=group}:${group_id:=1000}"
   LogDebug "Force GID: ${force_gid:=false}"
   LogDebug "LAN IP Address: ${lan_ip}"
   LogDebug "Default gateway: $(ip route | grep default | awk '{print $3}')"
   LogDebug "DNS server: $(cat /etc/resolv.conf | grep nameserver | awk '{print $2}')"
   icloud_dot_com="$(nslookup -vc -type=a ${icloud_domain} | grep -v "127.0.0.1" | grep Address | tail -1 | awk '{print $2}')"
   while [ -z "${icloud_dot_com}" ]; do
      if [ "${dns_counter:=0}" = 0 ]; then
         LogWarning "Cannot find ${icloud_domain} IP address - retrying"
      fi
      sleep 10
      icloud_dot_com="$(nslookup -vc -type=a ${icloud_domain} | grep -v "127.0.0.1" | grep Address | tail -1 | awk '{print $2}')"
      dns_counter=$((dns_counter+1))
      if [ "${dns_counter}" = 12 ]; then
         LogError "Cannot find ${icloud_domain} IP address. Please check your DNS/Firewall settings. DNS server must be available using TCP port 53 - exiting"
         sleep 120
         exit 1
      fi
   done
   LogDebug "IP address for ${icloud_domain}: ${icloud_dot_com}"
   if [ "$(traceroute -q 1 -w 1 ${icloud_domain} >/dev/null 2>/tmp/icloudpd/icloudpd_tracert.err; echo $?)" = 1 ]; then
      LogError "No route to ${icloud_domain} found. Please check your container's network settings - exiting"
      LogError "Error debug - $(cat /tmp/icloudpd/icloudpd_tracert.err)"
      sleep 120
      exit 1
   else
      LogDebug "Route check to ${icloud_domain} successful"
   fi
   if [ "${debug_logging:=false}" = true ]; then
      LogDebug "Apple ID: (hidden)"
   else
      LogInfo "Apple ID: ${apple_id}"
   fi
   LogInfo "Authentication Type: ${authentication_type:=MFA}"
   if [ "${debug_logging}" = true ]; then
      LogDebug "Cookie path: ${config_dir}/(hidden)"
   else
      LogInfo "Cookie path: ${config_dir}/${cookie_file}"
   fi
   LogInfo "Cookie expiry notification period: ${notification_days:=7}"
   LogInfo "Download destination directory: ${download_path:=/home/${user}/iCloud}"
   if [ ! -d "${download_path}" ]; then
      LogInfo "Download directory does not exist."
      LogInfo "Creating ${download_path} and configuring permissions."
      mkdir --parents "${download_path}"
      SetOwnerAndPermissionsDownloads
   fi
   LogInfo "Folder structure: ${folder_structure:={:%Y/%m/%d\}}"
   LogDebug "Directory permissions: ${directory_permissions:=750}"
   LogDebug "File permissions: ${file_permissions:=640}"
   if [ "${syncronisation_interval}" ]; then
      LogWarning "The syncronisation_interval variable contained a typo. This has now been corrected to synchronisation_interval. Please update your container. Defaulting to one sync per 24 hour period"
      synchronisation_interval="86400"
   fi
   LogInfo "Synchronisation interval: ${synchronisation_interval}"
   if [ "${synchronisation_interval}" -lt 43200 ]; then
      if [ "${warnings_acknowledged:=false}" = true ]; then
         LogDebug "Synchronisation interval throttle warning acknowledged"
      else
         LogWarning "Setting synchronisation_interval to less than 43200 (12 hours) may cause throttling by Apple."
         LogWarning "If you run into the following error: "
         LogWarning " - private db access disabled for this account. Please wait a few hours then try again. The remote servers might be trying to throttle requests. (ACCESS_DENIED)"
         LogWarning "Then check your synchronisation_interval is 43200 or greater and switch the container off for 6-12 hours so Apple's throttling expires. Continuing in 2 minutes"
         sleep 120
      fi
   fi
   LogInfo "Synchronisation delay (minutes): ${synchronisation_delay}"
   LogInfo "Set EXIF date/time: ${set_exif_datetime:=false}"
   if [ "${set_exif_datetime}" = true ]; then
      LogWarning "This setting changes the files that are downloaded, so they will be downloaded a second time. Enabling this setting results in a lot of duplicate"
   fi
   LogInfo "Auto delete: ${auto_delete:=false}"
   LogInfo "Delete after download: ${delete_after_download:=false}"
   if [ "${auto_delete}" != false -a "${delete_after_download}" != false ]; then
      LogError "The variables auto_delete and delete_after_download cannot both be configured at the same time. Please choose one or the other - exiting"
      sleep 120
      exit 1
   fi
   LogInfo "Photo size: ${photo_size:=original}"
   LogInfo "Single pass mode: ${single_pass:=false}"
   if [ "${single_pass}" = true ]; then
      LogDebug "Single pass mode enabled. Disabling download check"
      skip_check=true
   fi
   LogInfo "Skip download check: ${skip_check:=false}"
   LogInfo "Skip live photos: ${skip_live_photos:=false}"
   if [ "${recent_only}" ]; then
      LogInfo "Number of most recently added photos to download: ${recent_only}"
   else
      LogInfo "Number of most recently added photos to download: Download All Photos"
   fi
   if [ "${photo_album}" ]; then
      LogInfo "Downloading photos from album(s): ${photo_album}"
   elif [ "${photo_library}" ]; then
      LogInfo "Downloading photos from library: ${photo_library}"
   else
      LogInfo "Downloading photos from: Download All Photos"
   fi
   if [ "${until_found}" ]; then
      LogInfo "Stop downloading when prexisiting files count is: ${until_found}"
   else
      LogInfo "Stop downloading when prexisiting files count is: Download All Photos"
   fi
   if [ "${skip_live_photos:=false}" = false ]; then
      LogInfo "Live photo size: ${live_photo_size:=original}"
   fi
   LogInfo "Skip videos: ${skip_videos:=false}"
   LogInfo "Convert HEIC to JPEG: ${convert_heic_to_jpeg:=false}"
   if [ "${convert_heic_to_jpeg}" = true ]; then
      LogDebug "JPEG conversion quality: ${jpeg_quality:=90}"
   fi
   if [ "${jpeg_path}" ]; then
      LogInfo "Converted JPEGs path: ${jpeg_path}"
   fi
   if [ "${delete_accompanying:=false}" = true -a -z "${warnings_acknowledged}" ]; then
      LogInfo "Delete accompanying files (.JPG/.HEIC.MOV)"
      LogWarning "This feature deletes files from your local disk. Please use with caution. I am not responsible for any data loss."
      LogWarning "This feature cannot be used if the 'folder_structure' variable is set to 'none' and also, 'set_exif_datetime' must be 'False'"
      LogWarning "These two settings will increase the chances of de-duplication happening, which could result in the wrong files being removed. Continuing in 2 minutes."
      if [ "${warnings_acknowledged:=false}" = true ]; then
         LogInfo "File deletion warning accepted"
      else
         sleep 120
      fi
   fi
   if [ "${notification_type}" ]; then
      ConfigureNotifications
   fi
   LogInfo "Downloading from: ${icloud_domain}"
   if [ "${icloud_china}" = true ]; then
      if [ "${auth_china:=false}" = true ]; then
         auth_domain="cn"
      else
         LogWarning "You have the icloud_china variable set, but auth_china is false. Are you sure this is correct?"
      fi
   fi
   LogInfo "Authentication domain: ${auth_domain:=com}"
   if [ "${trigger_nextlcoudcli_synchronisation}" ]; then
      LogDebug "Nextcloud synchronisation trigger: Enabled"
   else
      LogDebug "Nextcloud synchronisation trigger: Disabled"
   fi
   if [ "${nextcloud_upload}" = true ]; then
      if [ "${nextcloud_url}" -a "${nextcloud_username}" -a "${nextcloud_password}" ]; then
         LogInfo "Nextcloud upload: Enabled"
         LogInfo "Nextcloud URL: ${nextcloud_url}"
         LogInfo "Nextcloud username: ${nextcloud_username}"
      else
         LogError "Nextcloud upload: Missing mandatory variables. Disabling."
         unset nextlcoud_upload
      fi
   else
      LogDebug "Nextcloud upload: Disabled"
   fi

   if [ "${synology_ignore_path}" = true ]; then
      LogInfo "Ignore Synology extended attribute directories: Enabled"
      ignore_path="*/@eaDir*"
   else
      LogInfo "Ignore Synology extended attribute directories: Disabled"
      ignore_path=""
   fi

   source /opt/icloudpd_latest/bin/activate
   LogDebug "Activated Python virtual environment for icloudpd: $(/opt/icloudpd_latest/bin/icloudpd --version | awk '{print $3}')"
}

LogInfo(){
   local log_message
   log_message="${1}"
   echo "$(date '+%Y-%m-%d %H:%M:%S') INFO     ${log_message}"
}

LogInfoN(){
   local log_message
   log_message="${1}"
   echo -n "$(date '+%Y-%m-%d %H:%M:%S') INFO     ${log_message}... "
}

LogWarning(){
   local log_message
   log_message="${1}"
   echo "$(date '+%Y-%m-%d %H:%M:%S') WARNING  ${log_message}"
}

LogError(){
   local log_message
   log_message="${1}"
   echo "$(date '+%Y-%m-%d %H:%M:%S') ERROR    ${log_message}"
}

LogDebug(){
   if [ "${debug_logging}" = true ]; then
      local log_message
      log_message="${1}"
      echo "$(date '+%Y-%m-%d %H:%M:%S') DEBUG    ${log_message}"
   fi
}

run_as() {
   local command_to_run
   command_to_run="${1}"
   if [ "$(id -u)" = 0 ]; then
      su "${user}" -s /bin/ash -c "${command_to_run}"
   else
      /bin/ash -c "${command_to_run}"
   fi
}

CleanNotificationTitle(){
   if [ "${notification_title}" ]; then
      notification_title="${notification_title//[^a-zA-Z0-9_ ]/}"
      LogDebug "Cleaned notification title: ${notification_title}"
   else
      LogDebug "Notification title: ${notification_title:=boredazfcuk/iCloudPD}"
   fi
}

ConfigureNotifications(){
   if [ -z "${prowl_api_key}" -a -z "${pushover_token}" -a -z "${telegram_token}" -a -z "${webhook_id}" -a -z "${dingtalk_token}" -a -z "${discord_token}" -a -z "${iyuu_token}" -a -z "${wecom_secret}" -a -z "${gotify_app_token}" -a -z "${bark_device_key}" ]; then
      LogWarning "${notification_type} notifications enabled, but API key/token/secret not set - disabling notifications"
      unset notification_type
   else
      if [ "${notification_type}" = "Prowl" -a "${prowl_api_key}" ]; then
         LogInfo "${notification_type} notifications enabled"
         CleanNotificationTitle
         if [ "${debug_logging}" = true ]; then
            LogDebug "${notification_type} api key: (hidden)"
         else
            LogInfo "${notification_type} api key: ${prowl_api_key}"
         fi
         notification_url="https://api.prowlapp.com/publicapi/add"
      elif [ "${notification_type}" = "Pushover" -a "${pushover_user}" -a "${pushover_token}" ]; then
         LogInfo "${notification_type} notifications enabled"
         CleanNotificationTitle
         if [ "${debug_logging}" = true ]; then
            LogDebug "${notification_type} user: (hidden)"
            LogDebug "${notification_type} token: (hidden)"
         else
            LogInfo "${notification_type} user: ${pushover_user}"
            LogInfo "${notification_type} token: ${pushover_token}"
         fi
         if [ "${pushover_sound}" ]; then
            case "${pushover_sound}" in
               pushover|bike|bugle|cashregister|classical|cosmic|falling|gamelan|incoming|intermission|magic|mechanical|pianobar|siren|spacealarm|tugboat|alien|climb|persistent|echo|updown|vibrate|none)
                  LogDebug "${notification_type} sound: ${pushover_sound}"
               ;;
               *)
                  LogDebug "${notification_type} sound not recognised. Using default"
                  unset pushover_sound
            esac
         fi
         notification_url="https://api.pushover.net/1/messages.json"
      elif [ "${notification_type}" = "Telegram" -a "${telegram_token}" -a "${telegram_chat_id}" ]; then
         if [ "${telegram_server}" ] ; then
            notification_url="https://${telegram_server}/bot${telegram_token}/sendMessage"
         else
            notification_url="https://api.telegram.org/bot${telegram_token}/sendMessage"
         fi
         LogInfo "${notification_type} notifications enabled"
         CleanNotificationTitle
         if [ "${debug_logging}" = true ]; then
            LogDebug "${notification_type} token: (hidden)"
            LogDebug "${notification_type} chat id: (hidden)"
            LogDebug "${notification_type} polling: ${telegram_polling}"
            LogDebug "${notification_type} notification URL: (hidden)"
         else
            LogInfo "${notification_type} token: ${telegram_token}"
            LogInfo "${notification_type} chat id: ${telegram_chat_id}"
            LogInfo "${notification_type} polling: ${telegram_polling}"
            LogInfo "${notification_type} notification URL: ${notification_url}"
         fi
         if [ "${telegram_polling}" = true ]; then
            telegram_update_id_offset_file="${config_dir}/telegram_update_id.num"
            if [ ! -f "${telegram_update_id_offset_file}" ]; then
               LogDebug "Creating Telegram Update ID offset file"
               echo -n 0 > "${telegram_update_id_offset_file}"
            fi
            LogInfo "Check Telegram bot initialised..."
            sleep "$((RANDOM % 15))"
            if [ "${telegram_server}" ] ; then
               LogDebug "Checking ${telegram_server} for updates"
               bot_check="$(curl --silent -X POST "https://${telegram_server}/bot${telegram_token}/getUpdates" | jq -r .ok)"
            else
               LogDebug "Checking api.telegram.org for updates"
               bot_check="$(curl --silent -X POST "https://api.telegram.org/bot${telegram_token}/getUpdates" | jq -r .ok)"
            fi
            LogDebug "Bot check: ${bot_check}"
            if [ "${bot_check}" = true ]; then
               LogInfo " - Bot has been initialised."
            else
               LogInfo " - Bot has not been initialised or needs reinitialising. Please send a message to the bot from your iDevice and restart the container. Disabling remote wake"
               sleep 10
               telegram_polling=false
            fi
            telegram_update_id_offset="$(head -1 ${telegram_update_id_offset_file})"
            LogInfo "Latest update id: ${telegram_update_id_offset}"
         fi
         if [ "${telegram_silent_file_notifications}" ]; then telegram_silent_file_notifications=true; fi
         LogDebug "${notification_type} silent file notifications: ${telegram_silent_file_notifications:=false}"
      elif [ "${notification_type}" = "openhab" -a "${webhook_server}" -a "${webhook_id}" ]; then
         if [ "${webhook_https}" = true ]; then
            webhook_scheme="https"
         else
            webhook_scheme="http"
         fi
         LogInfo "${notification_type} notifications enabled"
         LogDebug "${notification_type} server: ${webhook_server}"
         LogDebug "${notification_type} port: ${webhook_port:=8123}"
         LogDebug "${notification_type} path: ${webhook_path:=/rest/items/}"
         LogDebug "${notification_type} ID: ${webhook_id}"
         notification_url="${webhook_scheme}://${webhook_server}:${webhook_port}${webhook_path}${webhook_id}"
         LogDebug "${notification_type} notification URL: ${notification_url}"
      elif [ "${notification_type}" = "Webhook" -a "${webhook_server}" -a "${webhook_id}" ]; then
         if [ "${webhook_https}" = true ]; then
            webhook_scheme="https"
         else
            webhook_scheme="http"
         fi
         LogInfo "${notification_type} notifications enabled"
         CleanNotificationTitle
         LogDebug "${notification_type} server: ${webhook_server}"
         LogDebug "${notification_type} port: ${webhook_port:=8123}"
         LogDebug "${notification_type} path: ${webhook_path:=/api/webhook/}"
         LogDebug "${notification_type} ID: ${webhook_id}"
         notification_url="${webhook_scheme}://${webhook_server}:${webhook_port}${webhook_path}${webhook_id}"
         LogDebug "${notification_type} notification URL: ${notification_url}"
         LogDebug "${notification_type} body keyword: ${webhook_body:=data}"
      elif [ "${notification_type}" = "Discord" -a "${discord_id}" -a "${discord_token}" ]; then
         LogInfo "${notification_type} notifications enabled"
         CleanNotificationTitle
         if [ "${debug_logging}" = true ]; then
            LogDebug "${notification_type} Discord ID: (hidden)"
            LogDebug "${notification_type} Discord token: (hidden)"
            notification_url="https://discord.com/api/webhooks/${discord_id}/${discord_token}"
            LogDebug "${notification_type} notification URL: (hidden)"
         else
            LogInfo "${notification_type} Discord ID: ${discord_id}"
            LogInfo "${notification_type} Discord token: ${discord_token}"
            notification_url="https://discord.com/api/webhooks/${discord_id}/${discord_token}"
            LogInfo "${notification_type} notification URL: ${notification_url}"
         fi
      elif [ "${notification_type}" = "Dingtalk" -a "${dingtalk_token}" ]; then
         notification_url="https://oapi.dingtalk.com/robot/send?access_token=${dingtalk_token}"
         LogInfo "${notification_type} notifications enabled"
         if [ "${debug_logging}" = true ]; then
            LogDebug "${notification_type} token: (hidden)"
            LogDebug "${notification_type} notification URL: (hidden)"
         else
            LogInfo "${notification_type} token: ${dingtalk_token}"
            LogInfo "${notification_type} notification URL: ${notification_url}"
         fi
      elif [ "${notification_type}" = "IYUU" -a "${iyuu_token}" ]; then
         notification_url="http://iyuu.cn/${iyuu_token}.send?"
         LogInfo "${notification_type} notifications enabled"
         if [ "${debug_logging}" = true ]; then
            LogDebug "${notification_type} token: (hidden)"
            LogDebug "${notification_type} notification URL: (hidden)"
         else
            LogInfo "${notification_type} token: ${iyuu_token}"
            LogInfo "${notification_type} notification URL: ${notification_url}"
         fi
      elif [ "${notification_type}" = "WeCom" -a "${wecom_id}" -a "${wecom_secret}" ]; then
         wecom_base_url="https://qyapi.weixin.qq.com"
         if [ "${wecom_proxy}" ]; then
            wecom_base_url="${wecom_proxy}"
            LogDebug "${notification_type} notifications proxy enabled : ${wecom_proxy}"
         fi
         wecom_token_url="${wecom_base_url}/cgi-bin/gettoken?corpid=${wecom_id}&corpsecret=${wecom_secret}"
         wecom_token="$(/usr/bin/curl -s -G "${wecom_token_url}" | awk -F\" '{print $10}')"
         wecom_token_expiry="$(date --date='2 hour')"
         notification_url="${wecom_base_url}/cgi-bin/message/send?access_token=${wecom_token}"
         LogInfo "${notification_type} notifications enabled"
         if [ "${debug_logging}" = true ]; then
            LogDebug "${notification_type} token: (hidden)"
            LogDebug "${notification_type} token expiry time: $(date -d "${wecom_token_expiry}")"
            LogDebug "${notification_type} notification URL: (hidden)"
         else
            LogInfo "${notification_type} token: ${wecom_token}"
            LogInfo "${notification_type} token expiry time: $(date -d "${wecom_token_expiry}")"
            LogInfo "${notification_type} notification URL: ${notification_url}"
         fi
      elif [ "${notification_type}" = "Gotify" -a "${gotify_app_token}" -a "${gotify_server_url}" ]; then
         LogInfo "${notification_type} notifications enabled"
         CleanNotificationTitle
         if [ "${debug_logging}" = true ]; then
            LogDebug "${notification_type} token: (hidden)"
            LogDebug "${notification_type} server URL: (hidden)"
         else
            LogInfo "${notification_type} token: ${gotify_app_token}"
            LogInfo "${notification_type} server URL: ${gotify_server_url}"
         fi
         notification_url="https://${gotify_server_url}/message?token=${gotify_app_token}"
      elif [ "${notification_type}" = "Bark" -a "${bark_device_key}" -a "${bark_server}" ]; then
         LogInfo "${notification_type} notifications enabled"
         CleanNotificationTitle
         if [ "${debug_logging}" = true ]; then
            LogDebug "${notification_type} device key: (hidden)"
            LogDebug "${notification_type} server: (hidden)"
         else
            LogInfo "${notification_type} device key: ${bark_device_key}"
            LogInfo "${notification_type} server: ${bark_server}"
         fi
         notification_url="http://${bark_server}/push"
      else
         LogWarning "$(date '+%Y-%m-%d %H:%M:%S') WARINING ${notification_type} notifications enabled, but configured incorrectly - disabling notifications"
         unset notification_type prowl_api_key pushover_user pushover_token telegram_token telegram_chat_id webhook_scheme webhook_server webhook_port webhook_id dingtalk_token discord_id discord_token iyuu_token wecom_id wecom_secret gotify_app_token gotify_server_url bark_device_key bark_server
      fi
      if [ "${icloud_china}" = false ]; then
         Notify "startup" "iCloudPD container started" "0" "iCloudPD container now starting for Apple ID: ${apple_id}"
      else
         Notify "startup" "iCloudPD container started" "0" "启动成功，开始同步当前 Apple ID 中的照片" "" "" "" "开始同步 ${name} 的 iCloud 图库" "Apple ID: ${apple_id}"
      fi
      if [ "${download_notifications:=true}" = true ]; then
         LogDebug "Download notifications: Enabled"
      else
         LogDebug "Download notifications: Disabled"
         unset download_notifications
      fi
      if [ "${delete_notifications:=true}" = true ]; then
         LogDebug "Delete notifications: Enabled"
      else
         LogDebug "Delete notifications: Disabled"
         unset delete_notifications
      fi
   fi
}

CreateGroup(){
   if [ "$(grep -c "^${group}:x:${group_id}:" "/etc/group")" -eq 1 ]; then
      LogDebug "Group, ${group}:${group_id}, already created"
   else
      if [ "$(grep -c "^${group}:" "/etc/group")" -eq 1 ]; then
         LogDebug "Group name, ${group}, already in use - exiting"
         sleep 120
         exit 1
      elif [ "$(grep -c ":x:${group_id}:" "/etc/group")" -eq 1 ]; then
         if [ "${force_gid}" = true ]; then
            group="$(grep ":x:${group_id}:" /etc/group | awk -F: '{print $1}')"
            LogWarning "Group id, ${group_id}, already in use by the group: ${group} - continuing as force_gid variable has been set. Group name to use: ${group}"
         else
            LogError "Group id, ${group_id}, already in use by the group: ${group} - exiting. If you must to add your user to this pre-existing system group, please set the force_gid variable to True"
            sleep 120
            exit 1
         fi
      else
         LogDebug "Creating group ${group}:${group_id}"
         groupadd --gid "${group_id}" "${group}"
      fi
   fi
}

CreateUser(){
   if [ "$(grep -c "^${user}:x:${user_id}:${group_id}" "/etc/passwd")" -eq 1 ]; then
      LogDebug "User, ${user}:${user_id}, already created"
   else
      if [ "$(grep -c "^${user}:" "/etc/passwd")" -eq 1 ]; then
         LogError "User name, ${user}, already in use - exiting"
         sleep 120
         exit 1
      elif [ "$(grep -c ":x:${user_id}:$" "/etc/passwd")" -eq 1 ]; then
         LogError "User id, ${user_id}, already in use - exiting"
         sleep 120
         exit 1
      else
         LogDebug "Creating user ${user}:${user_id}"
         useradd --shell /bin/ash --gid "${group_id}" --uid "${user_id}" "${user}" --home-dir "/home/${user}" --badname
      fi
   fi
}

ListLibraries(){
   local shared_libraries
   if [ "${authentication_type}" = "MFA" ]; then
      CheckMFACookie
   else
      CheckWebCookie
   fi
   IFS=$'\n'
   # source /opt/icloudpd_latest/bin/activate
   # LogDebug "Switched to icloudpd: $(/opt/icloudpd_latest/bin/icloudpd --version | awk '{print $3}')"
   if [ "${skip_download}" = false ]; then
      shared_libraries="$(run_as "/opt/icloudpd_latest/bin/icloudpd --username ${apple_id} --cookie-directory ${config_dir} --domain ${auth_domain} --directory /dev/null --list-libraries | sed '1d'")"
   fi
   # deactivate
   LogInfo "Shared libraries:"
   for library in ${shared_libraries}; do
      LogInfo " - ${library}"
   done
   IFS="${save_ifs}"
}

ListAlbums(){
   local photo_albums
   if [ "${authentication_type}" = "MFA" ]; then
      CheckMFACookie
   else
      CheckWebCookie
   fi
   IFS=$'\n'
   # source /opt/icloudpd_latest/bin/activate
   # LogDebug "Switched to icloudpd: $(/opt/icloudpd_latest/bin/icloudpd --version | awk '{print $3}')"
   if [ "${skip_download}" = false ]; then
      photo_albums="$(run_as "/opt/icloudpd_latest/bin/icloudpd --username ${apple_id} --cookie-directory ${config_dir} --domain ${auth_domain} --directory /dev/null --list-albums | sed '1d' | sed '/^Albums:$/d'")"
   fi
   # deactivate
   LogInfo "Photo albums:"
   for photo_album in ${photo_albums}; do
      LogInfo " - ${photo_album}"
   done
   IFS="${save_ifs}"
}

DeletePassword(){
   if [ -f "${config_dir}/python_keyring/keyring_pass.cfg" ]; then
      LogWarning "Keyring file ${config_dir}/python_keyring/keyring_pass.cfg exists, but --remove-keyring command line switch has been invoked. Removing in 30 seconds"
      if [ -z "${warnings_acknowledged}" ]; then
         sleep 30
      else
         LogInfo "Warnings acknowledged, removing immediately"
      fi
      rm "${config_dir}/python_keyring/keyring_pass.cfg"
   else
      LogError "Keyring file does not exist"
   fi
}

ConfigurePassword(){
   LogDebug "Configure password"
   local icloudpd_path
   if [ -f "${config_dir}/python_keyring/keyring_pass.cfg" ]; then
      if [ "$(grep -c "=" "${config_dir}/python_keyring/keyring_pass.cfg")" -eq 0 ]; then
         LogDebug "Keyring file ${config_dir}/python_keyring/keyring_pass.cfg exists, but does not contain any credentials. Removing"
         rm "${config_dir}/python_keyring/keyring_pass.cfg"
      fi
   fi
   if [ ! -f "${config_dir}/python_keyring/keyring_pass.cfg" ]; then
      if [ "${initialise_container}" ]; then
         LogDebug "Adding password to keyring file: ${config_dir}/python_keyring/keyring_pass.cfg"
         # if [ "${icloud_china}" = true ]; then
            # source /opt/icloudpd_v1.7.2_china/bin/activate
            # icloudpd_path="/opt/icloudpd_v1.7.2_china/bin"
         # else
            # source /opt/icloudpd_latest/bin/activate
            icloudpd_path="/opt/icloudpd_latest/bin"
         # fi
         # LogDebug "Switched to icloudpd: $(${icloudpd_path}/icloudpd --version | awk '{print $3}')"
         run_as "${icloudpd_path}/icloud --username ${apple_id}"
         # deactivate
      else
         LogError "Keyring file ${config_dir}/python_keyring/keyring_pass.cfg does not exist"
         LogError " - Please add the your password to the system keyring using the --Initialise script command line option"
         LogError " - Syntax: docker exec -it <container name> sync-icloud.sh --Initialise"
         LogError " - Example: docker exec -it icloudpd sync-icloud.sh --Initialise"
         LogError "Waiting for keyring file to be created..."
         local counter
         counter="${counter:=0}"
         while [ ! -f "${config_dir}/python_keyring/keyring_pass.cfg" ]; do
            sleep 5
            counter=$((counter + 1))
            if [ "${counter}" -eq 360 ]; then
               LogError "Keyring file has not appeared within 30 minutes. Restarting container..."
               exit 1
            fi
         done
         LogDebug "Keyring file exists, continuing"
      fi
   else
      LogDebug "Using password stored in keyring file: ${config_dir}/python_keyring/keyring_pass.cfg"
   fi
   if [ ! -f "${config_dir}/python_keyring/keyring_pass.cfg" ]; then
      LogError "Keyring file does not exist. Please try again."
      sleep 120
      exit 1
   fi
}

GenerateCookie(){
   local icloudpd_path
   LogDebug "$(date '+%Y-%m-%d %H:%M:%S') INFO     Correct owner on config directory, if required"
   find "${config_dir}" ! -user "${user}" -exec chown "${user_id}" {} +
   LogDebug "$(date '+%Y-%m-%d %H:%M:%S') INFO     Correct group on config directory, if required"
   find "${config_dir}" ! -group "${group}" -exec chgrp "${group_id}" {} +
   if [ -f "${config_dir}/${cookie_file}" ]; then
      mv "${config_dir}/${cookie_file}" "${config_dir}/${cookie_file}.bak"
   fi
   LogDebug "Generate ${authentication_type} cookie using password stored in keyring file"
   # if [ "${icloud_china}" = true ]; then
      # source /opt/icloudpd_v1.7.2_china/bin/activate
      # icloudpd_path="/opt/icloudpd_v1.7.2_china/bin"
   # else
      # source /opt/icloudpd_latest/bin/activate
      icloudpd_path="/opt/icloudpd_latest/bin"
   # fi
   # LogDebug "Switched to icloudpd: $("${icloudpd_path}/icloudpd" --version | awk '{print $3}')"
   run_as "${icloudpd_path}/icloudpd --username ${apple_id} --cookie-directory ${config_dir} --directory /dev/null --only-print-filenames --recent 0"
   # deactivate
   if [ "${authentication_type}" = "MFA" ]; then
      if [ "$(grep -c "X-APPLE-WEBAUTH-HSA-TRUST" "${config_dir}/${cookie_file}")" -eq 1 ]; then
         LogInfo "Multifactor authentication cookie generated. Sync should now be successful"
      else
         LogError "Multifactor authentication information missing from cookie. Authentication has failed"
         LogError " - Was the correct password entered?"
         LogError " - Was the multifactor authentication code mistyped?"
         LogError " - Can you log into ${icloud_domain} without receiving pop-up notifications?"
         if [ "${icloud_china}" = true ]; then
            LogError " - Are you based in China? You will need to set the icloud_china variable"
         fi
      fi
   else
      LogDebug "Web cookie generated. Sync should now be successful"
   fi
}

CheckMount(){
   LogInfo "Check download directory mounted correctly..."
   if [ ! -f "${download_path}/.mounted" ]; then
      LogWarning "Failsafe file ${download_path}/.mounted file is not present. Waiting for failsafe file to be created..."
      local counter
      counter="0"
   fi
   while [ ! -f "${download_path}/.mounted" ]; do
      sleep 5
      counter=$((counter + 1))
      if [ "${counter}" -eq 360 ]; then
         LogError "Failsafe file has not appeared within 30 minutes. Restarting container..."
         exit 1
      fi
   done
   LogInfo "Failsafe file ${download_path}/.mounted exists, continuing"
}

SetOwnerAndPermissionsConfig(){
   LogDebug "Set owner and group on icloudpd temp directory"
   chown -R "${user_id}:${group_id}" "/tmp/icloudpd"
   LogDebug "Set owner and group on config directory"
   chown -R "${user_id}:${group_id}" "${config_dir}"
   
   if [ -d "${config_dir}/python_keyring/" ]; then
      if [ "$(run_as "test -w ${config_dir}/python_keyring/; echo $?")" -eq 0 ]; then
         LogInfo "Directory is writable: ${config_dir}/python_keyring/"
      else
         LogError "Directory is not writable: ${config_dir}/python_keyring/"
         sleep 120
         exit 1
      fi
   fi
}

SetOwnerAndPermissionsDownloads(){
   LogDebug "Set owner on iCloud directory, if required"
   find "${download_path}" ! -type l ! -user "${user_id}" ! -path "${ignore_path}" -exec chown "${user_id}" {} +
   LogDebug "Set group on iCloud directory, if required"
   find "${download_path}" ! -type l ! -group "${group_id}" ! -path "${ignore_path}" -exec chgrp "${group_id}" {} +
   LogDebug "Set ${directory_permissions} permissions on iCloud directories, if required"
   find "${download_path}" -type d ! -perm "${directory_permissions}" ! -path "${ignore_path}" -exec chmod "${directory_permissions}" '{}' +
   LogDebug "Set ${file_permissions} permissions on iCloud files, if required"
   find "${download_path}" -type f ! -perm "${file_permissions}" ! -path "${ignore_path}" -exec chmod "${file_permissions}" '{}' +
}

CheckKeyringExists(){
   if [ -f "${config_dir}/python_keyring/keyring_pass.cfg" ]; then
      LogInfo "Keyring file exists, continuing"
   else
      LogError "Keyring does not exist"
      LogError " - Please add your password to the system keyring by using the --Initialise script command line option"
      LogError " - Syntax: docker exec -it <container name> sync-icloud.sh --Initialise"
      LogError " - Example: docker exec -it icloudpd sync-icloud.sh --Initialise"
      LogError "Waiting for keyring file to be created..."
      local counter
      counter="${counter:=0}"
      while [ ! -f "${config_dir}/python_keyring/keyring_pass.cfg" ]; do
         sleep 5
         counter=$((counter + 1))
         if [ "${counter}" -eq 360 ]; then
            LogError "Keyring file has not appeared within 30 minutes. Restarting container..."
            exit 1
         fi
      done
      LogInfo "Keyring file exists, continuing"
   fi
}

WaitForCookie(){
   if [ "${1}" = "DisplayMessage" ]; then
      LogError "Waiting for valid cookie file to be created..."
      LogError " - Please create your cookie using the --Initialise script command line option"
      LogError " - Syntax: docker exec -it <container name> sync-icloud.sh --Initialise"
      LogError " - Example: docker exec -it icloudpd sync-icloud.sh --Initialise"
   fi
   local counter
   counter="${counter:=0}"
   while [ ! -f "${config_dir}/${cookie_file}" ]; do
      sleep 5
      counter=$((counter + 1))
      if [ "${counter}" -eq 360 ]; then
         LogError "Valid cookie file has not appeared within 30 minutes. Restarting container..."
         exit 1
      fi
   done
}

WaitForAuthentication(){
   local counter
   counter="${counter:=0}"
   while [ "$(grep -c "X-APPLE-WEBAUTH-HSA-TRUST" "${config_dir}/${cookie_file}")" -eq 0 ]; do
      sleep 5
      counter=$((counter + 1))
      if [ "${counter}" -eq 360 ]; then
         LogError "Valid cookie file has not appeared within 30 minutes. Restarting container..."
         exit 1
      fi
   done
}

CheckWebCookie(){
   if [ -f "${config_dir}/${cookie_file}" ]; then
      LogDebug "Web cookie exists."
      web_cookie_expire_date="$(grep "X_APPLE_WEB_KB" "${config_dir}/${cookie_file}" | sed -e 's#.*expires="\(.*\)Z"; HttpOnly.*#\1#')"
   else
      LogError "Web cookie does not exist"
      WaitForCookie DisplayMessage
      LogInfo "Cookie file exists, continuing"
   fi
}

CheckMFACookie(){
   if [ -f "${config_dir}/${cookie_file}" ]; then
      LogDebug "Multifactor authentication cookie exists."
   else
      LogError "Multifactor authentication cookie does not exist"
      WaitForCookie DisplayMessage
      LogDebug "Multifactor authentication cookie file exists, checking validity..."
   fi
   if [ "$(grep -c "X-APPLE-DS-WEB-SESSION-TOKEN" "${config_dir}/${cookie_file}")" -eq 1 -a "$(grep -c "X-APPLE-WEBAUTH-HSA-TRUST" "${config_dir}/${cookie_file}")" -eq 0 ]; then
      LogDebug "Multifactor authentication cookie exists, but not autenticated. Waiting for authentication to complete..."
      WaitForAuthentication
      LogDebug "Multifactor authentication authentication complete, checking expiry date..."
   fi 
   if [ "$(grep -c "X-APPLE-WEBAUTH-HSA-TRUST" "${config_dir}/${cookie_file}")" -eq 1 ]; then
      mfa_expire_date="$(grep "X-APPLE-WEBAUTH-HSA-TRUST" "${config_dir}/${cookie_file}" | sed -e 's#.*expires="\(.*\)Z"; HttpOnly.*#\1#')"
      mfa_expire_seconds="$(date -d "${mfa_expire_date}" '+%s')"
      days_remaining="$(($((mfa_expire_seconds - $(date '+%s'))) / 86400))"
      echo "${days_remaining}" > "${config_dir}/DAYS_REMAINING"
      if [ "${days_remaining}" -gt 0 ]; then
         valid_mfa_cookie=true
         LogDebug "Valid multifactor authentication cookie found. Days until expiration: ${days_remaining}"
      else
         rm -f "${config_dir}/${cookie_file}"
         LogError "Cookie expired at: ${mfa_expire_date}"
         LogError "Expired cookie file has been removed. Restarting container in 5 minutes"
         sleep 300
         exit 1
      fi
   else
      rm -f "${config_dir}/${cookie_file}"
      LogError "Cookie is not multifactor authentication capable, authentication type may have changed"
      LogError "Invalid cookie file has been removed. Restarting container in 5 minutes"
      sleep 300
      exit 1
   fi
}

DisplayMFAExpiry(){
   local error_message
   LogInfo "Multifactor authentication cookie expires: ${mfa_expire_date/ / @ }"
   LogInfo "Days remaining until expiration: ${days_remaining}"
   if [ "${days_remaining}" -le "${notification_days}" ]; then
      if [ "${days_remaining}" -eq 1 ]; then
         cookie_status="cookie expired"
         if [ "${icloud_china}" = false ]; then
            error_message="Final day before multifactor authentication cookie expires for Apple ID: ${apple_id} - Please reinitialise now. This is your last reminder"
         else
            error_message="今天是 ${name} 的 Apple ID 两步验证 cookie 到期前的最后一天 - 请立即重新初始化，这是最后的提醒"
         fi
      else
         cookie_status="cookie expiration"
         if [ "${icloud_china}" = false ]; then
            error_message="Only ${days_remaining} days until multifactor authentication cookie expires for Apple ID: ${apple_id} - Please reinitialise"
         else
            error_message="${days_remaining} 天后 ${name} 的 Apple ID 两步验证将到期 - 请立即重新初始化"
         fi
      fi
      LogWarning "${error_message}"
      if [ "${synchronisation_time:=$(date +%s -d '+15 minutes')}" -gt "${next_notification_time:=$(date +%s)}" ]; then
         if [ "${icloud_china}" = false ]; then
            Notify "${cookie_status}" "Multifactor Authentication Cookie Expiration" "2" "${error_message}"
         else
            Notify "${cookie_status}" "Multifactor Authentication Cookie Expiration" "2" "${error_message}" "" "" "" "${days_remaining} 天后，${name} 的身份验证到期" "${error_message}"
         fi
         next_notification_time="$(date +%s -d "+24 hour")"
         LogDebug "Next notification not before: $(date +%H:%M:%S -d "${next_notification_time} seconds")"
      fi
   fi
}

CheckFiles(){
   if [ -f "/tmp/icloudpd/icloudpd_check.log" ]; then
      rm "/tmp/icloudpd/icloudpd_check.log"
   fi
   LogInfo "Check for new files using password stored in keyring file"
   LogInfo "Generating list of files in iCloud. This may take a long time if you have a large photo collection. Please be patient. Nothing is being downloaded at this time"
   >/tmp/icloudpd/icloudpd_check_error
   # source /opt/icloudpd_latest/bin/activate
   # LogDebug "Switched to icloudpd: $(/opt/icloudpd_latest/bin/icloudpd --version | awk '{print $3}')"
   run_as "(/opt/icloudpd_latest/bin/icloudpd --directory ${download_path} --cookie-directory ${config_dir} --username ${apple_id} --domain ${auth_domain} --folder-structure ${folder_structure} --only-print-filenames 2>/tmp/icloudpd/icloudpd_check_error; echo $? >/tmp/icloudpd/icloudpd_check_exit_code) | tee /tmp/icloudpd/icloudpd_check.log"
   check_exit_code="$(cat /tmp/icloudpd/icloudpd_check_exit_code)"
   # deactivate
   if [ "${check_exit_code}" -ne 0 ] || [ -s /tmp/icloudpd/icloudpd_check_error ]; then
      LogError "Failed check for new files files"
      LogError " - Can you log into ${icloud_domain} without receiving pop-up notifications?"
      LogError "Error debugging info:"
      LogError "$(cat /tmp/icloudpd/icloudpd_check_error)"
      LogError "***** Please report problems here: https://github.com/boredazfcuk/docker-icloudpd/issues *****"
      if [ "${icloud_china}" = false ]; then
         Notify "failure" "iCloudPD container failure" "0" "iCloudPD failed check for new files for Apple ID: ${apple_id}"
      else
         syn_end_time="$(date '+%H:%M:%S')"
         syn_next_time="$(date +%H:%M:%S -d "${synchronisation_interval} seconds")"
         Notify "failure" "iCloudPD container failure" "0" "检查 iCloud 图库新照片失败，将在 ${syn_next_time} 再次尝试" "" "" "" "检查 ${name} 的 iCloud 图库新照片失败" "将在 ${syn_next_time} 再次尝试"
      fi
   else
      LogInfo "Check successful"
      check_files_count="$(grep -c ^ /tmp/icloudpd/icloudpd_check.log)"
      if [ "${check_files_count}" -gt 0 ]; then
         LogInfo "New files detected: ${check_files_count}"
      else
         LogInfo "No new files detected. Nothing to download"
      fi
   fi
   login_counter=$((login_counter + 1))
}

DownloadedFilesNotification(){
   local new_files_count new_files_preview new_files_text
   new_files="$(grep "Downloaded /" /tmp/icloudpd/icloudpd_sync.log)"
   new_files_count="$(grep -c "Downloaded /" /tmp/icloudpd/icloudpd_sync.log)"
   if [ "${new_files_count:=0}" -gt 0 ]; then
      LogInfo "New files downloaded: ${new_files_count}"
      new_files_preview="$(echo "${new_files}" | cut -d " " -f 9- | sed -e "s%${download_path}/%%g" | head -10)"
      new_files_preview_count="$(echo "${new_files_preview}" | wc -l)"
      if [ "${icloud_china}" = false ]; then
         new_files_text="Files downloaded for Apple ID ${apple_id}: ${new_files_count}"
         Notify "downloaded files" "New files detected" "0" "${new_files_text}" "${new_files_preview_count}" "downloaded" "${new_files_preview}"
      else
         # 结束时间、下次同步时间
         syn_end_time="$(date '+%H:%M:%S')"
         syn_next_time="$(date +%H:%M:%S -d "${synchronisation_interval} seconds")"
         new_files_text="iCloud 图库同步完成，新增 ${new_files_count} 张照片"
         Notify "downloaded files" "New files detected" "0" "${new_files_text}" "${new_files_preview_count}" "下载" "${new_files_preview}" "新增 ${new_files_count} 张照片 - ${name}" "下次同步时间 ${syn_next_time}"
      fi
   fi
}

DeletedFilesNotification(){
   local deleted_files deleted_files_count deleted_files_preview deleted_files_text
   deleted_files="$(grep "Deleted /" /tmp/icloudpd/icloudpd_sync.log)"
   deleted_files_count="$(grep -c "Deleted /" /tmp/icloudpd/icloudpd_sync.log)"
   if [ "${deleted_files_count:=0}" -gt 0 ]; then
      LogInfo "Number of files deleted: ${deleted_files_count}"
      deleted_files_preview="$(echo "${deleted_files}" | cut -d " " -f 9- | sed -e "s%${download_path}/%%g" -e "s%!$%%g" | tail -10)"
      deleted_files_preview_count="$(echo "${deleted_files_preview}" | wc -l)"
      if [ "${icloud_china}" = false ]; then
         deleted_files_text="Files deleted for Apple ID ${apple_id}: ${deleted_files_count}"
         Notify "deleted files" "Recently deleted files detected" "0" "${deleted_files_text}" "${deleted_files_preview_count}" "deleted" "${deleted_files_preview}"
      else
         # 结束时间、下次同步时间
         syn_end_time="$(date '+%H:%M:%S')"
         syn_next_time="$(date +%H:%M:%S -d "${synchronisation_interval} seconds")"
         deleted_files_text="iCloud 图库同步完成，删除 ${deleted_files_count} 张照片"
         Notify "deleted files" "Recently deleted files detected" "0" "${deleted_files_text}" "${deleted_files_preview_count}" "删除" "${deleted_files_preview}" "删除 ${deleted_files_count} 张照片 - ${name}" "下次同步时间 ${syn_next_time}"
      fi
   fi
}

DownloadAlbums(){
   local all_albums albums_to_download
   if [ "${photo_album}" = "all albums" ]; then
      all_albums="$(run_as "/opt/icloudpd_latest/bin/icloudpd --username ${apple_id} --cookie-directory ${config_dir} --domain ${auth_domain} --directory /dev/null --list-albums | sed '1d' | sed '/^Albums:$/d'")"
      LogDebug "Buildling list of albums to download..."
      IFS=$'\n'
      for album in ${all_albums}; do
         if [ "${skip_album}" ]; then
            if [[ ! "${skip_album}" =~ "${album}" ]]; then
               LogDebug " - ${album}"
               if [ -z "${albums_to_download}" ]; then
                  albums_to_download="${album}"
               else
                  albums_to_download="${albums_to_download},${album}"
               fi
            fi
         else
            LogDebug " - ${album}"
            if [ -z "${albums_to_download}" ]; then
               albums_to_download="${album}"
            else
               albums_to_download="${albums_to_download},${album}"
            fi
         fi
      done
   else
      albums_to_download="${photo_album}"
   fi
   IFS=","
   LogDebug "Starting albums download..."
   for album in ${albums_to_download}; do
      LogInfo "Downloading album: ${album}"
      if [ "${albums_with_dates}" = true ]; then
         LogDebug "iCloudPD launch command: /opt/icloudpd_latest/bin/icloudpd ${command_line} --folder-structure \"${album}/${folder_structure}\" --album \"${album}\" 2>/tmp/icloudpd/icloudpd_download_error"
         run_as "(/opt/icloudpd_latest/bin/icloudpd ${command_line} --folder-structure \"${album}/${folder_structure}\" --album \"${album}\" 2>/tmp/icloudpd/icloudpd_download_error; echo $? >/tmp/icloudpd/icloudpd_download_exit_code) | tee /tmp/icloudpd/icloudpd_sync.log"
      else
         LogDebug "iCloudPD launch command: /opt/icloudpd_latest/bin/icloudpd ${command_line} --folder-structure \"${album}\" --album \"${album}\" 2>/tmp/icloudpd/icloudpd_download_error"
         run_as "(/opt/icloudpd_latest/bin/icloudpd ${command_line} --folder-structure \"${album}\" --album \"${album}\" 2>/tmp/icloudpd/icloudpd_download_error; echo $? >/tmp/icloudpd/icloudpd_download_exit_code) | tee /tmp/icloudpd/icloudpd_sync.log"
      fi
      if [ "$(cat /tmp/icloudpd/icloudpd_download_exit_code)" -ne 0 ]; then
         LogError "Failed downloading album: ${album}"
         IFS="${save_ifs}"
         sleep 10
         break
      fi
   done
   IFS="${save_ifs}"
}

DownloadLibraries(){
   local all_libraries libraries_to_download
   if [ "${photo_library}" = "all libraries" ]; then
      LogDebug "Fetching libraries list..."
      all_libraries="$(run_as "/opt/icloudpd_latest/bin/icloudpd --username ${apple_id} --cookie-directory ${config_dir} --domain ${auth_domain} --directory /dev/null --list-libraries | sed '1d'")"
      LogDebug "Building list of libraries to download..."
      IFS=$'\n'
      for library in ${all_libraries}; do
         if [ "${skip_library}" ]; then
            if [[ ! "${skip_library}" =~ "${library}" ]]; then
               LogDebug " - ${library}"
               if [ -z "${libraries_to_download}" ]; then
                  libraries_to_download="${library}"
               else
                  libraries_to_download="${libraries_to_download},${library}"
               fi
            fi
         else
            LogDebug " - ${library}"
            if [ -z "${libraries_to_download}" ]; then
               libraries_to_download="${library}"
            else
               libraries_to_download="${libraries_to_download},${library}"
            fi
         fi
      done
   else
      libraries_to_download="${photo_library}"
   fi
   IFS=","
   for library in ${libraries_to_download}; do
      LogInfo "Downloading library: ${library}"
      if [ "${libraries_with_dates}" = true ]; then
         LogDebug "iCloudPD launch command: /opt/icloudpd_latest/bin/icloudpd ${command_line} --folder-structure ${library}/${folder_structure} --library ${library} 2>/tmp/icloudpd/icloudpd_download_error"
         run_as "(/opt/icloudpd_latest/bin/icloudpd ${command_line} --folder-structure "${library}/${folder_structure}" --library "${library}" 2>/tmp/icloudpd/icloudpd_download_error; echo $? >/tmp/icloudpd/icloudpd_download_exit_code) | tee /tmp/icloudpd/icloudpd_sync.log"
      else
         LogDebug "iCloudPD launch command: /opt/icloudpd_latest/bin/icloudpd ${command_line} --folder-structure ${library} --library ${library} 2>/tmp/icloudpd/icloudpd_download_error"
         run_as "(/opt/icloudpd_latest/bin/icloudpd ${command_line} --folder-structure "${library}" --library "${library}" 2>/tmp/icloudpd/icloudpd_download_error; echo $? >/tmp/icloudpd/icloudpd_download_exit_code) | tee /tmp/icloudpd/icloudpd_sync.log"
      fi
      if [ "$(cat /tmp/icloudpd/icloudpd_download_exit_code)" -ne 0 ]; then
         LogError "Failed downloading library: ${library}"
         IFS="${save_ifs}"
         sleep 10
         break
      fi
   done
   IFS="${save_ifs}"
}

DownloadPhotos(){
   LogDebug "iCloudPD launch command: /opt/icloudpd_latest/bin/icloudpd ${command_line} 2>/tmp/icloudpd/icloudpd_download_error"
   if [ "${skip_download}" = false ]; then
      run_as "(/opt/icloudpd_latest/bin/icloudpd ${command_line} 2>/tmp/icloudpd/icloudpd_download_error; echo $? >/tmp/icloudpd/icloudpd_download_exit_code) | tee /tmp/icloudpd/icloudpd_sync.log"
   else
      LogDebug "Skip download: ${skip_download} - skipping"
      echo 0 >/tmp/icloudpd/icloudpd_download_exit_code
      touch /tmp/icloudpd/icloudpd_sync.log
   fi
}

CheckNextcloudConnectivity(){
   local nextcloud_check_result
   local counter=0
   LogInfo "Checking Nextcloud connectivity..."
   nextcloud_check_result="$(curl --silent --max-time 15 --location --user "${nextcloud_username}:${nextcloud_password}" --write-out "%{http_code}" --output /dev/null "${nextcloud_url%/}/remote.php/dav/files/${nextcloud_username}/")"
   if [ "${nextcloud_check_result}" -ne 200 ]; then
      LogError "Nextcloud connectivity check failed: ${nextcloud_check_result}"
      fail_time="$(date "+%a %d %B %H:%M:%S (%Z) %Y")"
      Notify "Nextcloud" "failed" "0" "Nextcloud connectivity check failed. Waiting for server to come back online..."
      while [ "${nextcloud_check_result}" -ne 200 ]; do
         sleep 45
         counter=$((counter + 1))
         if [ "${counter}" -eq 15 ] || [ "${counter}" -eq 60 ] || [ "${counter}" -eq 300 ]; then
            Notify "Nextcloud" "failed" "0" "Nextcloud has been offline since ${fail_time}. Please take corrective action. icloudpd will remain paused until this issue is rectified."
         fi
         nextcloud_check_result="$(curl --silent --location --max-time 15 --user "${nextcloud_username}:${nextcloud_password}" --write-out "%{http_code}" --output /dev/null "${nextcloud_url%/}/remote.php/dav/files/${nextcloud_username}/")"
      done
      Notify "Nextcloud" "success" "0" "Nextcloud server is back online. Resuming operation"
   fi
}

NextcloudEncodeURL() {
   s="${1//'%'/%25}"
   s="${s//' '/%20}"
   s="${s//'"'/%22}"
   s="${s//'#'/%23}"
   s="${s//'$'/%24}"
   s="${s//'&'/%26}"
   s="${s//'+'/%2B}"
   s="${s//','/%2C}"
   s="${s//':'/%3A}"
   s="${s//';'/%3B}"
   s="${s//'='/%3D}"
   s="${s//'?'/%3F}"
   s="${s//'@'/%40}"
   s="${s//'['/%5B}"
   s="${s//']'/%5D}"
   printf %s "$s"
}

NextcloudUpload(){
   local new_files_count new_filename nextcloud_file_path nextcloud_directory_path nextcloud_file_path curl_response
   new_files_count="$(grep -c "Downloaded /" /tmp/icloudpd/icloudpd_sync.log)"
   if [ "${new_files_count:=0}" -gt 0 ]; then
      LogInfo "Upload files to Nextcloud"
      CheckNextcloudConnectivity
      LogInfo "Checking Nextcloud destination directories..."
      destination_directories="$(grep "Downloaded /" /tmp/icloudpd/icloudpd_sync.log | cut -d " " -f 9- | sed 's~\(.*/\).*~\1~' | sed "s%${download_path}%%" | uniq)"
      for destination_directory in ${destination_directories}; do
         SAVE_IFS="$IFS"
         IFS='/'
         unset build_path
         for directory in ${destination_directory}; do
            build_path="${build_path}/${directory}"
            if [ "${build_path}" = "/" ]; then unset build_path; fi
            if [ "${build_path}" ]; then
               nextcloud_file_path="$(NextcloudEncodeURL "${nextcloud_username}/${nextcloud_target_dir}${build_path%/}/")"
               LogInfoN "Checking for Nextcloud directory: ${nextcloud_url%/}/remote.php/dav/files/${nextcloud_file_path}... "
               curl_response="$(curl --silent --location --user "${nextcloud_username}:${nextcloud_password}" --write-out "%{http_code}" --output /dev/null "${nextcloud_url%/}/remote.php/dav/files/${nextcloud_file_path}")"
               if [ "${curl_response}" -ge 200 -a "${curl_response}" -le 299 ]; then
                  echo "Exists"
               else
                  echo "Missing"
                  nextcloud_directory_path="$(NextcloudEncodeURL "${nextcloud_username}/${nextcloud_target_dir}${build_path%/}/")"
                  LogInfoN "Creating Nextcloud directory: ${nextcloud_url%/}/remote.php/dav/files/${nextcloud_directory_path}... "
                  curl_response="$(curl --silent --show-error --location --user "${nextcloud_username}:${nextcloud_password}" --write-out "%{http_code}" --request MKCOL "${nextcloud_url%/}/remote.php/dav/files/${nextcloud_directory_path}")"
                  if [ "${curl_response}" -ge 200 -a "${curl_response}" -le 299 ]; then
                     echo "Success"
                  else
                     echo "Unexpected response: ${curl_response}"
                  fi
               fi
            fi
         done
         IFS="$SAVE_IFS"
      done

      LogInfo "Uploading files to Nextcloud"
      IFS="$(echo -en "\n\b")"
      for full_filename in $(echo "$(grep "Downloaded /" /tmp/icloudpd/icloudpd_sync.log)" | cut -d " " -f 9-); do
         LogDebug "Full filename: ${full_filename}"
         base_filename="$(basename "${full_filename}")"
         LogDebug "Base filename: ${base_filename}"
         new_filename="$(echo "${full_filename}" | sed "s%${download_path%/}%%")"
         LogDebug "New filename: ${new_filename}"
         directory_name="$(echo "${new_filename}" | sed "s%${base_filename}%%")"
         LogDebug "Directory name: ${directory_name}"
         nextcloud_file_path="$(dirname ${new_filename})"
         LogDebug "Nextcloud file path: ${nextcloud_file_path}"
         if [ ! -f "${full_filename}" ]; then
            LogWarning "Media file ${full_filename} does not exist. It may exist in 'Recently Deleted' so has been removed post download"
         else
            nextcloud_file_path="$(NextcloudEncodeURL ${nextcloud_username}/${nextcloud_target_dir}${nextcloud_file_path}/${base_filename})"
            LogInfoN "Uploading ${full_filename} to ${nextcloud_url%/}/remote.php/dav/files/${nextcloud_file_path}"
            nextcloud_file_name="$(NextcloudEncodeURL "${full_filename}")"
            curl_response="$(curl --silent --show-error --location --user "${nextcloud_username}:${nextcloud_password}" --write-out "%{http_code}" --upload-file "${nextcloud_file_name}" "${nextcloud_url%/}/remote.php/dav/files/${nextcloud_file_path}")"
            if [ "${curl_response}" -ge 200 -a "${curl_response}" -le 299 ]; then
               echo "Success"
            else
               echo "Unexpected response: ${curl_response}"
               LogDebug "Encoded paths: ${nextcloud_file_name} to ${nextcloud_url%/}/remote.php/dav/files/${nextcloud_file_path}"
            fi
            if [ -f "${full_filename%.HEIC}.JPG" ]; then
               nextcloud_file_path="$(NextcloudEncodeURL ${nextcloud_username}/${nextcloud_target_dir}${nextcloud_file_path}/${base_filename%.HEIC}.JPG)"
               LogInfoN "Uploading ${full_filename%.HEIC}.JPG to ${nextcloud_url%/}/remote.php/dav/files/${nextcloud_file_path}"
               nextcloud_file_name="$(NextcloudEncodeURL "${full_filename%.HEIC}.JPG")"
               curl_response="$(curl --silent --show-error --location --user "${nextcloud_username}:${nextcloud_password}" --write-out "%{http_code}" --upload-file "${nextcloud_file_name}" "${nextcloud_url%/}/remote.php/dav/files/${nextcloud_file_path}")"
               if [ "${curl_response}" -ge 200 -a "${curl_response}" -le 299 ]; then
                  echo "Success"
               else
                  echo "Unexpected response: ${curl_response}"
                  LogDebug "Encoded paths: ${nextcloud_file_name} to ${nextcloud_url%/}/remote.php/dav/files/${nextcloud_file_path}"
               fi
            fi
         fi
      done
      IFS="${save_ifs}"
   fi
}

NextcloudDelete() {
   local deleted_files_count new_filename nextcloud_file_path encoded_file_path curl_response
   deleted_files_count="$(grep -c "Deleted /" /tmp/icloudpd/icloudpd_sync.log)"
   if [ "${deleted_files_count:=0}" -gt 0 ]; then
      IFS="$(echo -en "\n\b")"
      CheckNextcloudConnectivity
      LogInfo "Delete files from Nextcloud..."
      for full_filename in $(echo "$(grep "Deleted /" /tmp/icloudpd/icloudpd_sync.log)" | cut -d " " -f 9-); do
         full_filename="$(echo "${full_filename}" | sed 's/!$//')"
         new_filename="$(echo "${full_filename}" | sed "s%${download_path%/}%%")"
         base_filename="$(basename "${new_filename}")"
         nextcloud_file_path="$(dirname ${new_filename})"
         encoded_file_path="$(NextcloudEncodeURL "${nextcloud_target_dir}${nextcloud_file_path}/${base_filename}")"
         LogDebug "Checking file path: ${nextcloud_url%/}/remote.php/dav/files/${nextcloud_username}/${encoded_file_path}"
         curl_response="$(curl --silent --show-error --location --head --user "${nextcloud_username}:${nextcloud_password}" "${nextcloud_url%/}/remote.php/dav/files/${nextcloud_username}/${encoded_file_path}" --output /dev/null --write-out "%{http_code}")"
         if [ "${curl_response}" -ge 200 -a "${curl_response}" -le 200 ]; then
            LogInfoN " - File exists, deleting... "
            if curl --silent --show-error --location --request DELETE --user "${nextcloud_username}:${nextcloud_password}" --output /dev/null "${nextcloud_url%/}/remote.php/dav/files/${nextcloud_username}/${encoded_file_path}"; then
               echo "Success: $?"
            else
               echo "Error: $?"
            fi
         elif [ "${curl_response}" -eq 404 ]; then
            echo "File not found: ${nextcloud_url%/}/remote.php/dav/files/${nextcloud_username}/${nextcloud_target_dir}${nextcloud_file_path}/${base_filename}"
         else
            echo "Unexpected response: ${curl_response}"
         fi
         if [ -f "${full_filename%.HEIC}.JPG" ]; then
            full_filename="${full_filename%.HEIC}.JPG"
            new_filename="$(echo "${full_filename}" | sed "s%${download_path%/}%%")"
            base_filename="$(basename "${new_filename}")"
            encoded_file_path="$(NextcloudEncodeURL "${nextcloud_target_dir}${nextcloud_file_path}/${base_filename}")"
            LogDebug "Checking file path: ${nextcloud_url%/}/remote.php/dav/files/${nextcloud_username}/${encoded_file_path}"
            curl_response="$(curl --silent --show-error --location --head --user "${nextcloud_username}:${nextcloud_password}" "${nextcloud_url%/}/remote.php/dav/files/${nextcloud_username}/${encoded_file_path}" --output /dev/null --write-out "%{http_code}")"
            if [ "${curl_response}" -ge 200 -a "${curl_response}" -le 200 ]; then
               LogInfoN " - File exists, deleting... "
               if curl --silent --show-error --location --request DELETE --user "${nextcloud_username}:${nextcloud_password}" --output /dev/null "${nextcloud_url%/}/remote.php/dav/files/${nextcloud_username}/${encoded_file_path}"; then
                  echo "Success: $?"
               else
                  echo "Error: $?"
               fi
            elif [ "${curl_response}" -eq 404 ]; then
               echo "File not found: ${nextcloud_url%/}/remote.php/dav/files/${nextcloud_username}/${nextcloud_target_dir}${nextcloud_file_path}/${base_filename%.HEIC}.JPG"
            else
               echo "Unexpected response: ${curl_response}"
            fi
         fi
      done
      IFS="${save_ifs}"

      LogInfo "Checking for empty Nextcloud destination directories to remove..."
      directories_list="$(grep "Deleted /" /tmp/icloudpd/icloudpd_sync.log | cut -d " " -f 9- | sed 's~\(.*/\).*~\1~' | sed "s%${download_path}%%" | uniq)"
      for target_directory in ${directories_list}; do
         SAVE_IFS="$IFS"
         IFS='/'
         for directory in ${target_directory}; do
            IFS="$SAVE_IFS"
            if [ "${target_directory}" != '/' ]; then
               LogDebug "Checking if Nextcloud directory is empty: ${nextcloud_url%/}/remote.php/dav/files/${nextcloud_username}/${nextcloud_target_dir}${target_directory}"
               curl_response="$(curl --silent --show-error --location --user "${nextcloud_username}:${nextcloud_password}" --request PROPFIND "${nextcloud_url%/}/remote.php/dav/files/${nextcloud_username}/${nextcloud_target_dir}${target_directory}" | grep -ow '<d:href>' | wc -l)"
               if [ "${curl_response}" -ge 2 ]; then
                  LogDebug " - Not removing directory as it contains items: $((curl_response -1 ))"
               else
                  LogInfoN " - Removing empty Nextcloud directory: ${nextcloud_url%/}/remote.php/dav/files/${nextcloud_username}/${nextcloud_target_dir}${target_directory}... "
                  curl_response="$(curl --silent --show-error --location --user "${nextcloud_username}:${nextcloud_password}" --write-out "%{http_code}" --output /dev/null --request DELETE "${nextcloud_url%/}/remote.php/dav/files/${nextcloud_username}/${nextcloud_target_dir}${target_directory}")"
                  if [ "${curl_response}" -ge 200 -a "${curl_response}" -le 299 ]; then
                     echo "Success"
                  else
                     echo "Unexpected response: ${curl_response}"
                  fi
               fi
               target_directory="$(echo ${target_directory} | sed 's%/$%%')"
               target_directory="$(echo ${target_directory} | sed 's~\(.*/\).*~\1~')"
            fi
         done
         IFS="$SAVE_IFS"
      done
   fi
}

ConvertDownloadedHEIC2JPEG(){
   IFS="$(echo -en "\n\b")"
   LogInfo "Convert HEIC to JPEG..."
   for heic_file in $(echo "$(grep "Downloaded /" /tmp/icloudpd/icloudpd_sync.log)" | grep ".HEIC" | cut -d " " -f 9-); do
      if [ ! -f "${heic_file}" ]; then
         LogWarning "HEIC file ${heic_file} does not exist. It may exist in 'Recently Deleted' so has been removed post download"
      else
         jpeg_file="${heic_file%.HEIC}.JPG"
         if [ "${jpeg_path}" ]; then
            jpeg_file="${jpeg_file/${download_path}/${jpeg_path}}"
            mkdir --parents "$(dirname "${jpeg_file}")"
         fi
         LogInfo "Converting ${heic_file} to ${jpeg_file}"
         convert -quality "${jpeg_quality}" "${heic_file}" "${jpeg_file}" 2>&1 | grep -v set_mempolicy
         heic_date="$(date -r "${heic_file}" +"%a %b %e %T %Y")"
         LogDebug "Timestamp of HEIC file: ${heic_date}"
         touch --reference="${heic_file}" "${jpeg_file}"
         LogDebug "Setting timestamp of ${jpeg_file} to ${heic_date}"
         LogDebug "Correct owner and group of ${jpeg_file} to ${user}:${group}"
         chown "${user}:${group}" "${jpeg_file}"
      fi
   done
   IFS="${save_ifs}"
}

SynologyPhotosAppFix(){
   # Works for onestix. Do not obsolete
   IFS="$(echo -en "\n\b")"
   LogInfo "Fixing Synology Photos App import issue..."
   for heic_file in $(echo "$(grep "Downloaded /" /tmp/icloudpd/icloudpd_sync.log)" | grep ".HEIC" | cut -d " " -f 9-); do
      LogDebug "Create empty date/time reference file ${heic_file%.HEIC}.TMP"
      run_as "touch --reference=\"${heic_file}\" \"${heic_file%.HEIC}.TMP\""
      LogDebug "Set time stamp for ${heic_file} to current: $(date)"
      run_as "touch \"${heic_file}\"" 
      LogDebug "Set time stamp for ${heic_file} to original: $(date -r "${heic_file%.HEIC}.TMP" +"%a %b %e %T %Y")"
      run_as "touch --reference=\"${heic_file%.HEIC}.TMP\" \"${heic_file}\""
      LogDebug "Removing temporary file ${heic_file%.HEIC}.TMP"
      if [ -z "${persist_temp_files}" ]; then
         rm "${heic_file%.HEIC}.TMP"
      fi
   done
   IFS="${save_ifs}"
}

ConvertAllHEICs(){
   IFS="$(echo -en "\n\b")"
   LogInfo "Convert all HEICs to JPEG, if required..."
   for heic_file in $(find "${download_path}" -type f -name *.HEIC 2>/dev/null); do
      LogDebug "HEIC file found: ${heic_file}"
      jpeg_file="${heic_file%.HEIC}.JPG"
      if [ "${jpeg_path}" ]; then
         jpeg_file="${jpeg_file/${download_path}/${jpeg_path}}"
         mkdir --parents "$(dirname "${jpeg_file}")"
      fi
      if [ ! -f "${jpeg_file}" ]; then
         LogInfo "Converting ${heic_file} to ${jpeg_file}"
         convert -quality "${jpeg_quality}" "${heic_file}" "${jpeg_file}"
         heic_date="$(date -r "${heic_file}" +"%a %b %e %T %Y")"
         LogDebug "Timestamp of HEIC file: ${heic_date}"
         touch --reference="${heic_file}" "${jpeg_file}"
         LogDebug "Setting timestamp of ${jpeg_file} to ${heic_date}"
         LogDebug "Correct owner and group of ${jpeg_file} to ${user}:${group}"
         chown "${user}:${group}" "${jpeg_file}"
      fi
   done
   IFS="${save_ifs}"
}

UploadLibraryToNextcloud(){
   LogInfo "Uploading entire library to Nextcloud. This may take a while..."
   CheckNextcloudConnectivity
   LogInfo "Checking Nextcloud destination directories..."
   destination_directories="$(find "${download_path}" -type f ! -name '.*' 2>/dev/null | sed 's~\(.*/\).*~\1~' | sed "s%${download_path}%%" | uniq)"
   for destination_directory in ${destination_directories}; do
      SAVE_IFS="$IFS"
      IFS='/'
      unset build_path
      for directory in ${destination_directory}; do
         build_path="${build_path}/${directory}"
         if [ "${build_path}" = "/" ]; then unset build_path; fi
         if [ "${build_path}" ]; then
            LogInfoN "Checking for Nextcloud directory: ${nextcloud_url%/}/remote.php/dav/files/${nextcloud_username}/${nextcloud_target_dir}${build_path%/}/"
            curl_response="$(curl --silent --location --user "${nextcloud_username}:${nextcloud_password}" --write-out "%{http_code}" --output /dev/null "${nextcloud_url%/}/remote.php/dav/files/${nextcloud_username}/${nextcloud_target_dir}${build_path%/}/")"
            if [ "${curl_response}" -ge 200 -a "${curl_response}" -le 299 ]; then
               echo "Exists: ${curl_response}"
            else
               echo "Missing: ${curl_response}"
               LogInfoN "Creating Nextcloud directory: ${nextcloud_url%/}/remote.php/dav/files/${nextcloud_username}/${nextcloud_target_dir}${build_path%/}"
               curl_response="$(curl --silent --show-error --location --user "${nextcloud_username}:${nextcloud_password}" --write-out "%{http_code}" --request MKCOL "${nextcloud_url%/}/remote.php/dav/files/${nextcloud_username}/${nextcloud_target_dir}${build_path%/}/")"
               if [ "${curl_response}" -ge 200 -a "${curl_response}" -le 299 ]; then
                  echo "Success: ${curl_response}"
               else
                  echo "Unexpected response: ${curl_response}"
               fi
            fi
         fi
      done
      IFS="$SAVE_IFS"
   done

   IFS="$(echo -en "\n\b")"
   for full_filename in $(find "${download_path}" -type f ! -name '.*' 2>/dev/null); do
      LogDebug "Full filename: ${full_filename}"
      base_filename="$(basename "${full_filename}")"
      LogDebug "Base filename: ${base_filename}"
      new_filename="$(echo "${full_filename}" | sed "s%${download_path}%%")"
      LogDebug "New filename: ${new_filename}"
      directory_name="$(echo "${new_filename}" | sed "s%${base_filename}%%")"
      LogDebug "Directory name: ${directory_name}"
      nextcloud_file_path="$(dirname ${new_filename})"
      LogDebug "Nextcloud file path: ${nextcloud_file_path}"
      if [ ! -f "${full_filename}" ]; then
         LogWarning "Media file ${full_filename} does not exist. It may exist in 'Recently Deleted' so has been removed post download"
      else
         LogInfoN "Uploading ${full_filename} to ${nextcloud_url%/}/remote.php/dav/files/${nextcloud_username}/${nextcloud_target_dir}${nextcloud_file_path}/${base_filename}"
         curl_response="$(curl --silent --show-error --location --user "${nextcloud_username}:${nextcloud_password}" --write-out "%{http_code}" --upload-file "${full_filename}" "${nextcloud_url%/}/remote.php/dav/files/${nextcloud_username}/${nextcloud_target_dir}${nextcloud_file_path}/${base_filename}")"
         if [ "${curl_response}" -ge 200 -a "${curl_response}" -le 299 ]; then
            echo "Success: ${curl_response}"
         else
            echo "Unexpected response: ${curl_response}"
         fi
         if [ -f "${full_filename%.HEIC}.JPG" ]; then
            LogInfoN "Uploading ${full_filename%.HEIC}.JPG to ${nextcloud_url%/}/remote.php/dav/files/${nextcloud_username}/${nextcloud_target_dir}${nextcloud_file_path}/${base_filename%.HEIC}.JPG"
            curl_response="$(curl --silent --show-error --location --user "${nextcloud_username}:${nextcloud_password}" --write-out "%{http_code}" --upload-file "${full_filename%.HEIC}.JPG" "${nextcloud_url%/}/remote.php/dav/files/${nextcloud_username}/${nextcloud_target_dir}${nextcloud_file_path}/${base_filename%.HEIC}.JPG")"
            if [ "${curl_response}" -ge 200 -a "${curl_response}" -le 299 ]; then
               echo "Success: ${curl_response}"
            else
               echo "Unexpected response: ${curl_response}"
            fi
         fi
      fi
   done
   IFS="${save_ifs}"
}

RemoveAllJPGs(){
   IFS="$(echo -en "\n\b")"
   LogWarning "Remove all JPGs that have accompanying HEIC files. This could result in data loss if HEIC file name matches the JPG file name, but content does not."
   LogInfo "Waiting for 2mins before progressing. Please stop the container now, if this is not what you want to do..."
   sleep 120
   for heic_file in $(find "${download_path}" -type f -name *.HEIC 2>/dev/null); do
      jpeg_file="${heic_file%.HEIC}.JPG"
      if [ "${jpeg_path}" ]; then
         jpeg_file="${jpeg_file/${download_path}/${jpeg_path}}"
      fi
      LogInfo "Removing ${jpeg_file}"
      if [ -f "${jpeg_file}" ]; then
         rm "${jpeg_file}"
      fi
   done
   IFS="${save_ifs}"
}

ForceConvertAllHEICs(){
   IFS="$(echo -en "\n\b")"
   LogWarning "Force convert all HEICs to JPEG. This could result in data loss if JPG files have been edited on disk"
   LogInfo "Waiting for 2mins before progressing. Please stop the container now, if this is not what you want to do..."
   sleep 120
   for heic_file in $(find "${download_path}" -type f -name *.HEIC 2>/dev/null); do
      jpeg_file="${heic_file%.HEIC}.JPG"
      if [ "${jpeg_path}" ]; then
         jpeg_file="${jpeg_file/${download_path}/${jpeg_path}}"
      fi
      LogInfo "Converting ${heic_file} to ${jpeg_file}"
      rm "${jpeg_file}"
      convert -quality "${jpeg_quality}" "${heic_file}" "${jpeg_file}"
      heic_date="$(date -r "${heic_file}" +"%a %b %e %T %Y")"
      LogDebug "Timestamp of HEIC file: ${heic_date}"
      touch --reference="${heic_file}" "${jpeg_file}"
      LogDebug "Setting timestamp of ${jpeg_file} to ${heic_date}"
      LogDebug "Correct owner and group of ${jpeg_file} to ${user}:${group}"
      chown "${user_id}:${group_id}" "${jpeg_file}"
   done
   IFS="${save_ifs}"
}

ForceConvertAllmntHEICs(){
   IFS="$(echo -en "\n\b")"
   LogWarning "Force convert all HEICs in /mnt directory to JPEG. This could result in data loss if JPG files have been edited on disk"
   LogInfo "Waiting for 2mins before progressing. Please stop the container now, if this is not what you want to do..."
   sleep 120
   for heic_file in $(find "/mnt" -type f -name *.HEIC 2>/dev/null); do
      jpeg_file="${heic_file%.HEIC}.JPG"
      if [ "${jpeg_path}" ]; then
         jpeg_file="${jpeg_file/${download_path}/${jpeg_path}}"
      fi
      LogInfo "Converting ${heic_file} to ${jpeg_file}"
      rm "${jpeg_file}"
      convert -quality "${jpeg_quality}" "${heic_file}" "${jpeg_file}"
      heic_date="$(date -r "${heic_file}" +"%a %b %e %T %Y")"
      LogDebug "Timestamp of HEIC file: ${heic_date}"
      touch --reference="${heic_file}" "${jpeg_file}"
      LogDebug "Setting timestamp of ${jpeg_file} to ${heic_date}"
      LogDebug "Correct owner and group of ${jpeg_file} to ${user}:${group}"
      chown "${user}:${group}" "${jpeg_file}"
   done
   IFS="${save_ifs}"
}

CorrectJPEGTimestamps(){
   IFS="$(echo -en "\n\b")"
   LogInfo "Check and correct converted HEIC timestamps..."
   for heic_file in $(find "${download_path}" -type f -name *.HEIC 2>/dev/null); do
      jpeg_file="${heic_file%.HEIC}.JPG"
      if [ "${jpeg_path}" ]; then
         jpeg_file="${jpeg_file/${download_path}/${jpeg_path}}"
      fi
      heic_date="$(date -r "${heic_file}" +"%a %b %e %T %Y")"
      LogDebug "Timestamp of HEIC file: ${heic_date}"
      if [ -f "${jpeg_file}" ]; then
         LogDebug "JPEG file found: ${jpeg_file}"
         jpeg_date="$(date -r "${jpeg_file}" +"%a %b %e %T %Y")"
         LogDebug "Timestamp of JPEG file: ${jpeg_date}"
         if [ "${heic_date}" != "${jpeg_date}" ]; then
            LogInfo "Setting timestamp of ${jpeg_file} to ${heic_date}"
            touch --reference="${heic_file}" "${jpeg_file}"
         else
            LogDebug "Time stamps match. Adjustment not required"
         fi
      fi
   done
   IFS="${save_ifs}"
}

RemoveRecentlyDeletedAccompanyingFiles(){
   IFS="$(echo -en "\n\b")"
   LogInfo "Deleting 'Recently Deleted' accompanying files (.JPG/_HEVC.MOV)..."
   for heic_file in $(echo "$(grep "Deleted /" /tmp/icloudpd/icloudpd_sync.log)" | grep ".HEIC" | cut -d " " -f 9-); do
      heic_file_clean="${heic_file/!/}"
      jpeg_file_clean="${heic_file_clean%.HEIC}.JPG"
      if [ "${jpeg_path}" ]; then
         jpeg_file_clean="${jpeg_file_clean/${download_path}/${jpeg_path}}"
      fi
      if [ -f "${jpeg_file_clean}" ]; then
         LogDebug "Deleting ${jpeg_file_clean}"
         rm -f "${jpeg_file_clean}"
      fi
      if [ -f "${heic_file_clean%.HEIC}_HEVC.MOV" ]; then
         LogDebug "Deleting ${heic_file_clean%.HEIC}_HEVC.MOV"
         rm -f "${heic_file_clean%.HEIC}_HEVC.MOV"
      fi
   done
   LogInfo "Deleting 'Recently Deleted' accompanying files complete"
   IFS="${save_ifs}"
}

RemoveEmptyDirectories(){
   LogInfo "Deleting empty directories from ${download_path}..."
   find "${download_path}" -type d -empty -delete
   LogInfo "Deleting empty directories complete"
   if [ "${jpeg_path}" ]; then
      LogDebug "Deleting empty directories from ${jpeg_path}..."
      find "${jpeg_path}" -type d -empty -delete
      LogInfo "Deleting empty directories complete"
   fi
}

Notify(){
   local notification_classification notification_event notification_prority notification_message notification_result notification_files_preview_count notification_files_preview_type notification_files_preview_text
   notification_classification="${1}"
   notification_event="${2}"
   notification_prority="${3}"
   notification_message="${4}"
   notification_files_preview_count="${5}"
   notification_files_preview_type="${6}"
   notification_files_preview_text="${7}"
   notification_wecom_title="${8}"
   notification_wecom_digest="${9}"

   if [ "${notification_classification}" = "startup" ];then
      notification_icon="\xE2\x96\xB6"
      # 启动成功通知封面/Image for Startup success
      thumb_media_id="$media_id_startup"
   elif [ "${notification_classification}" = "remotesync" ];then
      notification_icon="\xE2\x96\xB6"
      # 启动成功通知封面/Image for Startup success
      thumb_media_id="$media_id_startup"
   elif [ "${notification_classification}" = "downloaded files" ]; then
      notification_icon="\xE2\x8F\xAC"
      # 下载通知封面/Image for downloaded files
      thumb_media_id="$media_id_download"
   elif [ "${notification_classification}" = "cookie expiration" ]; then
      notification_icon="\xF0\x9F\x9A\xA9"
      # cookie即将过期通知封面/Image for cookie expiration
      thumb_media_id="$media_id_expiration"
   elif [ "${notification_classification}" = "deleted files" ]; then
      notification_icon="\xE2\x9D\x8C"
      # 删除文件通知封面/Image for deleted files
      thumb_media_id="$media_id_delete"
   elif [ "${notification_classification}" = "failure" ] || [ "${notification_classification}" = "cookie expired" ]; then
      notification_icon="\xF0\x9F\x9A\xA8"
      # 同步失败、cookiey已过期通知封面/Image for cookie expired or failure
      thumb_media_id="$media_id_warning"
   fi
   if [ "${notification_type}" ]; then LogInfo "Sending ${notification_type} ${notification_classification} notification"; fi
   if [ "${notification_type}" = "Prowl" ]; then
      notification_result="$(curl --silent --output /dev/null --write-out "%{http_code}" "${notification_url}"  \
         --form apikey="${prowl_api_key}" \
         --form application="${notification_title}" \
         --form event="${notification_event}" \
         --form priority="${notification_prority}" \
         --form description="${notification_message}")"
      curl_exit_code="$?"
   elif [ "${notification_type}" = "Pushover" ]; then
      if [ "${notification_prority}" = "2" ]; then notification_prority=1; fi
      if [ "${notification_files_preview_count}" ]; then
         pushover_text="$(echo -e "${notification_icon} ${notification_event}\n${notification_message}\nMost recent ${notification_files_preview_count} ${notification_files_preview_type} files:\n${notification_files_preview_text}")"
      else
         pushover_text="$(echo -e "${notification_icon} ${notification_event}\n${notification_message}")"
      fi
      notification_result="$(curl --silent --output /dev/null --write-out "%{http_code}" "${notification_url}"  \
         --form-string "user=${pushover_user}" \
         --form-string "token=${pushover_token}" \
         --form-string "title=${notification_title}" \
         --form-string "sound=${pushover_sound}" \
         --form-string "priority=${notification_prority}" \
         --form-string "message=${pushover_text}")"
      curl_exit_code="$?"
   elif [ "${notification_type}" = "Telegram" ]; then
      if [ "${notification_files_preview_count}" ]; then
         telegram_text="$(echo -e "${notification_icon} *${notification_title}*\n${notification_message//_/\\_}\nMost recent ${notification_files_preview_count} ${notification_files_preview_type} files:\n${notification_files_preview_text//_/\\_}")"
      else
         telegram_text="$(echo -e "${notification_icon} *${notification_title}*\n${notification_message//_/\\_}")"
      fi
      notification_result="$(curl --silent --output /dev/null --write-out "%{http_code}" --request POST "${notification_url}" \
         --data chat_id="${telegram_chat_id}" \
         --data parse_mode="markdown" \
         --data disable_notification="${telegram_disable_notification:=false}" \
         --data text="${telegram_text}")"
      curl_exit_code="$?"
      unset telegram_disable_notification
   elif [ "${notification_type}" = "openhab" ]; then
      webhook_payload="$(echo -e "${notification_title} - ${notification_message}")"
      notification_result="$(curl -X 'PUT' --silent --output /dev/null --write-out "%{http_code}" "${notification_url}" \
         --header 'content-type: text/plain' \
         --data "${webhook_payload}")"
      curl_exit_code="$?"
   elif [ "${notification_type}" = "Webhook" ]; then
      webhook_payload="$(echo -e "${notification_title} - ${notification_message}")"
      notification_result="$(curl --silent --output /dev/null --write-out "%{http_code}" "${notification_url}" \
         --header 'content-type: application/json' \
         --data "{ \"${webhook_body}\" : \"${webhook_payload}\" }")"
      curl_exit_code="$?"
   elif [ "${notification_type}" = "Discord" ]; then
      if [ "${notification_files_preview_count}" ]; then
         discord_text="${notification_message}\\nMost recent ${notification_files_preview_count} ${notification_files_preview_type} files:\\n${notification_files_preview_text//$'\n'/'\n'}"
      else
         discord_text="$(echo -e "${notification_message}")"
      fi
      notification_result="$(curl --silent --output /dev/null --write-out "%{http_code}" --request POST "${notification_url}" \
         --header 'content-type: application/json' \
         --data "{ \"username\" : \"${notification_title}\" , \"avatar_url\" : \"https://raw.githubusercontent.com/Womabre/-unraid-docker-templates/master/images/photos_icon_large.png\" , \"embeds\" : [ { \"author\" : { \"name\" : \"${notification_event}\" } , \"color\" : 2061822 , \"description\": \"${discord_text}\" } ] }")"
      curl_exit_code="$?"
   elif [ "${notification_type}" = "Dingtalk" ]; then
      notification_result="$(curl --silent --output /dev/null --write-out "%{http_code}" --request POST "${notification_url}" \
         --header 'Content-Type: application/json' \
         --data "{'msgtype': 'markdown','markdown': {'title':'${notification_title}','text':'## ${notification_title}\n${notification_message}'}}")"
      curl_exit_code="$?"
   elif [ "${notification_type}" = "IYUU" ]; then
      if [ "${notification_files_preview_count}" ]; then
         iyuu_text="$(echo -e "${notification_icon} *${notification_title}*\n${notification_message}\nMost recent ${notification_files_preview_count} ${notification_files_preview_type} files:\n${notification_files_preview_text//_/\\_}")"
      else
         iyuu_text="$(echo -e "${notification_icon} *${notification_title}*\n${notification_message}")"
      fi
      notification_result="$(curl --silent --output /dev/null --write-out "%{http_code}" --request POST "${notification_url}" \
         --data text="${notification_title}" \
         --data desp="${iyuu_text}")"
      curl_exit_code="$?"
   elif [ "${notification_type}" = "WeCom" ]; then
      if [ "$(date +'%s')" -ge "$(date +'%s' -d "${wecom_token_expiry}")" ]; then
         LogWarning "${notification_type} token has expired."
         unset wecom_token
      fi
      if [ -z "${wecom_token}" ]; then
         LogWarning "Obtaining new ${notification_type} token..."
         wecom_token="$(/usr/bin/curl -s -G "${wecom_token_url}" | awk -F\" '{print $10}')"
         wecom_token_expiry="$(date --date='2 hour')"
         notification_url="${wecom_base_url}/cgi-bin/message/send?access_token=${wecom_token}"
         LogInfo "${notification_type} token: ${wecom_token}"
         LogInfo "${notification_type} token expiry time: $(date -d "${wecom_token_expiry}")"
         LogInfo "${notification_type} notification URL: ${notification_url}"
      fi
      # 结束时间、下次同步时间
      syn_end_time="$(date '+%H:%M:%S')"
      syn_next_time="$(date +%H:%M:%S -d "${synchronisation_interval} seconds")"
      if [ "${notification_files_preview_count}" ]; then
         LogInfo "Attempting creating preview count message body"
         if [ "${icloud_china}" = false ]; then
            wecom_text="$(echo -e "${notification_icon} *${notification_title}*\n${notification_message}\nMost recent ${notification_files_preview_count} ${notification_files_preview_type} files:\n${notification_files_preview_text//_/\\_}")"
         else
            notification_files_preview_text="${notification_files_preview_text//$'\n'/'<br/>'}"
            wecom_text="$(echo -e "<font style="line-height:1.5"><center><b><big><big>同步日志</big></big></b></font></center><center><b>${notification_message}</b></center><center>···················  <small>最近 ${notification_files_preview_count} 条${notification_files_preview_type}记录如下</small>  ····················</center><code><small>${notification_files_preview_text}</small></code><center>···················  <small>下次同步时间为 ${syn_next_time}</small>  ··················</center>")"
         fi
      else
         LogInfo "Attempting creating message body"
         if [ "${icloud_china}" = false ]; then
            wecom_text="$(echo -e "${notification_icon} *${notification_title}*\n${notification_message}")"
         else
            wecom_text="$(echo -e "${notification_message}")"
         fi
      fi
      LogInfo "Attempting send..."
      notification_result="$(curl --silent --output /dev/null --write-out "%{http_code}" --data-ascii "{\"touser\":\"${touser}\",\"msgtype\":\"mpnews\",\"agentid\":\"${agentid}\",\"mpnews\":{\"articles\":[{\"title\":\"${notification_wecom_title}\",\"thumb_media_id\":\"${thumb_media_id}\",\"author\":\"${syn_end_time}\",\"content_source_url\":\"${content_source_url}\",\"content\":\"${wecom_text}\",\"digest\":\"${notification_wecom_digest}\"}]},\"safe\":\"0\",\"enable_id_trans\":\"0\",\"enable_duplicate_check\":\"0\",\"duplicate_check_interval\":\"1800\"}" --url "${notification_url}")"
      curl_exit_code="$?"
      LogInfo "Send result: ${notification_result}"
   elif [ "${notification_type}" = "Gotify" ]; then
      notification_result="$(curl --silent --output /dev/null --write-out "%{http_code}" "${notification_url}"  \
         -F "title=${notification_title}" \
         -F "message=${notification_message}")"
      curl_exit_code="$?"
   elif [ "${notification_type}" = "Bark" ]; then
      if [ "${notification_files_preview_count}" ]; then
	      notification_files_preview_text="$(echo "${notification_files_preview_text}" | tr '\n' ',')"
         bark_text="$(echo -e "${notification_icon} ${notification_message} Most recent ${notification_files_preview_count} ${notification_files_preview_type} files: ${notification_files_preview_text}")"
      else
         bark_text="$(echo -e "${notification_icon} ${notification_message}")"
      fi
      notification_result="$(curl --location --silent --output /dev/null --write-out "%{http_code}" "http://${bark_server}/push" \
         -H 'Content-Type: application/json; charset=utf-8' \
         -d "{ \"device_key\": \"${bark_device_key}\", \"title\": \"${notification_title}\", \"body\": \"${bark_text}\", \"category\": \"category\" }")"
      curl_exit_code="$?"
   fi
   if [ "${notification_type}" ]; then
      if [ "${notification_result:0:1}" -eq 2 ]; then
         LogDebug "${notification_type} ${notification_classification} notification sent successfully"
      else
         LogError "${notification_type} ${notification_classification} notification failed with http status code: ${notification_result} and curl exit code: ${curl_exit_code}"
         LogError "***** Please report problems here: https://github.com/boredazfcuk/docker-icloudpd/issues *****"
         sleep 120
         exit 1
      fi
   fi
}

CommandLineBuilder(){
   command_line="--directory ${download_path} --cookie-directory ${config_dir} --domain ${auth_domain} --username ${apple_id} --no-progress-bar"
   if [ "${photo_size}" != "original"  ]; then
      command_line="${command_line} --size ${photo_size}"
   fi
   if [ "${set_exif_datetime}" != false ]; then
      command_line="${command_line} --set-exif-datetime"
   fi
   if [ "${auto_delete}" != false ]; then
      command_line="${command_line} --auto-delete"
   elif [ "${delete_after_download}" != false ]; then
      command_line="${command_line} --delete-after-download"
   fi
   if [ "${skip_live_photos}" = false ]; then
      if [ "${live_photo_size}" != "original" ]; then
         command_line="${command_line} --live-photo-size ${live_photo_size}"
      fi
   else
      command_line="${command_line} --skip-live-photos"
   fi
   if [ "${skip_videos}" != false ]; then
      command_line="${command_line} --skip-videos"
   fi
   if [ -z "${photo_album}" ] && [ -z "${photo_library}" ]; then
      command_line="${command_line} --folder-structure ${folder_structure}"
   fi
   if [ "${until_found}" ]; then
      command_line="${command_line} --until-found ${until_found}"
   fi
   if [ "${recent_only}" ]; then
      command_line="${command_line} --recent ${recent_only}"
   fi
}

SyncUser(){
   LogInfo "Sync user: ${user}"
   if [ "${synchronisation_delay}" -ne 0 ]; then
      LogInfo "Delay for ${synchronisation_delay} minutes"
      sleep "${synchronisation_delay}m"
   fi
   while :; do
      synchronisation_start_time="$(date +'%s')"
      LogInfo "Synchronisation starting at $(date +%H:%M:%S -d "@${synchronisation_start_time}")"
      source <(grep debug_logging "${config_file}")
      chown -R "${user_id}:${group_id}" "${config_dir}"
      CheckKeyringExists
      if [ "${authentication_type}" = "MFA" ]; then
         LogDebug "Check MFA Cookie"
         valid_mfa_cookie=false
         while [ "${valid_mfa_cookie}" = false ]; do CheckMFACookie; done
      fi
      CheckMount
      if [ "${skip_check}" = false ]; then
         CheckFiles
      else
         check_exit_code=0
         check_files_count=1
      fi
      if [ "${check_exit_code}" -eq 0 ]; then
         if [ "${check_files_count}" -gt 0 ]; then
            LogDebug "Starting download of new files for user: ${user}"
            synchronisation_time="$(date +%s -d '+15 minutes')"
            LogDebug "Downloading new files using password stored in keyring file..."
            >/tmp/icloudpd/icloudpd_download_error
            IFS=$'\n'
            # source /opt/icloudpd_latest/bin/activate
            # LogDebug "Switched to icloudpd: $(/opt/icloudpd_latest/bin/icloudpd --version | awk '{print $3}')"
            if [ "${photo_album}" ]; then
               LogDebug "Starting Photo Album download"
               DownloadAlbums
            elif [ "${photo_library}" ]; then
               LogDebug "Starting Photo Library download"
               DownloadLibraries
            else
               LogDebug "Starting Photo download"
               DownloadPhotos
            fi
            download_exit_code="$(cat /tmp/icloudpd/icloudpd_download_exit_code)"
            # deactivate
            if [ "${download_exit_code}" -gt 0 ] || [ -s /tmp/icloudpd/icloudpd_download_error ]; then
               LogError "Failed to download new files"
               LogError " - Can you log into ${icloud_domain} without receiving pop-up notifications?"
               LogError "Error debugging info:"
               LogError "$(cat /tmp/icloudpd/icloudpd_download_error)"
               LogError "***** Please report problems here: https://github.com/boredazfcuk/docker-icloudpd/issues *****"
               if [ "${icloud_china}" = false ]; then
                  Notify "failure" "iCloudPD container failure" "1" "iCloudPD failed to download new files for Apple ID: ${apple_id}"
               else
                  # 结束时间、下次同步时间
                  syn_end_time="$(date '+%H:%M:%S')"
                  syn_next_time="$(date +%H:%M:%S -d "${synchronisation_interval} seconds")"
                  Notify "failure" "iCloudPD container failure" "1" "从 iCloud 图库下载新照片失败，将在 ${syn_next_time} 再次尝试" "" "" "" "下载 ${name} 的 iCloud 图库新照片失败" "将在 ${syn_next_time} 再次尝试"
               fi
            else
               if [ "${download_notifications}" ]; then DownloadedFilesNotification; fi
               if [ "${synology_photos_app_fix}" ]; then SynologyPhotosAppFix; fi
               if [ "${convert_heic_to_jpeg}" != false ]; then
                  LogInfo "Convert HEIC files to JPEG"
                  ConvertDownloadedHEIC2JPEG
               fi
               if [ "${nextcloud_upload}" = true ]; then NextcloudUpload; fi
               if [ "${nextcloud_delete}" = true ]; then NextcloudDelete; fi
               if [ "${delete_notifications}" ]; then DeletedFilesNotification; fi
               if [ "${delete_accompanying}" = true -a "${folder_structure}" != "none" -a "${set_exif_datetime}" = false ]; then
                  RemoveRecentlyDeletedAccompanyingFiles
               fi
               if [ "${delete_empty_directories}" = true -a "${folder_structure}" != "none" ]; then
                  RemoveEmptyDirectories
               fi
               SetOwnerAndPermissionsDownloads
               LogInfo "Synchronisation complete for ${user}"
               if [ "${notification_type}" -a "${remote_sync_complete_notification}" = true ]; then
                  Notify "remotesync" "iCloudPD remote synchronisation complete" "0" "iCloudPD has completed a remote synchronisation request for Apple ID: ${apple_id}"
                  unset remote_sync_complete_notification
               fi
            fi
            login_counter=$((login_counter + 1))
         fi
      fi
      CheckWebCookie
      LogInfo "Web cookie expires: ${web_cookie_expire_date/ / @ }"
      if [ "${authentication_type}" = "MFA" ]; then DisplayMFAExpiry; fi
      LogDebug "iCloud login counter = ${login_counter}"
      synchronisation_end_time="$(date +'%s')"
      LogInfo "Synchronisation ended at $(date +%H:%M:%S -d "@${synchronisation_end_time}")"
      LogInfo "Total time taken: $(date +%H:%M:%S -u -d @$((synchronisation_end_time - synchronisation_start_time)))"
      if [ "${single_pass:=false}" = true ]; then
         LogDebug "Single Pass mode set, exiting"
         exit 0
      else
         sleep_time="$((synchronisation_interval - synchronisation_end_time + synchronisation_start_time))"
         LogInfo "Next synchronisation at $(date +%H:%M:%S -d "${sleep_time} seconds")"
         unset check_exit_code check_files_count download_exit_code
         unset new_files
         if [ "${notification_type}" = "Telegram" -a "${telegram_polling}" = true ]; then
            LogInfo "Monitoring ${notification_type} for remote wake command: ${user}"
            listen_counter=0
            while [ "${listen_counter}" -lt "${sleep_time}" ]; do
               if [ "${telegram_polling}" = true ]; then
                  unset latest_updates latest_update_ids break_while
                  update_count=0
                  telegram_update_id_offset="$(head -1 "${telegram_update_id_offset_file}")"
                  LogDebug "Polling Telegram for updates newer than: ${telegram_update_id_offset}"
                  telegram_update_id_offset_inc=$((telegram_update_id_offset + 1))
                  if [ "${telegram_server}" ] ; then
                     latest_updates="$(curl --request POST --silent --data "allowed_updates=message" --data "offset=${telegram_update_id_offset_inc}" "https://${telegram_server}/bot${telegram_token}/getUpdates" | jq .result[])"
                  else
                     latest_updates="$(curl --request POST --silent --data "allowed_updates=message" --data "offset=${telegram_update_id_offset_inc}" "https://api.telegram.org/bot${telegram_token}/getUpdates" | jq .result[])"
                  fi
                  if [ "${latest_updates}" ]; then
                     latest_update_ids="$(echo "${latest_updates}" | jq -r '.update_id')"
                  fi
                  if [ "${latest_update_ids}" ]; then
                     update_count="$(echo "${latest_update_ids}" | wc --lines)"
                     LogDebug "Updates to process: ${update_count}"
                     if [ "${update_count} -gt 0 " ]; then
                        for latest_update in ${latest_update_ids}; do
                           LogDebug "Processing update: ${latest_update}"
                           check_update="$(echo ${latest_updates} | jq ". | select(.update_id == ${latest_update}).message")"
                           check_update_text="$(echo ${check_update} | jq -r .text)"
                           LogDebug "New message received: ${check_update_text}"
                           if [ "$(echo "${check_update_text}" | tr [:upper:] [:lower:])" = "$(echo "${user}" | tr [:upper:] [:lower:])" ]; then
                              break_while=true
                              LogDebug "Remote sync message match: ${check_update_text}"
                           else
                              LogDebug "Ignoring message: ${check_update_text}"
                           fi
                        done
                        echo -n "${latest_update}" > "${telegram_update_id_offset_file}"
                        if [ "${break_while}" ]; then
                           LogDebug "Remote sync initiated"
                           if [ "${icloud_china}" = false ]; then
                              Notify "remotesync" "iCloudPD remote synchronisation initiated" "0" "iCloudPD has detected a remote synchronisation request for Apple ID: ${apple_id}"
                              remote_sync_complete_notification=true
                           else
                              Notify "remotesync" "iCloudPD remote synchronisation initiated" "0" "启动成功，开始同步当前 Apple ID 中的照片" "" "" "" "开始同步 ${name} 的 iCloud 图库" "Apple ID: ${apple_id}"
                           fi
                           break
                        fi
                     fi
                  fi
               fi
               listen_counter=$((listen_counter+60))
               sleep 60
            done
         else
            sleep "${sleep_time}"
         fi
      fi
   done
}

SanitiseLaunchParameters(){
   if [ "${script_launch_parameters}" ]; then
      case "$(echo ${script_launch_parameters} | tr [:upper:] [:lower:])" in
         "--initialise"|"--initialize"|"--init"|"--remove-keyring"|"--convert-all-heics"|"--remove-all-jpgs"|"--force-convert-all-heics"|"--force-convert-all-mnt-heics"|"--correct-jpeg-time-stamps"|"--upload-library-to-nextcloud"|"--list-albums"|"--list-libraries"|"--enable-debugging"|"--disable-debugging")
            LogInfo "Script launch parameters: ${script_launch_parameters}"
         ;;
         *)
            LogWarning "Ignoring invalid launch parameter specified: ${script_launch_parameters}"
            LogWarning "Please do not specify the above parameter when launching the container. Continuing in 2 minutes"
            sleep 120
            unset script_launch_parameters
         ;;
      esac
   fi
}

enable_debug_logging(){
   sed -i 's/debug_logging=.*/debug_logging=true/' "${config_file}"
   LogInfo "Debug logging enabled"
}

disable_debug_logging(){
   sed -i 's/debug_logging=.*/debug_logging=false/' "${config_file}"
   LogInfo "Debug logging disabled"
}

##### Script #####
script_launch_parameters="${1}"
if [ "${2}"]; then
   LogWarning "Only a single command line parameter is supported at this time. Only processing: ${script_launch_parameters}"
fi
case  "$(echo ${script_launch_parameters} | tr [:upper:] [:lower:])" in
   "--initialise"|"--initialize"|"--init")
      initialise_container=true
    ;;
   "--remove-keyring")
      delete_password=true
    ;;
   "--convert-all-heics")
      convert_all_heics=true
   ;;
   "--remove-all-jpgs")
      remove_all_jpgs=true
   ;;
   "--force-convert-all-heics")
      force_convert_all_heics=true
   ;;
   "--force-convert-all-mnt-heics")
      force_convert_all_mnt_heics=true
   ;;
   "--correct-jpeg-time-stamps")
      correct_jpeg_time_stamps=true
   ;;
   "--enable-debugging")
      enable_debugging=true
   ;;
   "--disable-debugging")
      disable_debugging=true
   ;;
   "--upload-library-to-nextcloud")
      upload_library_to_nextcloud=true
   ;;
   "--help")
      "$(which more)" "/opt/CONFIGURATION.md"
      exit 0
   ;;
   "--list-albums")
      list_albums=true
   ;;
   "--list-libraries")
      list_libraries=true
   ;;
   *)
   ;;
esac

Initialise
SanitiseLaunchParameters
CreateGroup
CreateUser
SetOwnerAndPermissionsConfig
if [ "${delete_password:=false}" = true ]; then
   LogInfo "Deleting password from keyring"
   DeletePassword
   LogInfo "Password deletion complete"
   exit 0
fi
ConfigurePassword
if [ "${initialise_container:=false}" = true ]; then
   LogInfo "Starting container initialisation"
   GenerateCookie
   LogInfo "Container initialisation complete"
   exit 0
elif [ "${enable_debugging:=false}" = true ]; then
   LogInfo "Enabling debug logging"
   enable_debug_logging
   exit 0
elif [ "${disable_debugging:=false}" = true ]; then
   LogInfo "Disabling debug logging"
   disable_debug_logging
   exit 0
elif [ "${convert_all_heics:=false}" = true ]; then
   LogInfo "Converting all HEICs to JPG"
   ConvertAllHEICs
   SetOwnerAndPermissionsDownloads
   LogInfo "HEIC to JPG conversion complete"
   exit 0
elif [ "${remove_all_jpgs:=false}" = true ]; then
   LogInfo "Forcing removal of JPG files if accompanying HEIC exists"
   RemoveAllJPGs
   SetOwnerAndPermissionsDownloads
   LogInfo "Forced removal of JPG files if accompanying HEIC exists complete"
   exit 0
elif [ "${force_convert_all_heics:=false}" = true ]; then
   LogInfo "Forcing HEIC to JPG conversion"
   ForceConvertAllHEICs
   SetOwnerAndPermissionsDownloads
   LogInfo "Forced HEIC to JPG conversion complete"
   exit 0
elif [ "${force_convert_all_mnt_heics:=false}" = true ]; then
   LogInfo "Forcing HEIC to JPG conversion of all files in mount path"
   ForceConvertAllmntHEICs
   SetOwnerAndPermissionsDownloads
   LogInfo "Forced HEIC to JPG conversion of all files in mount path complete"
   exit 0
elif [ "${correct_jpeg_time_stamps:=false}" = true ]; then
   LogInfo "Correcting timestamps for JPEG files in ${download_path}"
   CorrectJPEGTimestamps
   LogInfo "JPEG timestamp correction complete"
   exit 0
elif [ "${upload_library_to_nextcloud:=false}" = true ]; then
   LogInfo "Uploading library to Nextcloud"
   UploadLibraryToNextcloud
   LogInfo "Uploading library to Nextcloud complete"
   exit 0
elif [ "${list_albums:=false}" = true ];then
   ListAlbums
   exit 0
elif [ "${list_libraries:=false}" = true ];then
   ListLibraries
   exit 0
fi
CheckMount
SetOwnerAndPermissionsConfig
CommandLineBuilder
CheckKeyringExists
SyncUser
