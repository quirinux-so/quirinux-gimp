#!/bin/bash

# Nombre:	gimp-quirinux.sh
# Autor:	Charlie Martínez® <cmartinez@quirinux.org>
# Licencia:	https://www.gnu.org/licenses/gpl-3.0.txt
# Descripción:	Complento que permite definir el aspecto de GIMP y revertir los cambios.
# Versión:	2.0

# =========================================================================================
# INICIO / FIN (IDIOMAS) [CÓDIGO REUTILIZABLE]
# =========================================================================================

# Alemán
function _inicio_de() # Verifica si está instalado zenity
{
if [ -e "/usr/bin/zenity" ]; then # Está instalado, continúa
_menuPrincipal_de
else # No está instalado zenity, lo instala y continúa
_instalarZenity
_menuPrincipal_de
fi
}
function _fin_de()
{
zenity --info *text "Einstellungen vorgenommen. Sie können sie jederzeit umkehren. "
}

# Inglés
function _inicio_en() # Verifica si está instalado zenity
{
if [ -e "/usr/bin/zenity" ]; then # Está instalado, continúa
_menuPrincipal_en
else # No está instalado zenity, lo instala y continúa
_instalarZenity
_menuPrincipal_en
fi
}
function _fin_en()
{
zenity --info *text "Settings made. You can always reverse them."
}

# Castellano
function _inicio_es() # Verifica si está instalado zenity
{
if [ -e "/usr/bin/zenity" ]; then # Está instalado, continúa
_menuPrincipal_es
else # No está instalado zenity, lo instala y continúa
_instalarZenity
_menuPrincipal_es
fi
}
function _fin_es()
{
zenity --info *text "Configuraciones realizadas. Siempre puedes revertirlas."
}

# Francés
function _inicio_fr() # Verifica si está instalado zenity
{
if [ -e "/usr/bin/zenity" ]; then # Está instalado, continúa
_menuPrincipal_fr
else # No está instalado zenity, lo instala y continúa
_instalarZenity
_menuPrincipal_fr
fi
}
function _fin_fr()
{
zenity --info *text "Paramètres définis. Vous pouvez toujours les inverser. "
}

# Galego
function _inicio_gl() # Verifica si está instalado zenity
{
if [ -e "/usr/bin/zenity" ]; then # Está instalado, continúa
_menuPrincipal_gl
else # No está instalado zenity, lo instala y continúa
_instalarZenity
_menuPrincipal_gl
fi
}
function _fin_gl()
{
zenity --info *text "Configuración feita. Sempre os podes reverter."
}

# Italiano
function _inicio_it () # Verifica si está instalado zenity
{
if [ -e "/usr/bin/zenity" ]; then # Está instalado, continúa
_menuPrincipal_it
else # No está instalado zenity, lo instala y continúa
_instalarZenity
_menuPrincipal_it 
fi
}
function _fin_it ()
{
zenity --info *text "Impostazioni effettuate. Puoi sempre invertirli. "
}

# Portugués
function _inicio_pt() # Verifica si está instalado zenity
{
if [ -e "/usr/bin/zenity" ]; then # Está instalado, continúa
_menuPrincipal_pt
else # No está instalado zenity, lo instala y continúa
_instalarZenity
_menuPrincipal_pt
fi
}
function _fin_pt()
{
zenity --info *text "Configurações feitas. Você sempre pode revertê-los."
}

# Ruso
function _inicio_ru() # Verifica si está instalado zenity
{
if [ -e "/usr/bin/zenity" ]; then # Está instalado, continúa
_menuPrincipal_ru
else # No está instalado zenity, lo instala y continúa
_instalarZenity
_menuPrincipal_ru
fi
}
function _fin_ru()
{
zenity --info *text "Настройки сделаны. Вы всегда можете отменить их.  "
}

# =========================================================================================
# INSTALAR ZENITY [CÓDIGO REUTILIZABLE]
# =========================================================================================

function _instalarZenity()
{
sudo apt-get install zenity -y
}

# =========================================================================================
# SALIR [CÓDIGO REUTILIZABLE]
# =========================================================================================


function _salir()
{
exit 0
}

# =========================================================================================
# SELECTOR DE IDIOMA [CÓDIGO REUTILIZABLE]
# Esta sección fue tomada de Etertics GNU/Linux, 
# @Autor: Javier Obregón (GPLv3)
# =========================================================================================

function _idioma() 

{

IDIOMA=$(echo $LANG | cut -d_ -f1) # Idioma del sistema

if [[ $IDIOMA = "es" ]]
then
_inicio_es

elif [[ $IDIOMA = "en" ]]
then
_inicio_en

elif [[ $IDIOMA = "gl" ]]
then
_inicio_gl

elif [[ $IDIOMA = "pt" ]]
then
_inicio_pt

elif [[ $IDIOMA = "fr" ]]
then
_inicio_fr

elif [[ $IDIOMA = "it" ]]
then
_inicio_it

elif [[ $IDIOMA = "de" ]]
then
_inicio_de

elif [[ $IDIOMA = "ru" ]]
then
_inicio_ru

else
_inicio_en
fi

}

# =========================================================================================
# CASTELLANO
# =========================================================================================

function _menuPrincipal_es()
{
opPrincipal=$(
zenity --list --title "GIMP-QUIRINUX" --width="600" --height="300" \
--column="Opciones disponibles" \
"Usar iconos y atajos de Photoshop" \
"Usar iconos y atajos de GIMP" \
"Usar iconos de Photoshop y atajos de GIMP" \
"Usar iconos de GIMP y atajos de Photoshop" \
"Salir" \
)
if [[ $opPrincipal == "Usar iconos y atajos de Photoshop" ]]; then
_photoshop_es
_fin_es
fi
if [[ $opPrincipal == "Usar iconos y atajos de GIMP" ]]; then
_gimp_es
_fin_es
fi
if [[ $opPrincipal == "Usar iconos de Photoshop y atajos de GIMP" ]]; then
_photogimp_es
_fin_Es
fi
if [[ $opPrincipal == "Usar iconos de GIMP y atajos de Photoshop" ]]; then
_gimpshop_es
_fin_es
fi
if [[ $opPrincipal == "Salir" ]]; then
_salir
fi
}

# PHOTOSHOP ICONOS Y ATAJOS

function _photoshop_es()
{
(
echo "14"; sleep 1
echo "# Procesando"; sleep 1
sudo chmod 777 -R /home/
echo "29"; sleep 1
echo "# Procesando"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop/.config $usuarios; done
echo "43"; sleep 1
echo "# Procesando"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /root/  
echo "57"; sleep 1
echo "# Procesando"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/usr/share /usr/ 
echo "71"; sleep 1
echo "# Procesando"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /etc/skel/
echo "86"; sleep 1
echo "# Procesando"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Procesando"; sleep 1
)|
zenity --progress --title="Configurando" --text="Ten paciencia, llevará tiempo" --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuración cancelada"
fi
}

# GIMP ICONOS Y ATAJOS

function _gimp_es()
{
(
echo "14"; sleep 1
echo "# Procesando"; sleep 1
sudo chmod 777 -R /home/
echo "29"; sleep 1
echo "# Procesando"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-full/.config $usuarios; done
echo "43"; sleep 1
echo "# Procesando"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /root/  
echo "57"; sleep 1
echo "# Procesando"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/usr/share /usr/ 
echo "71"; sleep 1
echo "# Procesando"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /etc/skel/
echo "86"; sleep 1
echo "# Procesando"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Procesando"; sleep 1
)|
zenity --progress --title="Configurando" --text="Ten paciencia, llevará tiempo" --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuración cancelada"
fi
}

# ICONOS DE PHOTOSHOP Y ATAJOS DE GIMP

function _photogimp_es()
{
(
echo "18"; sleep 1
echo "# Procesando"; sleep 1
sudo chmod 777 -R /home/
echo "27"; sleep 1
echo "# Procesando"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop/.config $usuarios; done
echo "36"; sleep 1
echo "# Procesando"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /root/  
echo "45"; sleep 1
echo "# Procesando"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/usr/share /usr/ 
echo "54"; sleep 1
echo "# Procesando"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /etc/skel/
echo "63"; sleep 1
echo "# Procesando"; sleep 1
sudo chmod 777 -R /home/
echo "72"; sleep 1
echo "# Procesando"; sleep 1
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config $usuarios; done
echo "81"; sleep 1
echo "# Procesando"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config /root/
echo "90"; sleep 1
echo "# Procesando"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config /etc/skel/
echo "99"; sleep 1
echo "# Procesando"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Procesando"; sleep 1
)|
zenity --progress --title="Configurando" --text="Ten paciencia, llevará tiempo" --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuración cancelada"
fi
}

# ICONOS DE GIMP Y ATAJOS DE PHOTOSHOP

function _gimpshop_es()
{
(
echo "18"; sleep 1
echo "# Procesando"; sleep 1
sudo chmod 777 -R /home/
echo "27"; sleep 1
echo "# Procesando"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-full/.config $usuarios; done
echo "36"; sleep 1
echo "# Procesando"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /root/  
echo "45"; sleep 1
echo "# Procesando"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/usr/share /usr/ 
echo "54"; sleep 1
echo "# Procesando"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /etc/skel/
echo "63"; sleep 1
echo "# Procesando"; sleep 1
sudo chmod 777 -R /home/
echo "72"; sleep 1
echo "# Procesando"; sleep 1
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config $usuarios; done
echo "81"; sleep 1
echo "# Procesando"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config /root/
echo "90"; sleep 1
echo "# Procesando"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config /etc/skel/
echo "99"; sleep 1
echo "# Procesando"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Procesando"; sleep 1
)|
zenity --progress --title="Configurando" --text="Ten paciencia, llevará tiempo" --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuración cancelada"
fi
}

# =========================================================================================
# INGLÉS
# =========================================================================================

function _menuPrincipal_en()
{
opPrincipal=$(
zenity --list --title "GIMP-QUIRINUX" --width="600" --height="300" \
--column="Available options" \
"Use Photoshop icons and shortcuts" \
"Use GIMP icons and shortcuts" \
"Use Photoshop icons and GIMP shortcuts" \
"Use GIMP icons and Photoshop shortcuts" \
"Exit" \
)
if [[ $opPrincipal == "Use Photoshop icons and shortcuts" ]]; then
_photoshop_en
_fin_en
fi
if [[ $opPrincipal == "Use GIMP icons and shortcuts" ]]; then
_gimp_en
_fin_en
fi
if [[ $opPrincipal == "Use Photoshop icons and GIMP shortcuts" ]]; then
_photogimp_en
_fin_en
fi
if [[ $opPrincipal == "Use GIMP icons and Photoshop shortcuts" ]]; then
_gimpshop_en
_fin_en
fi
if [[ $opPrincipal == "Salir" ]]; then
_salir
fi
}

# PHOTOSHOP ICONOS Y ATAJOS

function _photoshop_en()
{
(
echo "14"; sleep 1
echo "# Processing"; sleep 1
sudo chmod 777 -R /home/
echo "29"; sleep 1
echo "# Processing"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop/.config $usuarios; done
echo "43"; sleep 1
echo "# Processing"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /root/  
echo "57"; sleep 1
echo "# Processing"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/usr/share /usr/ 
echo "71"; sleep 1
echo "# Processing"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /etc/skel/
echo "86"; sleep 1
echo "# Processing"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Processing"; sleep 1
)|
zenity --progress --title="Configuring" --text="Be patient, it will take time" --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuration canceled"
fi
}

# GIMP ICONOS Y ATAJOS

function _gimp_en()
{
(
echo "14"; sleep 1
echo "# Processing"; sleep 1
sudo chmod 777 -R /home/
echo "29"; sleep 1
echo "# Processing"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-full/.config $usuarios; done
echo "43"; sleep 1
echo "# Processing"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /root/  
echo "57"; sleep 1
echo "# Processing"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/usr/share /usr/ 
echo "71"; sleep 1
echo "# Processing"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /etc/skel/
echo "86"; sleep 1
echo "# Processing"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Processing"; sleep 1
)|
zenity --progress --title="Configuring" --text="Be patient, it will take time" --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuration canceled"
fi
}

# ICONOS DE PHOTOSHOP Y ATAJOS DE GIMP

function _photogimp_en()
{
(
echo "18"; sleep 1
echo "# Processing"; sleep 1
sudo chmod 777 -R /home/
echo "27"; sleep 1
echo "# Processing"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop/.config $usuarios; done
echo "36"; sleep 1
echo "# Processing"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /root/  
echo "45"; sleep 1
echo "# Processing"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/usr/share /usr/ 
echo "54"; sleep 1
echo "# Processing"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /etc/skel/
echo "63"; sleep 1
echo "# Processing"; sleep 1
sudo chmod 777 -R /home/
echo "72"; sleep 1
echo "# Processing"; sleep 1
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config $usuarios; done
echo "81"; sleep 1
echo "# Processing"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config /root/
echo "90"; sleep 1
echo "# Processing"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config /etc/skel/
echo "99"; sleep 1
echo "# Processing"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Processing"; sleep 1
)|
zenity --progress --title="Configuring" --text="Be patient, it will take time" --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuration canceled"
fi
}

# ICONOS DE GIMP Y ATAJOS DE PHOTOSHOP

function _gimpshop_en()
{
(
echo "18"; sleep 1
echo "# Processing"; sleep 1
sudo chmod 777 -R /home/
echo "27"; sleep 1
echo "# Processing"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-full/.config $usuarios; done
echo "36"; sleep 1
echo "# Processing"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /root/  
echo "45"; sleep 1
echo "# Processing"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/usr/share /usr/ 
echo "54"; sleep 1
echo "# Processing"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /etc/skel/
echo "63"; sleep 1
echo "# Processing"; sleep 1
sudo chmod 777 -R /home/
echo "72"; sleep 1
echo "# Processing"; sleep 1
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config $usuarios; done
echo "81"; sleep 1
echo "# Processing"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config /root/
echo "90"; sleep 1
echo "# Processing"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config /etc/skel/
echo "99"; sleep 1
echo "# Processing"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Processing"; sleep 1
)|
zenity --progress --title="Configuring" --text="Be patient, it will take time" --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuration canceled"
fi
}

# =========================================================================================
# GALLEGO
# =========================================================================================

function _menuPrincipal_gl()
{
opPrincipal=$(
zenity --list --title "GIMP-QUIRINUX" --width="600" --height="300" \
--column="Opcións dispoñibles" \
"Usa iconas e atallos de Photoshop" \
"Usa iconas e atallos GIMP" \
"Usa iconas de Photoshop e atallos GIMP" \
"Usar iconas GIMP e atallos de Photoshop" \
"Saída" \
)
if [[ $opPrincipal == "Usa iconas e atallos de Photoshop" ]]; then
_photoshop_gl
_fin_gl
fi
if [[ $opPrincipal == "Usa iconas e atallos GIMP" ]]; then
_gimp_gl
_fin_gl
fi
if [[ $opPrincipal == "Usa iconas de Photoshop e atallos GIMP" ]]; then
_photogimp_gl
_fin_gl
fi
if [[ $opPrincipal == "Usar iconas GIMP e atallos de Photoshop" ]]; then
_gimpshop_gl
_fin_gl
fi
if [[ $opPrincipal == "Saída" ]]; then
_salir
fi
}

# PHOTOSHOP ICONOS Y ATAJOS

function _photoshop_gl()
{
(
echo "14"; sleep 1
echo "# Procesamento"; sleep 1
sudo chmod 777 -R /home/
echo "29"; sleep 1
echo "# Procesamento"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop/.config $usuarios; done
echo "43"; sleep 1
echo "# Procesamento"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /root/  
echo "57"; sleep 1
echo "# Procesamento"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/usr/share /usr/ 
echo "71"; sleep 1
echo "# Procesamento"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /etc/skel/
echo "86"; sleep 1
echo "# Procesamento"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
)|
zenity --progress --title="Configuring" --text="Sexa paciente, levará tempo" --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuración cancelada"
fi
}

# GIMP ICONOS Y ATAJOS

function _gimp_gl()
{
(
echo "14"; sleep 1
echo "# Procesamento"; sleep 1
sudo chmod 777 -R /home/
echo "29"; sleep 1
echo "# Procesamento"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-full/.config $usuarios; done
echo "43"; sleep 1
echo "# Procesamento"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /root/  
echo "57"; sleep 1
echo "# Procesamento"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/usr/share /usr/ 
echo "71"; sleep 1
echo "# Procesamento"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /etc/skel/
echo "86"; sleep 1
echo "# Procesamento"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Procesamento"; sleep 1
)|
zenity --progress --title="Configuring" --text="Sexa paciente, levará tempo" --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuración cancelada"
fi
}

# ICONOS DE PHOTOSHOP Y ATAJOS DE GIMP

function _photogimp_gl()
{
(
echo "18"; sleep 1
echo "# Procesamento"; sleep 1
sudo chmod 777 -R /home/
echo "27"; sleep 1
echo "# Procesamento"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop/.config $usuarios; done
echo "36"; sleep 1
echo "# Procesamento"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /root/  
echo "45"; sleep 1
echo "# Procesamento"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/usr/share /usr/ 
echo "54"; sleep 1
echo "# Procesamento"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /etc/skel/
echo "63"; sleep 1
echo "# Procesamento"; sleep 1
sudo chmod 777 -R /home/
echo "72"; sleep 1
echo "# Procesamento"; sleep 1
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config $usuarios; done
echo "81"; sleep 1
echo "# Procesamento"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config /root/
echo "90"; sleep 1
echo "# Procesamento"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config /etc/skel/
echo "99"; sleep 1
echo "# Procesamento"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Procesamento"; sleep 1
)|
zenity --progress --title="Configuring" --text="Sexa paciente, levará tempo" --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuración cancelada"
fi
}

# ICONOS DE GIMP Y ATAJOS DE PHOTOSHOP

function _gimpshop_gl()
{
(
echo "18"; sleep 1
echo "# Procesamento"; sleep 1
sudo chmod 777 -R /home/
echo "27"; sleep 1
echo "# Procesamento"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-full/.config $usuarios; done
echo "36"; sleep 1
echo "# Procesamento"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /root/  
echo "45"; sleep 1
echo "# Procesamento"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/usr/share /usr/ 
echo "54"; sleep 1
echo "# Procesamento"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /etc/skel/
echo "63"; sleep 1
echo "# Procesamento"; sleep 1
sudo chmod 777 -R /home/
echo "72"; sleep 1
echo "# Procesamento"; sleep 1
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config $usuarios; done
echo "81"; sleep 1
echo "# Procesamento"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config /root/
echo "90"; sleep 1
echo "# Procesamento"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config /etc/skel/
echo "99"; sleep 1
echo "# Procesamento"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Procesamento"; sleep 1
)|
zenity --progress --title="Configurando" --text="Sexa paciente, levará tempo" --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuración cancelada"
fi
}

# =========================================================================================
# PORTUGUES
# =========================================================================================

function _menuPrincipal_pt()
{
opPrincipal=$(
zenity --list --title "GIMP-QUIRINUX" --width="600" --height="300" \
--column="Opções disponíveis " \
"Use ícones e atalhos do Photoshop " \
"Use ícones e atalhos do GIMP " \
"Use ícones do Photoshop e atalhos do GIMP" \
"Use ícones do GIMP e atalhos do Photoshop" \
"Saia" \
)
if [[ $opPrincipal == "Use ícones e atalhos do Photoshop " ]]; then
_photoshop_pt
_fin_pt
fi
if [[ $opPrincipal == "Use ícones e atalhos do GIMP " ]]; then
_gimp_pt
_fin_pt
fi
if [[ $opPrincipal == "Use ícones do Photoshop e atalhos do GIMP" ]]; then
_photogimp_pt
_fin_pt
fi
if [[ $opPrincipal == "Use ícones do GIMP e atalhos do Photoshop" ]]; then
_gimpshop_pt
_fin_pt
fi
if [[ $opPrincipal == "Saia" ]]; then
_salir
fi
}

# PHOTOSHOP ICONOS Y ATAJOS

function _photoshop_pt()
{
(
echo "14"; sleep 1
echo "# Em processamento"; sleep 1
sudo chmod 777 -R /home/
echo "29"; sleep 1
echo "# Em processamento"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop/.config $usuarios; done
echo "43"; sleep 1
echo "# Em processamento"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /root/  
echo "57"; sleep 1
echo "# Em processamento"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/usr/share /usr/ 
echo "71"; sleep 1
echo "# Em processamento"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /etc/skel/
echo "86"; sleep 1
echo "# Em processamento"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Em processamento"; sleep 1
)|
zenity --progress --title="Configurando" --text="Seja paciente, vai demorar" --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuração cancelada "
fi
}

# GIMP ICONOS Y ATAJOS

function _gimp_pt()
{
(
echo "14"; sleep 1
echo "# Em processamento"; sleep 1
sudo chmod 777 -R /home/
echo "29"; sleep 1
echo "# Em processamento"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-full/.config $usuarios; done
echo "43"; sleep 1
echo "# Em processamento"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /root/  
echo "57"; sleep 1
echo "# Em processamento"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/usr/share /usr/ 
echo "71"; sleep 1
echo "# Em processamento"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /etc/skel/
echo "86"; sleep 1
echo "# Em processamento"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Em processamento"; sleep 1
)|
zenity --progress --title="Configurando" --text="Seja paciente, vai demorar" --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuração cancelada "
fi
}

# ICONOS DE PHOTOSHOP Y ATAJOS DE GIMP

function _photogimp_pt()
{
(
echo "18"; sleep 1
echo "# Em processamento"; sleep 1
sudo chmod 777 -R /home/
echo "27"; sleep 1
echo "# Em processamento"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop/.config $usuarios; done
echo "36"; sleep 1
echo "# Em processamento"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /root/  
echo "45"; sleep 1
echo "# Em processamento"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/usr/share /usr/ 
echo "54"; sleep 1
echo "# Em processamento"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /etc/skel/
echo "63"; sleep 1
echo "# Em processamento"; sleep 1
sudo chmod 777 -R /home/
echo "72"; sleep 1
echo "# Em processamento"; sleep 1
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config $usuarios; done
echo "81"; sleep 1
echo "# Em processamento"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config /root/
echo "90"; sleep 1
echo "# Em processamento"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config /etc/skel/
echo "99"; sleep 1
echo "# Em processamento"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Em processamento"; sleep 1
)|
zenity --progress --title="Configurando" --text="Seja paciente, vai demorar " --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuração cancelada "
fi
}

# ICONOS DE GIMP Y ATAJOS DE PHOTOSHOP

function _gimpshop_pt()
{
(
echo "18"; sleep 1
echo "# Em processamento"; sleep 1
sudo chmod 777 -R /home/
echo "27"; sleep 1
echo "# Em processamento"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-full/.config $usuarios; done
echo "36"; sleep 1
echo "# Em processamento"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /root/  
echo "45"; sleep 1
echo "# Em processamento"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/usr/share /usr/ 
echo "54"; sleep 1
echo "# Em processamento"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /etc/skel/
echo "63"; sleep 1
echo "# Em processamento"; sleep 1
sudo chmod 777 -R /home/
echo "72"; sleep 1
echo "# Em processamento"; sleep 1
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config $usuarios; done
echo "81"; sleep 1
echo "# Em processamento"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config /root/
echo "90"; sleep 1
echo "# Em processamento"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config /etc/skel/
echo "99"; sleep 1
echo "# Em processamento"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Em processamento"; sleep 1
)|
zenity --progress --title="Configurando" --text="Ten paciencia, llevará tiempo" --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuração cancelada "
fi
}

# =========================================================================================
# FRANCÉS
# =========================================================================================

function _menuPrincipal_fr()
{
opPrincipal=$(
zenity --list --title "GIMP-QUIRINUX" --width="600" --height="300" \
--column="Options disponibles " \
"Utiliser des icônes et des raccourcis Photoshop " \
"Utiliser les icônes et les raccourcis GIMP " \
"Utiliser les icônes Photoshop et les raccourcis GIMP " \
"Utiliser les icônes GIMP et les raccourcis Photoshop  " \
"Sortir" \
)
if [[ $opPrincipal == "Utiliser des icônes et des raccourcis Photoshop " ]]; then
_photoshop_fr
_fin_fr
fi
if [[ $opPrincipal == "Utiliser les icônes et les raccourcis GIMP " ]]; then
_gimp_fr
_fin_fr
fi
if [[ $opPrincipal == "Utiliser les icônes Photoshop et les raccourcis GIMP " ]]; then
_photogimp_fr
_fin_fr
fi
if [[ $opPrincipal == "Utiliser les icônes GIMP et les raccourcis Photoshop  " ]]; then
_gimpshop_fr
_fin_fr
fi
if [[ $opPrincipal == "Salir" ]]; then
_salir
fi
}

# PHOTOSHOP ICONOS Y ATAJOS

function _photoshop_fr()
{
(
echo "14"; sleep 1
echo "# Traitement"; sleep 1
sudo chmod 777 -R /home/
echo "29"; sleep 1
echo "# Traitement"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop/.config $usuarios; done
echo "43"; sleep 1
echo "# Traitement"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /root/  
echo "57"; sleep 1
echo "# Traitement"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/usr/share /usr/ 
echo "71"; sleep 1
echo "# Traitement"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /etc/skel/
echo "86"; sleep 1
echo "# Traitement"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Traitement"; sleep 1
)|
zenity --progress --title="Configurer " --text="Soyez patient, cela prendra du temps " --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuration annulée "
fi
}

# GIMP ICONOS Y ATAJOS

function _gimp_fr()
{
(
echo "14"; sleep 1
echo "# Traitement"; sleep 1
sudo chmod 777 -R /home/
echo "29"; sleep 1
echo "# Traitement"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-full/.config $usuarios; done
echo "43"; sleep 1
echo "# Traitement"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /root/  
echo "57"; sleep 1
echo "# Traitement"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/usr/share /usr/ 
echo "71"; sleep 1
echo "# Traitement"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /etc/skel/
echo "86"; sleep 1
echo "# Traitement"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Traitement"; sleep 1
)|
zenity --progress --title="Configurer " --text="Soyez patient, cela prendra du temps " --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuration annulée "
fi
}

# ICONOS DE PHOTOSHOP Y ATAJOS DE GIMP

function _photogimp_fr()
{
(
echo "18"; sleep 1
echo "# Traitement"; sleep 1
sudo chmod 777 -R /home/
echo "27"; sleep 1
echo "# Traitement"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop/.config $usuarios; done
echo "36"; sleep 1
echo "# Traitement"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /root/  
echo "45"; sleep 1
echo "# Traitement"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/usr/share /usr/ 
echo "54"; sleep 1
echo "# Traitement"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /etc/skel/
echo "63"; sleep 1
echo "# Traitement"; sleep 1
sudo chmod 777 -R /home/
echo "72"; sleep 1
echo "# Traitement"; sleep 1
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config $usuarios; done
echo "81"; sleep 1
echo "# Traitement"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config /root/
echo "90"; sleep 1
echo "# Traitement"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config /etc/skel/
echo "99"; sleep 1
echo "# Traitement"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Traitement"; sleep 1
)|
zenity --progress --title="Configurer " --text="Soyez patient, cela prendra du temps " --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuration annulée "
fi
}

# ICONOS DE GIMP Y ATAJOS DE PHOTOSHOP

function _gimpshop_fr()
{
(
echo "18"; sleep 1
echo "# Traitement"; sleep 1
sudo chmod 777 -R /home/
echo "27"; sleep 1
echo "# Traitement"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-full/.config $usuarios; done
echo "36"; sleep 1
echo "# Traitement"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /root/  
echo "45"; sleep 1
echo "# Traitement"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/usr/share /usr/ 
echo "54"; sleep 1
echo "# Traitement"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /etc/skel/
echo "63"; sleep 1
echo "# Traitement"; sleep 1
sudo chmod 777 -R /home/
echo "72"; sleep 1
echo "# Traitement"; sleep 1
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config $usuarios; done
echo "81"; sleep 1
echo "# Traitement"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config /root/
echo "90"; sleep 1
echo "# Traitement"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config /etc/skel/
echo "99"; sleep 1
echo "# Traitement"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Traitement"; sleep 1
)|
zenity --progress --title="Configurer " --text="Soyez patient, cela prendra du temps " --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuration annulée "
fi
}


# =========================================================================================
# ITALIANO
# =========================================================================================

function _menuPrincipal_it ()
{
opPrincipal=$(
zenity --list --title "GIMP-QUIRINUX" --width="600" --height="300" \
--column="Opzioni disponibili" \
"Usa le icone e le scorciatoie di Photoshop" \
"Usa le icone e le scorciatoie di GIMP " \
"Usa le icone di Photoshop e le scorciatoie di GIMP " \
"Usa le icone di GIMP e le scorciatoie di Photoshop  " \
"Esci" \
)
if [[ $opPrincipal == "Usa le icone e le scorciatoie di Photoshop" ]]; then
_photoshop_it
_fin_it
fi
if [[ $opPrincipal == "Usa le icone e le scorciatoie di GIMP " ]]; then
_gimp_it
_fin_it
fi
if [[ $opPrincipal == "Usa le icone di Photoshop e le scorciatoie di GIMP " ]]; then
_photogimp_it
_fin_it
fi
if [[ $opPrincipal == "Usa le icone di GIMP e le scorciatoie di Photoshop  " ]]; then
_gimpshop_it
_fin_it
fi
if [[ $opPrincipal == "Salir" ]]; then
_salir
fi
}

# PHOTOSHOP ICONOS Y ATAJOS

function _photoshop_it ()
{
(
echo "14"; sleep 1
echo "# in lavorazione"; sleep 1
sudo chmod 777 -R /home/
echo "29"; sleep 1
echo "# in lavorazione"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop/.config $usuarios; done
echo "43"; sleep 1
echo "# in lavorazione"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /root/  
echo "57"; sleep 1
echo "# in lavorazione"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/usr/share /usr/ 
echo "71"; sleep 1
echo "# in lavorazione"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /etc/skel/
echo "86"; sleep 1
echo "# in lavorazione"; sleep 1
sudo chmod 755 -R /home/ 
echo "100"; sleep 1
echo "# in lavorazione"; sleep 1
)|
zenity --progress --title="Configurando" --text="Sii paziente, ci vorrà del tempo " --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configurazione annullata "
fi
}

# GIMP ICONOS Y ATAJOS

function _gimp_it ()
{
(
echo "14"; sleep 1
echo "# in lavorazione"; sleep 1
sudo chmod 777 -R /home/
echo "29"; sleep 1
echo "# in lavorazione"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-full/.config $usuarios; done
echo "43"; sleep 1
echo "# in lavorazione"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /root/  
echo "57"; sleep 1
echo "# in lavorazione"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/usr/share /usr/ 
echo "71"; sleep 1
echo "# in lavorazione"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /etc/skel/
echo "86"; sleep 1
echo "# in lavorazione"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# in lavorazione"; sleep 1
)|
zenity --progress --title="Configurando" --text="Sii paziente, ci vorrà del tempo " --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configurazione annullata "
fi
}

# ICONOS DE PHOTOSHOP Y ATAJOS DE GIMP

function _photogimp_it ()
{
(
echo "18"; sleep 1
echo "# in lavorazione"; sleep 1
sudo chmod 777 -R /home/
echo "27"; sleep 1
echo "# in lavorazione"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop/.config $usuarios; done
echo "36"; sleep 1
echo "# in lavorazione"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /root/  
echo "45"; sleep 1
echo "# in lavorazione"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/usr/share /usr/ 
echo "54"; sleep 1
echo "# in lavorazione"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /etc/skel/
echo "63"; sleep 1
echo "# in lavorazione"; sleep 1
sudo chmod 777 -R /home/
echo "72"; sleep 1
echo "# in lavorazione"; sleep 1
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config $usuarios; done
echo "81"; sleep 1
echo "# in lavorazione"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config /root/
echo "90"; sleep 1
echo "# in lavorazione"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config /etc/skel/
echo "99"; sleep 1
echo "# in lavorazione"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# in lavorazione"; sleep 1
)|
zenity --progress --title="Configurando" --text="Sii paziente, ci vorrà del tempo " --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configurazione annullata "
fi
}

# ICONOS DE GIMP Y ATAJOS DE PHOTOSHOP

function _gimpshop_it ()
{
(
echo "18"; sleep 1
echo "# in lavorazione"; sleep 1
sudo chmod 777 -R /home/
echo "27"; sleep 1
echo "# in lavorazione"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-full/.config $usuarios; done
echo "36"; sleep 1
echo "# in lavorazione"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /root/  
echo "45"; sleep 1
echo "# in lavorazione"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/usr/share /usr/ 
echo "54"; sleep 1
echo "# in lavorazione"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /etc/skel/
echo "63"; sleep 1
echo "# in lavorazione"; sleep 1
sudo chmod 777 -R /home/
echo "72"; sleep 1
echo "# in lavorazione"; sleep 1
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config $usuarios; done
echo "81"; sleep 1
echo "# in lavorazione"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config /root/
echo "90"; sleep 1
echo "# in lavorazione"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config /etc/skel/
echo "99"; sleep 1
echo "# in lavorazione"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# in lavorazione"; sleep 1
)|
zenity --progress --title="Configurando" --text="Sii paziente, ci vorrà del tempo " --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configurazione annullata "
fi
}
# =========================================================================================
# ALEMAN
# =========================================================================================

function _menuPrincipal_de()
{
opPrincipal=$(
zenity --list --title "GIMP-QUIRINUX" --width="600" --height="300" \
--column="Verfügbare Optionen " \
"Verwenden Sie Photoshop-Symbole und Verknüpfungen" \
"Verwenden Sie GIMP-Symbole und Verknüpfungen" \
"Verwenden Sie Photoshop-Symbole und GIMP-Verknüpfungen" \
"Verwenden Sie GIMP-Symbole und Photoshop-Verknüpfungen" \
"Aussteigen" \
)
if [[ $opPrincipal == "Verwenden Sie Photoshop-Symbole und Verknüpfungen " ]]; then
_photoshop_de
_fin_de
fi
if [[ $opPrincipal == "Verwenden Sie GIMP-Symbole und Verknüpfungen  " ]]; then
_gimp_de
_fin_de
fi
if [[ $opPrincipal == "Verwenden Sie Photoshop-Symbole und GIMP-Verknüpfungen  " ]]; then
_photogimp_de
_fin_de
fi
if [[ $opPrincipal == "Verwenden Sie GIMP-Symbole und Photoshop-Verknüpfungen   " ]]; then
_gimpshop_de
_fin_de
fi
if [[ $opPrincipal == "Salir" ]]; then
_salir
fi
}

# PHOTOSHOP ICONOS Y ATAJOS

function _photoshop_de()
{
(
echo "14"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo chmod 777 -R /home/
echo "29"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop/.config $usuarios; done
echo "43"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /root/  
echo "57"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/usr/share /usr/ 
echo "71"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /etc/skel/
echo "86"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Verarbeitung"; sleep 1
)|
zenity --progress --title="Konfigurieren" --text="Sei geduldig, es wird einige Zeit dauern " --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuración cancelada"
fi
}

# GIMP ICONOS Y ATAJOS

function _gimp_de()
{
(
echo "14"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo chmod 777 -R /home/
echo "29"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-full/.config $usuarios; done
echo "43"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /root/  
echo "57"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/usr/share /usr/ 
echo "71"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /etc/skel/
echo "86"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Verarbeitung"; sleep 1
)|
zenity --progress --title="Konfigurieren" --text="Sei geduldig, es wird einige Zeit dauern " --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuración cancelada"
fi
}

# ICONOS DE PHOTOSHOP Y ATAJOS DE GIMP

function _photogimp_de()
{
(
echo "18"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo chmod 777 -R /home/
echo "27"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop/.config $usuarios; done
echo "36"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /root/  
echo "45"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/usr/share /usr/ 
echo "54"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /etc/skel/
echo "63"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo chmod 777 -R /home/
echo "72"; sleep 1
echo "# Verarbeitung"; sleep 1
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config $usuarios; done
echo "81"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config /root/
echo "90"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config /etc/skel/
echo "99"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Verarbeitung"; sleep 1
)|
zenity --progress --title="Konfigurieren" --text="Sei geduldig, es wird einige Zeit dauern " --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuración cancelada"
fi
}

# ICONOS DE GIMP Y ATAJOS DE PHOTOSHOP

function _gimpshop_de()
{
(
echo "18"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo chmod 777 -R /home/
echo "27"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-full/.config $usuarios; done
echo "36"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /root/  
echo "45"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/usr/share /usr/ 
echo "54"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /etc/skel/
echo "63"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo chmod 777 -R /home/
echo "72"; sleep 1
echo "# Verarbeitung"; sleep 1
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config $usuarios; done
echo "81"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config /root/
echo "90"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config /etc/skel/
echo "99"; sleep 1
echo "# Verarbeitung"; sleep 1
sudo chmod 755 -R /home/  
echo "100"; sleep 1
echo "# Verarbeitung"; sleep 1
)|
zenity --progress --title="Konfigurieren" --text="Sei geduldig, es wird einige Zeit dauern " --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Configuración cancelada"
fi
}

# =========================================================================================
# RUSO
# =========================================================================================

function _menuPrincipal_ru()
{
opPrincipal=$(
zenity --list --title "GIMP-QUIRINUX" --width="600" --height="300" \
--column="Доступные Варианты  " \
"Используйте значки и ярлыки Photoshop" \
"Используйте значки и ярлыки GIMP" \
"Используйте значки Photoshop и ярлыки GIMP " \
"Используйте значки GIMP и ярлыки Photoshop " \
"Убирайся" \
)
if [[ $opPrincipal == "Используйте значки и ярлыки Photoshop" ]]; then
_photoshop_ru
_fin_ru
fi
if [[ $opPrincipal == "Используйте значки и ярлыки GIMP " ]]; then
_gimp_ru
_fin_ru
fi
if [[ $opPrincipal == "Используйте значки Photoshop и ярлыки GIMP " ]]; then
_photogimp_ru
_fin_ru
fi
if [[ $opPrincipal == "Используйте значки GIMP и ярлыки Photoshop " ]]; then
_gimpshop_ru
_fin_ru
fi
if [[ $opPrincipal == "Убирайся" ]]; then
_salir
fi
}

# PHOTOSHOP ICONOS Y ATAJOS

function _photoshop_ru()
{
(
echo "14"; sleep 1
echo "# Обработка"; sleep 1
sudo chmod 777 -R /home/
echo "29"; sleep 1
echo "# Обработка"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop/.config $usuarios; done
echo "43"; sleep 1
echo "# Обработка"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /root/  
echo "57"; sleep 1
echo "# Обработка"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/usr/share /usr/ 
echo "71"; sleep 1
echo "# Обработка"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /etc/skel/
echo "86"; sleep 1
echo "# Обработка"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Обработка"; sleep 1
)|
zenity --progress --title="Настройка" --text="Будьте терпеливы, это займет время  " --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Конфигурация отменена"
fi
}

# GIMP ICONOS Y ATAJOS

function _gimp_ru()
{
(
echo "14"; sleep 1
echo "# Обработка"; sleep 1
sudo chmod 777 -R /home/
echo "29"; sleep 1
echo "# Обработка"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-full/.config $usuarios; done
echo "43"; sleep 1
echo "# Обработка"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /root/  
echo "57"; sleep 1
echo "# Обработка"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/usr/share /usr/ 
echo "71"; sleep 1
echo "# Обработка"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /etc/skel/
echo "86"; sleep 1
echo "# Обработка"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Обработка"; sleep 1
)|
zenity --progress --title="Настройка" --text="Будьте терпеливы, это займет время  " --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Конфигурация отменена"
fi
}

# ICONOS DE PHOTOSHOP Y ATAJOS DE GIMP

function _photogimp_ru()
{
(
echo "18"; sleep 1
echo "# Обработка"; sleep 1
sudo chmod 777 -R /home/
echo "27"; sleep 1
echo "# Обработка"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop/.config $usuarios; done
echo "36"; sleep 1
echo "# Обработка"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /root/  
echo "45"; sleep 1
echo "# Обработка"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/usr/share /usr/ 
echo "54"; sleep 1
echo "# Обработка"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-shop/.config /etc/skel/
echo "63"; sleep 1
echo "# Обработка"; sleep 1
sudo chmod 777 -R /home/
echo "72"; sleep 1
echo "# Обработка"; sleep 1
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config $usuarios; done
echo "81"; sleep 1
echo "# Обработка"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config /root/
echo "90"; sleep 1
echo "# Обработка"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-rc/.config /etc/skel/
echo "99"; sleep 1
echo "# Обработка"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
echo "# Обработка"; sleep 1
)|
zenity --progress --title="Настройка" --text="Будьте терпеливы, это займет время  " --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Конфигурация отменена"
fi
}

# ICONOS DE GIMP Y ATAJOS DE PHOTOSHOP

function _gimpshop_ru()
{
(
echo "18"; sleep 1
echo "# Обработка"; sleep 1
sudo chmod 777 -R /home/
echo "27"; sleep 1
echo "# Обработка"; sleep 1
sudo rm -rf /home/*/.config/GIMP
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-original-full/.config $usuarios; done
echo "36"; sleep 1
echo "# Обработка"; sleep 1
sudo rm -rf /root/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /root/  
echo "45"; sleep 1
echo "# Обработка"; sleep 1
sudo rm -rf /usr/share/gimp
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/usr/share /usr/ 
echo "54"; sleep 1
echo "# Обработка"; sleep 1
sudo rm -rf /etc/skel/.config/GIMP
sudo yes | sudo cp -rf /opt/gimp-quirinux/gimp-original-full/.config /etc/skel/
echo "63"; sleep 1
echo "# Обработка"; sleep 1
sudo chmod 777 -R /home/
echo "72"; sleep 1
echo "# Обработка"; sleep 1
for usuarios in /home/*; do sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config $usuarios; done
echo "81"; sleep 1
echo "# Обработка"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config /root/
echo "90"; sleep 1
echo "# Обработка"; sleep 1
sudo yes | sudo cp -r /opt/gimp-quirinux/gimp-shop-rc/.config /etc/skel/
echo "99"; sleep 1
echo "# Обработка"; sleep 1
sudo chmod 755 -R /home/
echo "100"; sleep 1
)|
zenity --progress --title="Настройка" --text="Будьте терпеливы, это займет время " --percentage=0 --auto-close --auto-kill
if [ "$?" = -1 ] ; then
zenity --error --text="Конфигурация отменена"
fi
}

# =========================================================================================

_idioma
