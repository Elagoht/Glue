#!/usr/bin/env sh
if [ "$EUID" -ne 0 ]; then 
  printf "\033[91mPlease run under root privileges.\n"
else
  printf "\033[93m==> I want to\033[00m\n"
  PS3="Enter number >> "
  select reply in "install the program" "uninstall the program"; do
    case $reply in
      "install the program")
        printf "\033[93mInstallation has begin.\033[00m\n"
        chmod -v +x glue
        cp -v glue /usr/bin/
        if [ -f "/usr/bin/glue" ]; then
          printf "\033[92mInstallation has been completed.\033[00m\n"
          exit 0
        else
          printf "\033[91mCould not complete installation.\033[00m\n"
          exit 1
        fi
      ;;
      "uninstall the program")
        printf "\033[93mUninstallation has begin.\033[00m\n"
        rm -vf /usr/bin/glue
        if [ -f "/usr/bin/glue" ]; then
          printf "\033[91mCould not complete uninstallation.\033[00m\n"
          exit 1
        else
          printf "\033[92mUninstallation has been completed.\033[00m\n"
          exit 0
        fi
      ;;
    esac
  done
fi
