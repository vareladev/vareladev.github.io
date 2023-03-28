#  Modelo Entidad - Relación

>*Laboratorio #1*
 >- *Bases de datos*
 >- *Modelo Entidad - Relación*

## 1. Bases de datos

Es una colección de datos relacionados. Estos se almacenan con el objetivo que diferentes programas y/o usuarios puedan acceder a ellos posteriormente.

Una base de datos tiene las siguientes propiedades implícitas:

* Representa algún aspecto del mundo real, en ocasiones llamada *minimundo o universo de discurso (UoD)*. Las modificaciones del *minimundo* se reflejan en la base de datos.

* Es un conjunto de datos lógicamente coherente, con cierto significado. Una colección aleatoria de datos no puede considerarse propiamente como una base de datos.

* Se diseña, construye y alimenta con datos para un propósito específico. Está dirigida a un grupo de usuarios y tienen ciertas aplicaciones que interesan a los usuarios.

Suelen representarse como contenedores cilíndricos.

![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/bd/laboratorios/01/src/img1.PNG?raw=true)

Ejemplo: Base de datos de expedientes de alumnos de la UCA
 **¿Puede ocuparse un archivo de texto como base de datos?**

## 2. DBMS

DBMS significa Database Management System, o Sistema de Gestión de Bases de Datos (SGBD) en español, y es un software que facilita el proceso de *definición, construcción, manipulación* y *el compartir* bases de datos entre varios usuarios y/o aplicaciones.

* **Definir** una base de datos implica especificar los tipos de datos, estructuras y restricciones de los datos a almacenar.

* **Construir** es el proceso que consiste en la carga de los datos en algún medio de almacenamiento que es controlado por el DBMS.

* **Manipulación** de la base de datos incluye funciones como recuperar datos específicos a través de consultas, actualizar el valor de la información y generar reportes de los datos.

* **Compartir** la base de datos permite múltiples usuarios y programas acceder a ella de manera simultánea.

![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/bd/laboratorios/01/src/img2.png?raw=true)

Otras funciones importantes de un DBMS *son la protección y el mantenimiento* de la base. **Protegerla** contra un mal funcionamiento de hardware o software, y contra acceso malicioso o no autorizado. En cuanto al **mantenimiento**, es una característica que le permite al sistema evolucionar a medida cambian los requerimientos.

Algunos de los DBMS más populares en la industria son:

Oracle RDBMS, Microsoft SQL Server,PostgreSQL, MySQL, MongoDB, etc.

Ahora la pregunta es *¿Cómo diseño mi base de datos?*

## 3. Modelo Entidad-Relación

El modelado conceptual es una fase muy importante en el diseño de una base de datos exitosa. Esto se hace por medio del **modelo Entidad-Relación**, el cuál describe los datos como *entidades, relaciones y atributos*. El principal objetivo es ilustrar como las entidades se relacionan entre sí en un sistema.

![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/bd/laboratorios/01/src/img3.PNG?raw=true)

###  Elementos del Modelo Entidad-Relación

**Entidad:** representa una *cosa u objeto* del mundo real con existencia independiente. Una entidad puede ser un objeto con existencia física, conocida como **entidad concreta** (por ejemplo: una persona, un carro, una casa, etc.) o un objeto con existencia conceptual, conocida como **entidad abstracta** (por ejemplo: un puesto de trabajo, una asignatura, un préstamo, etc.).

**Atributos:** son las características que definen o identifican a una entidad. Estas pueden ser muchas pero el diseñador solo utiliza o implementa las que considere **más relevantes.** Los tipos de atributos son: simples, compuestos, monovaluados, multivaluados, derivados y nulos.

**Relación:** describe cierta dependencia entre entidades o permite la asociación de las mismas. Esta también puede tener atributos cuando la cardinalidad es M:N (esto se explicará a detalle en otra sesión).

###  Simbología de elementos.
![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/bd/laboratorios/01/src/img4.PNG?raw=true)

###  El concepto de minimundo

Al diseñar una base de datos para un escenario del mundo real, puede ser complicado identificar como *se relacionan las entidades*, es por eso que como diseñadores de BBDD, se debe definir ciertas **reglas** y **restricciones**, y eso sería definir el minimundo. Por ejemplo, para el escenario de “préstamo y devolución de libros de una biblioteca”, se pueden restringir o permitir algunas cosas como: “Un usuario solo puede prestar máximo 5 libros”, “Todo libro tiene que estar en un estante, pero puede haber estantes vacíos”, “Puede haber usuarios registrados que nunca hayan prestado un libro”, etc.

###  Diagramas ER

Se utilizará una herramienta llamada Draw.io, el cual es un sitio web que cuenta con los elementos necesarios para facilitar la realización de diversos tipos de diagrama, incluyendo el Entidad-Relación, y además es gratuito. Draw.io.


> El modelo ER es la base para el diseño exitoso de la base de datos,
> pero más adelante se mostrará otro modelo y técnicas para mejorar el diseño de la base de datos.


###  Ejemplo práctico – Inscripción de materias

Para la inscripción de materias la Universidad (UCA) necesita llevar un registro de la información de cada estudiante, como nombre, fecha de nacimiento, id estudiantil, dirección y teléfonos.

Se llevará el registro del docente que impartirá cada materia, y se necesitan tomar los siguientes datos: nombre, fecha de nacimiento, dirección, teléfono y carne de identidad única. Para cada materia se llevarán registros del nombre y el código.

Es indispensable llevar un registro del año y el ciclo en que se impartirá dicha materia.

### TIPS:

1. Cada entidad debe poseer un **atributo clave** que la diferencie del resto de entidades del mismo tipo.

2. Debemos incluir tantos atributos como sea necesario para cumplir los **requerimientos del sistema**, siempre y cuando aporten un valor a la base de datos.

3. Todos los elementos de un diagrama ER se unen con otros por medio de **líneas rectas**. Ya sean atributos a entidades, atributos compuestos a sus componentes o entidades a relaciones.

## 4. Restricciones Estructurales

###  Atributos clave

En el diagrama anterior se puede observar que hay ciertos atributos subrayados, esto significa que es un ***atributo clave***. Al pensar, por ejemplo, en la entidad ALUMNO (Carné, Nombres, Apellidos, Edad, Carrera), su representación en el modelo ER sería así:

![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/bd/laboratorios/01/src/img5.png?raw=true)

Y visto en forma de tabla sería así

![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/bd/laboratorios/01/src/img6.PNG?raw=true)

Seguramente notó que los campos en rojo son datos repetidos, pero, si observan, ningún valor del atributo *Carné* se repite, y tampoco debería hacerlo, pues es el ***atributo clave*** o, dicho de otra manera, el **identificador único** para cada alumno. Por ejemplo, para las personas salvadoreñas mayores de edad, el atributo clave sería el DUI.

> **NOTA**: Hay entidades que pueden tener más de un atributo que pueden funcionar como atributo clave.

Las restricciones estructurales son **herramientas conceptuales** que ayudan a responder preguntas que pueden surgir durante el diseño de la base de datos. Por ejemplo, al relacionar las entidades *ALUMNO y MATERIA*, uno se podría preguntar: ¿Un alumno puede cursar muchas materias?, ¿Una materia puede ser cursada por muchos alumnos?, ¿Puede un alumno no cursar ninguna materia y seguir siendo alumno?, etc.

## 5. Restricciones de cardinalidad

Se refiere al número máximo de ocurrencias que una entidad puede tener con otra entidad con la cual esté relacionada. Los posibles tipos de cardinalidad son **1:1, 1:N, N:1, M:N** (también conocido como **N:N**).

### Uno a Uno (1:1)

En este ejemplo particular, *DIRIGE* representa la relación de las entidades *EMPLEADO y DEPARTAMENTO*, indicando que, en algún punto, un empleado puede administrar máximo un departamento, y que un departamento solo puede tener un administrador. También cabe destacar, que no necesariamente todos los empleados serán administradores de algún departamento.

![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/bd/laboratorios/01/src/img7.PNG?raw=true)

### Uno a muchos (1:N)

En este ejemplo, un departamento puede gestionar varios proyectos, pero cada proyecto solo puede ser gestionado por un departamento.

![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/bd/laboratorios/01/src/img8.PNG?raw=true)

### Muchos a uno (N:1)

Aquí se indica que un empleado puede trabajar únicamente para un departamento, pero un departamento puede tener varios empleados. Si observamos, este en realidad es muy similar al anterior, pero en el sentido contrario.

![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/bd/laboratorios/01/src/img9.PNG?raw=true)

### Muchos a muchos (M:N)

Aquí se indica que un empleado puede trabajar en muchos proyectos y que en un proyecto pueden trabajar varios empleados.

![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/bd/laboratorios/01/src/img10.PNG?raw=true)

## 6. Restricciones de participación

Específica si la existencia de una entidad depende de un tipo de relación con otra entidad. Se denomina ***participación total*** cuando cada ocurrencia de la entidad A participa, al menos, en una relación de R con una ocurrencia de la entidad B. Por el contrario, cuando existe, al menos, una ocurrencia de A que **NO** PARTICIPA en alguna relación R con una ocurrencia de la entidad B, se le conoce como ***participación parcial***. 

Observe el siguiente ejemplo para comprender mejor:

### Ejemplo: 
En la universidad todos los estudiantes activos reciben materias de sus carreras. Al haber cursado la materia y al haber cumplido ciertos requisitos, estos pueden impartir dicha materia como instructores.

![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/bd/laboratorios/01/src/img11.PNG?raw=true)

### Participación total: 
Toda ocurrencia de un estudiante activo debe participar en el tipo de relación RECIBE con alguna materia, ya que no tiene sentido que exista un estudiante que NO reciba una materia.

### Participación parcial:
 con respecto a la relación IMPARTE, no todo estudiante imparte una materia, o, dicho de otra forma, existe al menos un estudiante que NO imparta una materia, y por tanto se considera como participación parcial.

## 7. Mínimos y máximos

En una relación entre dos entidades los mínimos representan la participación (total o parcial) y los máximos la cardinalidad (1:1, 1:N, N:1, N:N).

Los mínimos pueden tomar los valores cero o uno (0 o 1), mientras que los máximos pueden ser uno o muchos (1 o N). Por último, la cardinalidad se obtiene *cruzando* los valores máximos.

![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/bd/laboratorios/01/src/img12.PNG?raw=true)

¿Cómo encontrar estos valores? Existen dos preguntas que facilitan esta tarea.

### MIN (participación)

¿**Tiene** A que estar relacionado con algún B? (nótese que *tiene* demuestra *obligación*)

* **Sí: min = 1** | Participación total ![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/bd/laboratorios/01/src/img13.PNG?raw=true)

* **No: min = 0 |** Participación parcial ![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/bd/laboratorios/01/src/img14.PNG?raw=true)

### MAX (cardinalidad)

¿**Puede** A estar relacionado con más de un B? (nótese que *puede* demuestra *elección*)

* **Sí: max = N**

* **No: max = 1**

## 8. Entidades fuertes y débiles

En una relación entre dos entidades (A y B) decimos que la entidad B es débil con respecto a la entidad A, si la entidad B depende de que exista A primero. Las entidades débiles se representan con un doble rectángulo.

Ocupe el siguiente ejemplo para asimilarlo mejor: “Un cliente solicita un préstamo”. Para solicitar el préstamo, el cliente tuvo que existe primero. Un préstamo no se puede asignar al vacío, es por eso que el préstamo existe cuando el cliente lo solicita.

![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/bd/laboratorios/01/src/img15.PNG?raw=true)

También existe una pregunta que nos facilita identificar entidades débiles o fuertes. Si se coloca sobre la entidad A y se pregunta **¿Necesita existir B para que exista A?**

* **SÍ**: A es débil con respecto a B

* **NO:** A es fuerte con respecto a B

Ahora se coloca sobre la entidad B y se hace la misma pregunta.

* **SÍ:** B es débil con respecto a A.

* **NO:** B es fuerte con respecto a A.

## 9. Entidad-Relación Extendido

También conocido como Entidad-Relación Ajustado, surge, por supuesto, del modelo Entidad-Relación presentado anteriormente, con la diferencia que, para este, se debe definir las

**restricciones estructurales e identificar entidades fuertes y débiles.**

Así se vería el ER extendido del ejemplo de la biblioteca:

![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/bd/laboratorios/01/src/img16.png?raw=true)

Analizando algunas cosas que el diagrama anterior representa:

* Si un escritor está en mi BD significa que tengo AL MENOS UN libro de ese escritor. No tendría lógica tener registrado un escritor del cual no tengo ningún libro.

* En nuestra BD pueden existir usuarios que NUNCA hayan prestado un libro.

* Igualmente pueden existir libros que NUNCA hayan sido prestados por alguien.

## 10. Ejercicio práctico


Realice el desarrollo de la solución tal como lo hicimos en el ejemplo (paso a paso). La descripción del escenario es el siguiente: suponga que una importante compañía de cruceros de lujo le pide realizar una base de datos para registrar la información de sus procesos más importantes.

Cada viaje que la compañía realiza está caracterizado por una fecha, el nombre del capitán que dirigirá el viaje, la duración en horas y los puertos marítimos de origen y destino, de cada puerto marítimo es importante almacenar el nombre, la ubicación GPS, la ciudad y el país donde está ubicado. Es importante notar que cada viaje tiene una relación con dos puertos marítimos, uno para embarcar y otro para desembarcar. Debido a que este proyecto se encuentra en estado de prueba, no será necesario considerar los viajes que utilicen varios puntos de embarque.

Los viajes se realizan en un barco crucero de lujo, en donde las personas pueden disfrutar de las mejores comodidades. Los barcos tienen una matrícula que los identifica, el fabricante, un modelo e información de su capacidad (número máximo de pasajeros).

Los pasajeros para poder realizar una reserva de viaje, deben registrar su nombre, pasaporte, fecha de nacimiento, teléfono, un correo electrónico y país de origen (es decir, su nacionalidad). Una vez registrados estos datos, la reserva se podrá realizar, en dichas reservas se almacena el precio del servicio, la fecha en que se realiza la transacción y tipo de cabina (estándar, exterior, balcón, premium).

Opcionalmente, un cliente puede incluir servicios extra en la reserva, por ejemplo:
transporte de mascotas, caja fuerte, maletas extra, entre otros. De cada servicio extra, interesa almacenar el nombre del servicio y su precio.

![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/bd/laboratorios/01/src/img17.jpg?raw=true)
### Métrica de evaluación

![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/bd/laboratorios/01/src/img19.jpg?raw=true)

## 11. Sobre los autores de esta guía práctica

Autores:

**Versión 1 (2020):**

Emerson Gamaliel Nolasco (00215316@uca.edu.sv), Kevin Enmanuel Velásquez (00018616@uca.edu.sv)

**Versión 2 (2021):**

Fátima Adriana Renderos (00064018@uca.edu.sv)

**Versión 3 (2022):**

Brian Darwin Carranza Campos (00136020@uca.edu.sv), Alexei Eduardo Quintana Zelidon (00126118@uca.edu.sv)

**Versión 4 (2023):**

Alejandro Ernesto Cerón Lemus (00040116@uca.edu.sv), Brian Darwin Carranza Campos (00136020@uca.edu.sv)

**Responsables:**

Erick Varela Guzmán (evarela@uca.edu.sv)

Correspondencia: evarela@uca.edu.sv

Departamento de Electrónica e Informática, Universidad Centroamericana José Simeón Cañas, La Libertad, El Salvador.

Versión de este documento: Versión 4, 2023.

![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/bd/laboratorios/01/src/img18.jpg?raw=true) This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).
