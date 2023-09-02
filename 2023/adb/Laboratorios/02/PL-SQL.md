# PL/SQL

## Objetivos.

* Conocer la sintaxis de las funciones, procedimientos y triggers en Oracle.
* Utilizar la salida de pantalla con ayuda de DBMS output.
* Crear distintos tipos de sentencias como Estructuras de control básicas, Tfunciones, procedimientos almacenados, triggers y bloques anónimos.

## Herramientas

Para esta práctica se utilizarán las siguientes herramientas:

### Oracle DB 19C
![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2022/adb/markdowns/img/laboratorio01/Picture1.png?raw=true)

Oracle Database es un sistema de gestión de base de datos de tipo objeto-relacional (ORDBMS, por el acrónimo en inglés de Object-Relational Data Base Management System), desarrollado por Oracle  Corporation. Oracle Database 19c es la versión actual a largo plazo, que  además proporciona el nivel más alto de estabilidad de la versión y el  plazo más largo para asistencia y corrección de errores.


### SQL Developer
![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2022/adb/markdowns/img/laboratorio01/Picture2.png?raw=true)

Es una interfaz gráfica de usuario gratuita que permite a los usuarios y  administradores de bases de datos realizar sus tareas con menos clicks y  pulsaciones de teclas. SQL Developer es una herramienta de productividad cuyo objetivo principal es ayudar al usuario final a ahorrar tiempo y maximizar el retorno de la inversión en el paquete de tecnología de Oracle Database.


## Introducción.

En esta guía se dará a conocer que es el PL/SQL a profundidad, los  diversos tipos de datos que existen en el gestor, cómo podremos ser  capaces de mostrar salida de pantalla, a su vez conoceremos la sintaxis básica de las distintas sentencias que se pueden utilizar en Oracle.


## ¿Qué es PL/SQL?

### Definición 
PL/SQL es un lenguaje de procedimiento diseñado específicamente para abarcar sentencias SQL dentro de su sintaxis. El servidor de Oracle Database compila las unidades de programa PL/SQL y se almacenan dentro de la base de datos. Y en tiempo de ejecución, tanto PL/SQL como SQL se ejecutan dentro del mismo proceso de servidor, brindando una eficiencia óptima. PL/SQL hereda automáticamente la robustez, la seguridad y la portabilidad de Oracle Database.

### Tipos de datos
En Oracle existen varios tipos de datos, los tipos más comunes en un programa son: number, varchar2, date, Boolean.![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2022/adb/markdowns/img/laboratorio02/Picture1.png?raw=true)

### Bloques anónimos
Los bloques anónimos no tienen ningún nombre concreto, por eso de anónimos. Un bloque PL/SQL es definido por las palabras clave  DECLARE, BEGIN, EXCEPTION, y END, que dividen el bloque en tres secciones:
* Declare: Se definen los distintos objetos que se van a utilizar en el bloque (variables, constantes, cursores, etcétera). Esta sección es opcional.
* Begin: En esta zona estará el código PL/SQL que ejecutaremos.
* Exception: Es una sección opcional donde se tratan todos los errores que puedan surgir a la hora de ejecutar las sentencias SQL y PL/SQL de la sección de instrucciones.
* End: Indica el cierre del bloque anónimo.

Un bloque es en sí mismo una sentencia ejecutable, por lo que se pueden anidar los bloques unos dentro de otros.

Sintaxis:

```
DECLARE
    --Declaración de variable
BEGIN
    --Instrucciones PL/SQL
EXCEPTION
    --Tratamiento de excepciones
END;
```

### Declaración de variables y constantes
* Variables: Las variables son nombres para procesar los elementos de los datos.

Sintaxis:

```
Nombre_variable tipo [NOT NULL] [:= valor | DEFAULT valor]
```

* Constantes: Las constantes son como las variables, pero no puede modificarse su valor. 

Sintaxis:

```
Nombre_constante CONSTANT tipo_de_dato := valor
```

> El signo de “:=” y “DEFAULT” tienen la misma función. Si ponemos NOT
> NULL es obligatorio inicializar la variable.


### Guardar valores a partir de una consulta SELECT.
Al tener una tabla origen, podemos insertar los datos de dicha tabla a una nueva tabla destino. Se puede elegir ciertos campos de la tabla o bien se pueden insertar todos, teniendo en cuenta que ambas tienen que tener los mismos capos con su mismo tipo de dato. 

Sintaxis:

```
INSERT INTO nombre_tabla SELECT * FROM nombre_tabla_fuente
```

## Salida de pantalla DBMS Output.

Al haber iniciado SQL Developer daremos en la opción “Ver”:
![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2022/adb/markdowns/img/laboratorio02/Picture2.png?raw=true)

Posteriormente se seleccionará la opción de “salida DBMS”:
![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2022/adb/markdowns/img/laboratorio02/Picture3.png?raw=true)

Luego podremos imprimir valores en consola dándole en ejecutar.
![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2022/adb/markdowns/img/laboratorio02/Picture4.png?raw=true)

## Estructuras de control básicas.

### IF/THEN/ELSE

Esta sentencia es utilizada cuando se quiere elegir entre dos opciones basadas
en una condición.

Sintaxis:

```
IF condition THEN
    {-- Código a ejecutar si la condición es verdadera... }

ELSE
    {-- Códifo a ejecutar si la condición es false... }
END IF;
```

### LOOP/EXIT WHEN

La sentencia loop es la encargada de ejecutar una secuencia de sentencias múltiples veces, PL/SQL nos permite utilizar diversas formas de loops, tales como BASIC LOOP, WHILE LOOP, FOR LOOP y Cursor FOR LOOP. Para salir de un loop podemos utilizar EXIT o EXIT-WHEN.

Sintaxis:

```
    DECLARE
         --Declaración de variables
      BEGIN
        LOOP
          --Código que se desea ejecutar
          EXIT WHEN    --Condición de paro
    END LOOP;
```

### WHILE LOOP

Este tipo de loop permite que se ejecute una sentencia mientras la condición dentro de esta sea verdadera.

Sintaxis:

```
    WHILE condition LOOP
        --Código que se desea ejecutar
    END LOOP;
```

### WHILE LOOP

Los loops FOR iteran sobre un rango específico de números enteros. El número de iteraciones se conoce antes de ingresar al loop. El rango se evalúa cuando se ingresa por primera vez el bucle FOR y nunca se vuelve a evaluar.

```
    BEGIN
        FOR i IN 1 .. 3 LOOP
            -- Código que se desea iterar
            END LOOP;
        END
```

## Funciones.
Las funciones, como los procedimientos almacenados son bloques de código que permiten agrupar y organizar sentencias SQL que se ejecutan al invocar la función. Una función acepta parámetros, se invoca con su nombre y retorna un valor.

Sintaxis:
```
    CREATE (OR REPLACE) FUNTION nombre_funcion ( param1 tipo, param2 tipo, ... ) 
    RETURN tipo_dato IS
        -- Declaración de variables locales --
    BEGIN
        -- Instrucciones de ejecución
    [EXCEPTION]
        -- Instrucciones de excepción
    END;
```

## Procedimientos almacenados.

Los procedimientos PL/SQL son subprogramas compuestos por un conjunto de sentencias SQL. Un procedimiento está constituido por un conjunto de sentencias SQL y PL/SQL lógicamente agrupados para realizar una tarea específica. Los procedimientos almacenados constituyen un bloque de código PLSQL que ha sido compilado y almacenado en las tablas del sistema de la base de datos Oracle.

Sintaxis:
```
    CREATE (OR REPLACE) PROCEDURE nombre_procdimiento} (param1 [IN | OUT | IN OUT] tipo, ... )
    IS
        -- Declaración de variables locales --
    BEGIN
        -- Instrucciones de ejecución
    [EXCEPTION]
        -- Instrucciones de excepción
    END;
```

## Triggers.

Un Trigger se lleva a cabo cuando se produce algún suceso relacionado con la misma. Los triggers pueden utilizarse para completar la integridad referencial, también para imponer reglas de negocio complejas o para auditar cambios en los datos. El código contenido en un trigger denominado cuerpo del trigger, está formado por bloques PL/SQL.

Sintaxis:
```
    CREATE OR REPLACE TRIGGER nombre_trigger
        BEFORE DELETE OR INSERT OR UPDATE ON tabla
        FOR EACH ROW
    WHEN -- Condición
    DECLARE
        -- Declaración de variables-
    BEGIN
        -- Instrucciones
    END;
```

## Actividad práctica.

### Ejercicio 1.

Crear una función que reciba como parámetros dos números enteros, el primer parámetro “venta_objetivo” puede tomar el valor de 5, 10 o 15. El segundo “descuento”, se trata de un número flotante que puede tomar los valores 0.1, 0.15 o 0.20. La función deberá mostrar la siguiente información de las compras: el id de la factura, el id y nombre del cliente, el id y nombre del empleado, la fecha de la compra y el total de la compra. Además, se debe incluir un criterio extra: para cada compra que cumpla con la cantidad de videojuegos comprados en la “venta_objetivo” o más, se aplicará un valor establecido en el parámetro “descuento”. Por ejemplo, si los parámetros son (5, 0.1), a todas las facturas que tengan una compra de al menos 5 videojuegos se les aplicará un 10% de descuento. La columna muestra el descuento aplicable en cada factura. Resultado esperado con valores: ventas objetivo=10, descuento=0.1:

![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/adb/Laboratorios/02/src/Ejer1.jpg?raw=true)
### Ejercicio 2.

Crear una función que reciba como parámetro el id de un departamento, con esta información la función retornará una tabla con la información de todos los empleados que pertenecen a ese departamento. Crear una excepción personalizada para validar que el id se encuentre en el rango de departamentos disponibles, la validación de los departamentos debe realizarse de forma dinámica, para que la función pueda adaptarse ante una posible expansión de los departamentos. No se requiere que la excepción se administre. Resultado esperado con un id de departamento válido (para el caso, idempleado = 1):
![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/adb/Laboratorios/02/src/Ejer2.jpg?raw=true)
Resultado esperado con un id de departamento inválido (para el caso, idempleado = 4):
![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/adb/Laboratorios/02/src/Ejer2.1.jpg?raw=true)

### Ejercicio 3.

Crear un procedimiento almacenado que tenga un parámetro de entrada en donde se recibirá el código de una compañía, el procedimiento imprimirá en consola toda la información de la compañía, incluyendo la información de todos sus videojuegos correspondientes. El formato que se ha establecido para poder imprimir la información es JSON. La siguiente figura muestra el resultado al ejecutar el procedimiento almacenado tomando al autor con id 3 como ejemplo:
![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/adb/Laboratorios/02/src/Ejer3.jpg?raw=true)

Si se desea verificar el formato del resultado de una forma más
amigable, es posible utilizar herramientas online como: [JSON formatter](https://jsonformatter.curiousconcept.com)

![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/adb/Laboratorios/02/src/Ejer3.1.jpg?raw=true)

### Diagrama relacional para la actividad.

![enter image description here](https://github.com/vareladev/vareladev.github.io/blob/main/2023/adb/Laboratorios/01/src/diagrama.jpg?raw=true)

## Sobre los autores de esta guía práctica

**Autores:**  

  **Versión 1:**
Fátima Adriana Renderos (00064018@uca.edu.sv), Madeline Abigail Clará (00146318@uca.edu.sv), Erick Varela Guzmán (evarela@uca.edu.sv)

  **Versión 2:** 
Brian Darwin Carranza Campos (00136020@uca.edu.sv), Alejandro Ernesto Cerón Lemus (00040116@uca.edu.sv)

  **Versión 3:** 
Brian Darwin Carranza Campos (00136020@uca.edu.sv), Alejandro Ernesto Cerón Lemus (00040116@uca.edu.sv)

  **Responsables:**
Erick Varela Guzmán (evarela@uca.edu.sv), 
Correspondencia: evarela@uca.edu.sv

Departamento de Electrónica e Informática, Universidad Centroamericana José Simeón Cañas, La Libertad, El Salvador.

Versión de este documento: Versión 3, 2023.

![test](./img/general/license.jpg) This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).
