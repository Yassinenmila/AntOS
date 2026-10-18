
#!/usr/bin/env fish

# AntOS - Main installation script

function log_info
    set_color cyan
    echo "[INFO] $argv"
    set_color normal
end

function log_error
    set_color red
    echo "[ERROR] $argv"
    set_color normal
end

log_info "Starting AntOS installation..."

log_info "Checking operating system..."

if not test -f /etc/arch-release
    log_error "AntOS requires Arch Linux."
    exit 1
end

log_info "Arch Linux detected."
log_info "Installation system initialized."
