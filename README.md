# Proyecto de Aplicaciones Web 2020B
## Sistema de tutorías


### Descripción de la actividad
La Universidad X requiere un sistema Web que permita a estudiantes solicitar tutorías académicas a los docentes. El sistema debe cumplir con tres módulos:
### Módulo 1: Estudiante
-	El estudiante debe registrarse antes de ingresar al sistema. El estudiante registrado debe poder acceder al sistema a través de su número de cédula y la contraseña configurada en el registro (evitar el mecanismo de envío de mails de confirmación).
-	Dentro del sistema, el estudiante debe poder solicitar una tutoría. Para solicitar la tutoría el estudiante debe indicar la fecha en la que desea la tutoría y seleccionar el docente con el que desea tener la tutoría. Se desplegará los horarios disponibles del docente. El estudiante podrá seleccionar cualquiera de los espacios disponibles para tutoría.
-	Por seguridad, es importante que el estudiante pueda cambiar de clave. Para esto, el estudiante debe ingresar la clave anterior y la nueva clave. Si la clave anterior no coincide con la clave guardada actualmente, el sistema no debe realizar la actualización de la clave.

### Módulo 2: Docente

-	El docente debe ingresar al sistema con su número de cédula y clave que el administrador del sistema le ha otorgado previamente (fuera del sistema).
-	El docente debe poder cambiar su clave una vez que ingrese al sistema.
-	El docente podrá actualizar su información personal (nombre, apellido, departamento al que pertenece, días entre semana laboral y las franjas de horas disponibles para recibir tutorías. La franja horaria debe ser de 15 minutos cada una. Por ejemplo, un docente puede registrar que su horario de tutorías es:

| Día:   | Horario de Tutoría disponible             |
|--------|-------------------------------------------|
| Lunes  | 11:00                                     |
|        | 11:15                                     |
| Martes | 11:00 (se supone que es de 11:00 a 11:15) |
|        | 11:45                                     |

-	El docente deberá poder listar las tutorías registradas a él. Se podrá visualizar la cédula y nombre del estudiante solicitante, el día y la hora de la tutoría.

### Módulo 3: Administrador
-	El administrador debe acceder al sistema con su número de cédula y la clave admin2021.
-	El administrador debe poder gestionar (listar para visualizar, crear, eliminar y actualizar):
    - Estudiantes
    - Docentes
    - Departamentos a los que pertenecen los docentes
    - Usuarios del sistema
  
  ### Requerimientos Comunes
  -	El usuario (estudiante, docente, administrador) debe tener, en la pantalla login del sistema, la opción “Recordar mis datos” para que la próxima vez que el usuario ingrese, el sistema presente automáticamente los datos del usuario.
  
  ## Agradecimientos
  
  
  Al Ing. Carlos Íñiguez, PhD, por su paciencia y su dedicación a la docencia. Muchas gracias profe :100: !!
