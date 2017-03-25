{%- load_yaml as default_settings %}
installer: 'https://github.com/mickem/nscp/releases/download/0.4.4.15/NSCP-0.4.4.15-x64.msi'
{%- endload %}

{% set nscp = salt['pillar.get'](
    'nscp:winrepo',
    default=default_settings,
    merge=True
  )
%}

nscp:
  '0.4.3.143':
    full_name: NSClient++ (x64)
  '0.4.4.15':
    full_name: NSClient++ (x64)
    installer: {{ nscp.installer }}
    install_flags: '/passive /norestart ADDLOCAL=ALL REMOVE=Documentation'
    uninstaller: '{96FD4041-BE85-4046-B9F0-E24D270C203B}'
    uninstall_flags: '/passive /norestart'
    msiexec: True
