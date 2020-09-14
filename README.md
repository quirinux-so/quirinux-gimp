# gimp-quirinux 
Autor: Charlie Martínez ®
## Acerca de este repositorio
Complemento para Gimp que instala el programa Configurar Gimp en el menú Aplicaciones > Gráficos y el comando gimp-quirinux. 
Permite modificar la apariencia y/o los atajos de teclado de Gimp para emular a los de Adobe Photoshop. 
A diferencia de complementos similares que modifican atajos e íconos de manera irreversible, gimp-quirinux permite modificar una cosa, la otra o ambas (atajos, íconos) y posibilita revertir los cambios en cualquier momento. 
### Dependencias
gimp, gimp-data
### Recomendados
gimp-gap, gimp-gap, gimp-data-extras, gimp-plugin-registry, gimp-texturize, gimp-gmic, gimp-ufraw, gimp-gutenprint, gimp-lensfun, gimp-gluas, abr2gbr, gtkam-gimp, gimp-pytho
### Compatibilidad
Probado con éxito en Debian 10.x / Devuan Beowulf / Ubuntu  20.x
### Requisitos
Este complemento funciona sólo para Gimp instalado desde *repositorio oficial*. No válido para Snap, Flatpak ni Appimage.
### Instrucciones para instalar Gimp desde repositorio oficial
sudo apt-get install gimp gimp-data 
### Instrucciones para instalar este complemento desde el código fuente
sudo dpkg -b gimp-quirinux-1.0-q2_amd64</br>
sudo dpkg -i gimp-quirinux-1.0-q2_amd64.deb</br>
Ejecutar desde menú Aplicaciones > Gráficos > Configurar GIMP</br>
ó con el comando:</br>
gimp-quirinux 
### Instalar este complemento desde binario .deb
Luego de haber instalado Gimp desde repositorio oficial, la forma más sencilla de instalar este complemento es descargar el binario .deb
### Instrucciones para instalar desde binario:
Enlace de descarga: </br>
https://github.com/quirinux-so/gimp-quirinux/releases/tag/v1.0-estable</br>
Ejecutar con algún gestor como gdedebi, qapt-deb-installer, gnome-software, etc. o los siguientes comandos:</br>
sudo dpkg -i gimp-quirinux-1.0-q2_amd64.deb</br>
Iniciar desde menú Aplicaciones > Gráficos > Configurar GIMP</br>
ó con el comando:</br>
gimp-quirinux
#### Autores
Charlie Martínez, haciendo uso de la libertad de modificación y distribución de la licencia GPL, ha programado este complemento y no guarda relación alguna con los autores de GIMP (Peter Mattis y Spencer Kimball) ni con el autor de los componentes gráficos que incluye (íconos, hechos por un diseñador anónimo). 
#### Avisos legales
(p) y (c) 2020. Charlie Martínez y Quirinux son marcas registradas. Todo el software aquí publicado está protegido por Derechos de Autor y registrada en DNDA y se distribuye bajo licencia <a href="https://lslspanish.github.io/translation_GPLv3_to_spanish/">GPLv3</a>, mientras que todo el contenido artistico que acompaña al software (íconos, wallpapers, etc) y el literario (manuales y textos en general) es distribuido bajo licencia <a href="https://creativecommons.org/licenses/by/4.0/deed.es">Creative Commons Reconocimiento 4.0 Internacional</a>. Windows, Mac, GitHub, GIMP, Photoshop, Debian, TupiTube, OpenToonz, Linux y GNU son marcas registradas por sus respectivo dueños.
Puedes copiar y distribuir este material en cualquier medio y formato, remezclar, transformar y contruir nuevo material a partir del mismo para cualquier propósito, incluso comercialmente. Es necesario que indiques el nombre del autor original en los créditos, de manera adecuada y brindes un enlace a la licencia, indicando si se han realizado cambios. Puedes hacerlo en cualquier forma razonable, pero no de forma en que parezca que tu o que la implementación de este software cuenta con apoyo del licenciante. No puedes aplicar términos legales ni medidas tecnológicas que restrinjan legalmente a otras a hacer cualquier uso permitido por la licencia. 
#### Renuncias
Este repositorio de GitHub no es un respaldo a GitHub por parte de Charlie Martínez ni de Quirinux. Quirinux no mantiene ni distribuye el código base del motor de GitHub porque no está disponible bajo una licencia de código abierto y libre.
El autor de Quirinux no forma parte del equipo de desarrollo de Debian y Quirinux no es una distribución oficial de Debian, sino una derivada construida en base a ella, sin relación colaborativa alguna. 
El autor de Quirinux participa como usuario de pruebas y aporta sugerencias en proyectos como el fork de Systemback de Franco Conidi, OpenToonz y TupiTube, aplicaciones incluidas por defecto en Quirinux, sin embargo no forma parte del equipo de desarrollo de tales aplicaciones ni de ninguna otra salvo las que se indiquen específicamente en los repositorios.
