# Laboratorio No. 2 – Administración de Usuarios

#### Instrucciones:
Siga paso a paso los comandos en este documento y grabe un video de su servidor mientras realiza el laboratorio, suba su video a Youtube y entregue el link vía GES.

### Creación de usuarios
  1. Corra el comando ```sudo useradd -d /home/newuser -m newuser```
       a. Corra el comando ```ls -l /home/```
       b. ¿Puede ver el directorio para su nuevo usuario?
  2. Corra el comando ```sudo useradd -d /home/newuser2 newuser2```
       a. Corra el comando ```ls -l /home/```
       b. ¿Logra ver el directorio para el nuevo usuario?

      *El banderín ```-m``` le pide al sistema que el directorio sea creado en el proceso de creación del usuario, de otra manera tendríamos que crearlo nosotros.*

      
  3. Revise el documento /etc/passwd y encuentre el usuario recién creado. Utilice el comando ```less``` o ```more``` o algún editor.
      a. ¿Qué ID tiene?
      b. ¿Qué información tiene?
  4. Corra el comando ```sudo passwd newuser``` para configurar el password del nuevo usuario
  5. Corra el comando ```sudo adduser``` usuario y complete la información solicitada.
  6. Corra de nuevo el comando ```ls -l /home/```
  7. Revise el documento /etc/passwd y encuentre el usuario recién creado.
      a. ¿Qué ID tiene?
      b. ¿Qué información tiene?
      c. ¿Qué diferencia tienen los resultados de los usuarios creados por los distintos comandos (useradd y adduser) para agregar usuarios? 
  8. Corra el comando sudo userdel usuario y corra ```ls -l /home/```

Ahora haremos backup de la información del usuario eliminado.
  9. Cree una nueva carpeta llamada bckup en su usuario con el comando ```mkdir bckup```
      a. Mueva los archivos del usuario eliminado a la carpeta bckup con el comado 
      ```sudo mv /home/usuarioeliminado /home/usuariopropio/bckup``` 
      e ingrese a la carpeta bckup.
  10. ¿Logra ver los archivos del usuario eliminado?

    Para eliminar un usuario sin conservar los archivos puede utilizar el comando ```sudo userdel -r usuario```. También puede utilizar el comando ```sudo rm -r /home/usuario```

    
### Passwords
  1. Corra el comando ```sudo passwd -S user``` para ver información acerca del password de su usuario
  2. Corra el comando ```cat /etc/passwd``` y ubique la línea donde se encuentra su nombre de usuario.
  3. Corra el comando ```cat /etc/shadow```.
  4. Corra el comando ```sudo cat /etc/shadow```.
      a. ¿Por qué cree que no le dejó entrar hasta que incluyó “sudo”?
      b. Ubique la línea en donde se encuentra su nombre de usuario.


### Configuraciones a nuevos usuarios
  1. Corra el comando ```ls -la /etc/skel``` y vea los archivos que se encuentran en el mismo.
  2. Cree en el home un nuevo archivo que se llame “bienvenidos”
  3. Mueva el archivo a /etc/skel con el comando
     ```sudo mv /home/user/bienvenidos /etc/skel```
  5. Ingrese nuevamente a /etc/skel y corra ```ls -la```. ¿puede ver el archivo “bienvenidos”?
  6. Cree un nuevo usuario con el comando ```adduser```
  7. Inicie otra sesión en putty e ingrese con el nuevo usuario creado
  8. Corra el comando ```ls``` ¿puede ver el archivo que creó?

### Cambiando usuarios
  1. Cambie de usuario con el comando ```su newuser```
  2. Ingrese el password del usuario
  3. Corra el comando ```ls```, ¿Puede ver el archivo de bienvenida de la sección anterior?
  4. Corra el comando ```sudo su newuser```
  5. Si le pide un password, ingrese el password de su usuario
     a. ¿Pudo ingresar al usuario creado aún sin saber la clave?


## Entregables
### FASE 1 - Correr script de evaluación
Debe mostrar en vivo el funcionamiento de este laboratorio. Debe descargar el script de evaluación (lab1-script-evaluacion.sh)y correrlo en el momento que el Asistente de Laboratorio se lo pida. En base a los resultados obtenidos, se colocará la nota de laboratorio.

### FASE 2 - Documentación del laboratorio
Debe documentar los resultados de este laboratorio. Este paso lo puedo realizar en un documento tipo bitácora (github o herramienta similar) o por medio de un video subido a Youtube. 
En el GES debe enviar el documento PDF o el enlace al video en Youtube. Asegurarse que el video de Youtube es de acceso público o oculto. De no estar visible, no se evaluará.
