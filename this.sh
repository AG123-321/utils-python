#!/bin/bash
#!/bin/bash

# ANSI color codes
blue="\e[34m"
yellow="\e[33m"
red="\e[31m"
reset="\e[0m"
bold="\e[1m"
# Function for colored output
colored() {
  local color="$1"
  local text="$2"
  local attrs="$3"
  echo -e "${color}${attrs}${text}${reset}"
}

# Info message
info() {
  local msg=" $1"
  local info_text="info: "
  echo -n -e "$(colored $blue $bold $info_text)"
  echo "$msg"
}

# Warning message
warn() {
  local msg=" $1"
  local warning_text="warning: "
  echo -n -e "$(colored $yellow $bold $warning_text)"
  echo "$msg"
}

# Error message
error() {
  local msg=" $1"
  local error_text="error: "
  echo -n -e "$(colored $red $bold $error_text)"
  echo "$msg"
}

# Critical error message
errorq() {
  local msg=" $1"
  local critical_text="critical:  "
  echo -n -e "$(colored $red $critical_text)"
  echo "$msg"
}

# Example usage
info "This is an information message."
warn "This is a warning message."
error "This is an error message."
errorq "This is a critical error message."

clone_repo() {
    echo no
}
if [ -w /bin/bash ]; then
    echo go
    gitfound=$(which git)
    git --version 2>&1 >/dev/null # improvement by tripleee
    GIT_IS_AVAILABLE=$?
    # ...
    if [ $GIT_IS_AVAILABLE -eq 0 ]; then #...
        echo "git found, cloning repository"
        clone_repo
    else
        echo "git not found"
    fi
else
    echo "error: this script needs to be run with sudo"
fi