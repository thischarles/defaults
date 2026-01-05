#!/bin/zsh

# Use Touch ID to authenticate sudo in Terminal
# https://sixcolors.com/post/2023/08/in-macos-sonoma-touch-id-for-sudo-can-survive-updates/

# Create sudo_local from sudo_local.template
sudo cp /etc/pam.d/sudo_local.template /etc/pam.d/sudo_local
# Uncomment 'auth sufficient pam_tid.so' on the third line.
sudo sed -i "" 's/^[[:space:]]*#[[:space:]]*auth.*pam_tid\.so/auth sufficient pam_tid.so/' /etc/pam.d/sudo_local
