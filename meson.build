
# Nombre del proyecto y lenguade programacion
project('com.github.MatiasKottwitz.HolaMundoDeNuevo','vala','c')
# Incluir el modulo de traducciones
i18n = import('i18n')
# Establecer Dominio de traduccion.
add_global_arguments('-DGETTEXT_PACKAGE="@0@"'.format (meson.project_name()), language:'c')

# Creacion del ejecutable, lista de los archivos que se van a compilar, lista de las dependencias que se van a utilizar.
executable(
  meson.project_name(),
  'src' / 'Aplication.vala',
  dependencies:[
    dependency('gtk+-3.0')
  ],
  install: true
)


# Traducir e instalar el archivo .desktop 
i18n.merge_file(
    input: 'data' / 'hello-again.desktop.in',
    output: meson.project_name() + '.desktop',
    po_dir: meson.source_root() / 'po',
    type: 'desktop',
    install: true,
    install_dir: get_option('datadir') / 'applications'
)

#Traducir e instalar el archivo .metainfo
i18n.merge_file(
    input: 'data' / 'hello-again.metainfo.xml.in',
    output: meson.project_name() + '.metainfo.xml',
    po_dir: meson.source_root() / 'po',
    install: true,
    install_dir: get_option('datadir') / 'metainfo'
)
subdir('po')

# Instalar los iconos en todos los tamaños.
icon_sizes = ['16', '24', '32', '48', '64', '128']

foreach i : icon_sizes
  install_data(
        'data' / i + '.svg',
        install_dir: get_option('datadir') / 'icons' / 'hicolor' / i + 'x' + i / 'apps',
        rename: meson.project_name() + '.svg'
    )
  install_data(
        'data' / i + '.svg',
        install_dir: get_option('datadir') / 'icons' / 'hicolor' / i + 'x' + i + '@2' / 'apps',
        rename: meson.project_name() + '.svg'
    )
endforeach  
