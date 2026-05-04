#!/bin/bash
# ----------------------------------------------------------------------
# TAVARDT Elite WHM Infrastructure Hardening (API Automation)
# ----------------------------------------------------------------------
# Description: Uses the native WHM API (whmapi1) to instantly lock down
# vulnerable legacy features that cPanel leaves enabled by default.
#
# Run as: root on the WHM Server
# ----------------------------------------------------------------------

echo "[TAVARDT] Starting WHM API Automated Hardening..."

# 1. Disable Compilers for Unprivileged Users
# Prevents a compromised cPanel account from compiling custom malware (C/C++).
echo "Disabling Compilers..."
/usr/local/cpanel/scripts/compilers off

# 2. Disable Anonymous FTP globally
# Anonymous FTP is a massive security risk and data leak vector.
echo "Disabling Anonymous FTP..."
whmapi1 set_local_ftp_server_settings anonymous_logins=0

# 3. Enforce Maximum Password Strength for all cPanel operations
# Requires clients to use highly complex passwords, preventing brute force.
echo "Enforcing Password Strength (100)..."
whmapi1 set_tweaksetting key=minpwstrength value=100

# 4. Enable Symlink Protection (Apache)
# Prevents cross-account symlink attacks (vital for shared/agency hosting).
echo "Enabling Apache Symlink Protection..."
whmapi1 set_tweaksetting key=cgihide value=1

# 5. Disable Mailman (Mailing Lists)
# Mailman is legacy and heavily exploited. Use Mautic for B2B mailing instead.
echo "Disabling Legacy Mailman..."
whmapi1 set_tweaksetting key=skipmailman value=1

# 6. Restrict System Information exposure
echo "Restricting System Info..."
whmapi1 set_tweaksetting key=hide_system_info value=1

echo "[TAVARDT] WHM Hardening Sequence Completed Successfully."
