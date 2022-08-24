author: Brian Carranza
summary: Guia de instalacion de Sql Server
id: install-sql
tags: guide, install
categories: Instalacion
environments: Web
status: Published
feedback link: https://github.com/01-2022-Bases-de-datos-UCA/Codelabs/issues

# Instalación de SQL

## Requerimientos para instalar SQL developer

![test](./img/InstallSQL/sql.jpg)

* Windows 10 TH1 1507 o una versión superior / Windows Server 2016 o una versión posterior
* .NET Framework
* Mínimo: 1GB de RAM / Se recomienda: 4GB de RAM
* 6GB de espacio disponible en el disco
* Procesador mínimo: x64: 1,4 GHz / Procesador recomendado: x64 2.0 GHZ o superior

<aside class="positive">
Nota: Si su equipo no pose los componentes mínimos se le recomienda instalar la versión de <b>SQL Express</b>. Que es muy similar a la instalación de SQL Developer que se desarrolla en esta guía.
</aside>

## Descargar SQL Developer

En el siguiente enlace puede enontrar el sitio web para descargar SQL server:
[Link de descarga de SQL Server](https://www.microsoft.com/es-es/sql-server/sql-server-downloads).
En nuestro caso vamos a seleccionar la versión de **Desarrolador**, que es la que sale en la imagen abajo a la izquierda.(Haga clic en **Descargar ahora**).

![test](./img/InstallSQL/paso1.PNG)

## Instalación de SQL Developer

Ejecute el instalador:

![test](./img/InstallSQL/paso2.PNG)

Esto ejecutará la interfaz de instalación, en esta seleccione el tipo de instalación **Básica**:

![test](./img/InstallSQL/paso3.PNG)

Esto mostrara una ventana de idioma de insterfaz de usuario, selecione **Sí** (Esto solo sucede si no posee inglés):

![test](./img/InstallSQL/paso4.PNG)

A continuación leea los terminos y condiciones, luego presione el botón **Aceptar**.

![test](./img/InstallSQL/paso5.PNG)

Se recomienda dejar la carpeta por defecto para la instalción y luego presionar **Instalar**. 

![test](./img/InstallSQL/paso6.PNG)

Espere a que se instalen todos los archivos...

![test](./img/InstallSQL/paso7.PNG)

Se mostrará la pagina donde podrá confirmar que todo se instalo correctamente.
Aquí seleccione la opción **Instalar SSMS**, la cual nos dirigirá al sitio web para descargar SSMS.

![test](./img/InstallSQL/paso8.PNG)

## Descarga de SMSS

### SQL Server Management Studio (SSMS)

El siguiente enlace nos muestra donde podemos descargar SSMS (el cual es el mismo al que nos dirige el paso anterior):
[Link de SSMS](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver15#download-ssms).
Aquí nos vamos a Downland SSMS y buscamos donde dice **Free Downland for SQL Server Management Studio (SSMS)**.

![test](./img/InstallSQL/paso9.PNG)

## Instalación de SSMS

Ejecute el instalador:

![test](./img/InstallSQL/paso10.PNG)

Dejar la carpeta de instalación por defecto y presionar **Install**.

![test](./img/InstallSQL/paso11.PNG)

Espere a que se instalen todos los archivos...

![test](./img/InstallSQL/paso12.PNG)

Al finalizar le mostrará que todo se instalo correctamente, solamente presione **Close** y el programa estará listo para usar.

![test](./img/InstallSQL/paso13.PNG)

## Abrir SSMS

Ya esta todo listo para usar, por lo que podemos buscar la aplicación escribiendo **SQL**.

![test](./img/InstallSQL/paso14.jpeg)

Se abrirá SSMS, selecione **Connet** y nuestro programa estará listo para que comencemos aprender.

![test](./img/InstallSQL/paso15.PNG)


## Autores

Autores:  
  **Versión 1:**
Brian Darwin Carranza Campos (00136020@uca.edu.sv)  
  **Responsables:**
Erick Varela Guzmán (evarela@uca.edu.sv), Douglas Hernández Torres (dohernandez@uca.edu.sv), 
Correspondencia: evarela@uca.edu.sv

Departamento de Electrónica e Informática, Universidad Centroamericana José Simeón Cañas, La Libertad, El Salvador.

Versión de este documento: Versión 1, 2022.

![test](./img/InstallSQL/license.jpg) This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).