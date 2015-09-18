#!/usr/bin/env bash
# set-profile-image <image-path>

error_exit(){
  echo $1 1>&2
  exit 1
}

IMAGE_PATH=$1

[ -n "${IMAGE_PATH}" ] && \
  [ -f ${IMAGE_PATH} ] || \
  error_exit "Image doesn't exist"

TEMP_DIR=$(mktemp -d "/tmp/$(basename $0).XXXXXX") || \
  error_exit "Unable to make temp dir"

mkdir -p "${HOME}/Library/User Pictures/" && \
  convert "${IMAGE_PATH}" "${TEMP_DIR}/profile.jpg" && \
  mv "${TEMP_DIR}/profile.jpg" "${HOME}/Library/User Pictures/profile.jpg" || \
  error_exit "Unable to convert image"

sudo dscl . delete ${HOME} jpegphoto
sudo dscl . delete ${HOME} Picture
sudo dscl . create ${HOME} Picture "${HOME}/Library/User Pictures/profile.jpg"
sudo -K # Revoke sudo permission
