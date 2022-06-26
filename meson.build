# Nombre del proyecto y lenguade programacion
project ('https://github.com/MatiasKottwitz/HolaMundoDeNuevo',vala','c')

# Creacion del ejecutable, lista de los archivos que se van a compilar, lista de las dependencias que se van a utilizar.
executable(
  meson.project_name(),
  'src' / 'Aplication.vala',
  dependencies:[
    dependency('gtk+-3.0')
  ],
  install: true
)

# Instalacion del archivo .desktop, para que se vea en el menu de aplicaciones.
install_data(
  'data' / 'hello-again.desktop',
  install_dir: get_option(datadir) / 'aplications',
  rename: meson.project_name() + '.desktop'
)

# Instalacion del archivo .metainfo.xml para que pueda ser visto en el AppCenter.
install_data(
  'data' / 'hello-again.metainfo.xml',
  install_dir: get_option('datadir') / 'metainfo',
  rename: meson.project_name() + '.metainfo.xml'
)




