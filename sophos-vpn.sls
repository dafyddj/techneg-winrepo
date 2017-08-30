sophos-vpn:
{% for version in ['2.1'] %}
  '{{ version }}':
    full_name: Sophos SSL VPN Client {{ version }}
    uninstaller: 'cscript.exe'
    uninstall_flags: 'C:\\ProgramData\\techneg.it\\wpkg\\git\\wpkg.js /NoLogo /remove:sophos-ssl.vpn' 
    msiexec: False
{% endfor %}
