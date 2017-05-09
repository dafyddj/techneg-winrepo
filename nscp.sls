{%- load_yaml as default_settings %}
host: 'https://github.com'
{%- endload %}

{% set nscp = salt['pillar.get'](
    'nscp:winrepo',
    default=default_settings,
    merge=True
  )
%}

nscp:
{% for version in ['0.4.4.23', '0.4.4.15'] %}
  '{{ version }}':
    full_name: NSClient++ (x64)
    installer: {{ nscp.host}}/mickem/nscp/releases/download/{{ version }}/NSCP-{{ version }}-x64.msi
    install_flags: '/passive /norestart ADDLOCAL=ALL REMOVE=Documentation'
    uninstaller: {{ nscp.host}}/mickem/nscp/releases/download/{{ version }}/NSCP-{{ version }}-x64.msi
    uninstall_flags: '/passive /norestart'
    msiexec: True
{% endfor %}
  '0.4.3.143':
    full_name: NSClient++ (x64)
