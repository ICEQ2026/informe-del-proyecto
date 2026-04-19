# Chapter III: Requirements Specification

## 3.1 User Stories
<table style="width: 100%; table-layout: fixed;">
  <colgroup>
    <col style="width: 14%;">
    <col style="width: 24%;">
    <col style="width: 62%;">
  </colgroup>
  <tr>
    <td><strong>Código</strong></td>
    <td><strong>Título</strong></td>
    <td><strong>Epic</strong></td>
  </tr>
  <tr>
    <td>EP001</td>
    <td>Gestión de usuarios y acceso</td>
    <td>Como usuario o administrador de la plataforma, <strong>Quiero</strong> registrar cuentas, autenticar accesos y gestionar permisos dentro del sistema, <strong>Para</strong> asegurar que cada persona utilice ColdTrace de acuerdo con su rol y pueda ingresar de forma segura a la operación.</td>
  </tr>
  <tr>
    <td>EP002</td>
    <td>Gestión de equipos y sensores</td>
    <td>Como responsable de la operación, <strong>Quiero</strong> registrar cámaras frigoríficas, unidades de transporte, sensores y gateways dentro del sistema, <strong>Para</strong> mantener organizada la infraestructura de monitoreo y asociar correctamente cada activo con su ubicación y estado.</td>
  </tr>
  <tr>
    <td>EP003</td>
    <td>Monitoreo de temperatura y humedad</td>
    <td>Como usuario de la plataforma, <strong>Quiero</strong> visualizar en tiempo real la temperatura, humedad y estado de mis equipos o ambientes monitoreados, <strong>Para</strong> detectar variaciones oportunamente y reducir el riesgo de pérdida de productos perecibles.</td>
  </tr>
  <tr>
    <td>EP004</td>
    <td>Alertas e incidencias</td>
    <td>Como encargado de negocio o responsable de operaciones, <strong>Quiero</strong> recibir alertas automáticas y registrar incidencias cuando ocurra una desviación térmica o un evento crítico, <strong>Para</strong> actuar rápidamente y minimizar el impacto operativo o económico.</td>
  </tr>
  <tr>
    <td>EP005</td>
    <td>Reportes, historial de eventos y cumplimiento</td>
    <td>Como responsable de operaciones y control de calidad, <strong>Quiero</strong> consultar historiales de lecturas, alertas e incidencias, exportar reportes y reunir evidencia operativa, <strong>Para</strong> facilitar auditorías, demostrar cumplimiento y mejorar la toma de decisiones basadas en datos.</td>
  </tr>
  <tr>
    <td>EP006</td>
    <td>Configuración operativa y mantenimiento</td>
    <td>Como usuario administrativo de la plataforma, <strong>Quiero</strong> configurar rangos de seguridad, gestionar parámetros operativos y dar seguimiento a necesidades de mantenimiento, <strong>Para</strong> asegurar el funcionamiento continuo del sistema y adaptar ColdTrace al contexto real de cada operación.</td>
  </tr>
</table>

Luego de definir las épicas principales del sistema, se desarrollan las historias de usuario correspondientes a cada una de ellas. A continuación, se presentan las user stories del proyecto, organizadas según las épicas definidas para ColdTrace.

<table style="width: 100%; table-layout: fixed;">
  <colgroup>
    <col style="width: 12%;">
    <col style="width: 18%;">
    <col style="width: 25%;">
    <col style="width: 33%;">
    <col style="width: 12%;">
  </colgroup>
  <tr>
    <td><strong>ID de Historia de Usuario</strong></td>
    <td><strong>Título de User Story</strong></td>
    <td><strong>Descripción</strong></td>
    <td><strong>Criterios de Aceptación con Escenarios</strong></td>
    <td><strong>ID de Épica</strong></td>
  </tr>
  <tr>
    <td>US001</td>
    <td>Crear cuenta de usuario</td>
    <td>Como usuario nuevo de la plataforma, <strong>Quiero</strong> registrar una cuenta con mis datos básicos de acceso, <strong>Para</strong> poder ingresar a ColdTrace y utilizar las funcionalidades disponibles según mi rol.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> el usuario completa correctamente el formulario de registro.<br>
      <strong>When</strong> envía sus datos para crear la cuenta.<br>
      <strong>Then</strong> el sistema registra la cuenta y muestra una confirmación de creación exitosa.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el usuario intenta registrarse con un correo ya existente.<br>
      <strong>When</strong> envía el formulario de registro.<br>
      <strong>Then</strong> el sistema muestra un mensaje indicando que el correo ya se encuentra registrado.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el usuario deja campos obligatorios vacíos o ingresa datos inválidos.<br>
      <strong>When</strong> intenta completar el registro.<br>
      <strong>Then</strong> el sistema valida la información y solicita corregir los campos antes de continuar.
    </td>
    <td>EP001</td>
  </tr>
  <tr>
    <td>US002</td>
    <td>Verificar identidad por correo</td>
    <td>Como usuario registrado, <strong>Quiero</strong> recibir un correo de verificación y confirmar mi identidad, <strong>Para</strong> activar mi cuenta y asegurar que solo usuarios válidos accedan a la plataforma.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> el usuario ya creó su cuenta y recibió el correo de verificación.<br>
      <strong>When</strong> selecciona el enlace de confirmación enviado por el sistema.<br>
      <strong>Then</strong> la cuenta queda verificada y habilitada para iniciar sesión.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el enlace de verificación ha expirado o no es válido.<br>
      <strong>When</strong> el usuario intenta confirmar su cuenta.<br>
      <strong>Then</strong> el sistema informa que el enlace no puede utilizarse y ofrece reenviar una nueva verificación.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el usuario no ha completado la verificación de identidad.<br>
      <strong>When</strong> intenta acceder a funciones restringidas de la plataforma.<br>
      <strong>Then</strong> el sistema le indica que primero debe validar su cuenta.
    </td>
    <td>EP001</td>
  </tr>
  <tr>
    <td>US003</td>
    <td>Iniciar sesión</td>
    <td>Como usuario registrado, <strong>Quiero</strong> iniciar sesión con mis credenciales, <strong>Para</strong> acceder a mi cuenta y utilizar las funciones de monitoreo y gestión disponibles en ColdTrace.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> el usuario tiene una cuenta verificada y credenciales válidas.<br>
      <strong>When</strong> ingresa su correo y contraseña y selecciona la opción de iniciar sesión.<br>
      <strong>Then</strong> el sistema autentica al usuario y le permite acceder a la plataforma.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el usuario ingresa una contraseña incorrecta o un correo no reconocido.<br>
      <strong>When</strong> intenta iniciar sesión.<br>
      <strong>Then</strong> el sistema rechaza el acceso y muestra un mensaje de credenciales inválidas.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el acceso del usuario ha sido revocado.<br>
      <strong>When</strong> intenta ingresar a la plataforma.<br>
      <strong>Then</strong> el sistema bloquea el acceso e informa que la cuenta no tiene permisos vigentes.
    </td>
    <td>EP001</td>
  </tr>
  <tr>
    <td>US004</td>
    <td>Recuperar contraseña</td>
    <td>Como usuario de la plataforma, <strong>Quiero</strong> restablecer mi contraseña cuando no pueda acceder a mi cuenta, <strong>Para</strong> recuperar el ingreso al sistema de manera segura y sin depender de soporte manual.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> el usuario olvidó su contraseña pero recuerda su correo registrado.<br>
      <strong>When</strong> solicita el restablecimiento de contraseña.<br>
      <strong>Then</strong> el sistema envía un enlace seguro para crear una nueva contraseña.<br><br>
      <strong>Happy Path:</strong> <strong>Given</strong> el usuario accede correctamente al enlace recibido.<br>
      <strong>When</strong> registra una nueva contraseña válida.<br>
      <strong>Then</strong> el sistema actualiza la contraseña y confirma el cambio exitoso.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el usuario ingresa un correo no asociado a ninguna cuenta.<br>
      <strong>When</strong> solicita recuperar la contraseña.<br>
      <strong>Then</strong> el sistema informa que no existe una cuenta vinculada a ese correo.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el enlace de recuperación ha expirado.<br>
      <strong>When</strong> el usuario intenta usarlo.<br>
      <strong>Then</strong> el sistema solicita generar un nuevo proceso de recuperación.
    </td>
    <td>EP001</td>
  </tr>
  <tr>
    <td>US005</td>
    <td>Asignar roles y permisos</td>
    <td>Como administrador de la organización, <strong>Quiero</strong> asignar roles y permisos a los usuarios del sistema, <strong>Para</strong> controlar qué acciones puede realizar cada persona dentro de ColdTrace según su responsabilidad operativa.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> el administrador visualiza la lista de usuarios registrados de su organización.<br>
      <strong>When</strong> asigna un rol válido a un usuario.<br>
      <strong>Then</strong> el sistema actualiza sus permisos y habilita el acceso correspondiente.<br><br>
      <strong>Happy Path:</strong> <strong>Given</strong> un usuario ya tiene un rol activo.<br>
      <strong>When</strong> el administrador modifica sus permisos según un nuevo nivel de responsabilidad.<br>
      <strong>Then</strong> el sistema actualiza el acceso sin afectar la integridad de la cuenta.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el administrador intenta asignar un rol no permitido o incompleto.<br>
      <strong>When</strong> guarda la configuración de permisos.<br>
      <strong>Then</strong> el sistema rechaza la operación y solicita seleccionar un rol válido.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> un usuario sin privilegios administrativos intenta modificar permisos.<br>
      <strong>When</strong> accede a esa funcionalidad.<br>
      <strong>Then</strong> el sistema restringe la acción y muestra un mensaje de acceso denegado.
    </td>
    <td>EP001</td>
  </tr>
  <tr>
    <td>US006</td>
    <td>Registrar cámara frigorífica</td>
    <td>Como responsable de la operación, <strong>Quiero</strong> registrar una cámara frigorífica en la plataforma con sus datos principales, <strong>Para</strong> monitorear su funcionamiento y asociarla correctamente a la operación de la organización.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> el usuario cuenta con permisos para gestionar activos.<br>
      <strong>When</strong> registra una cámara frigorífica con datos válidos como nombre, capacidad, ubicación y descripción.<br>
      <strong>Then</strong> el sistema guarda el activo y lo muestra dentro del inventario de equipos registrados.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el usuario omite campos obligatorios o ingresa información inconsistente.<br>
      <strong>When</strong> intenta guardar la cámara frigorífica.<br>
      <strong>Then</strong> el sistema rechaza el registro y solicita completar o corregir los datos requeridos.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> ya existe un equipo registrado con el mismo identificador interno.<br>
      <strong>When</strong> el usuario intenta crear un nuevo registro duplicado.<br>
      <strong>Then</strong> el sistema informa que el activo ya existe y evita la duplicidad.
    </td>
    <td>EP002</td>
  </tr>
  <tr>
    <td>US007</td>
    <td>Registrar unidad de transporte</td>
    <td>Como responsable logístico, <strong>Quiero</strong> registrar una unidad de transporte refrigerado dentro de ColdTrace, <strong>Para</strong> monitorear sus condiciones térmicas y conservar un historial de mediciones e incidencias durante su operación.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> el usuario tiene acceso al módulo de activos.<br>
      <strong>When</strong> registra una unidad de transporte con sus datos de identificación y operación.<br>
      <strong>Then</strong> el sistema crea el registro y lo deja disponible para asociar sensores y monitoreo.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> la información de la unidad está incompleta o no cumple las validaciones mínimas.<br>
      <strong>When</strong> el usuario intenta guardar el registro.<br>
      <strong>Then</strong> el sistema muestra errores y no permite completar la operación.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el usuario no tiene permisos para registrar activos logísticos.<br>
      <strong>When</strong> intenta crear la unidad de transporte.<br>
      <strong>Then</strong> el sistema restringe la acción y muestra un mensaje de acceso denegado.
    </td>
    <td>EP002</td>
  </tr>
  <tr>
    <td>US008</td>
    <td>Vincular sensor IoT a un activo</td>
    <td>Como responsable de la configuración del sistema, <strong>Quiero</strong> vincular un sensor IoT a una cámara frigorífica o unidad de transporte, <strong>Para</strong> comenzar a capturar datos de temperatura y humedad del activo correcto.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> existe un activo previamente registrado y un sensor disponible para configuración.<br>
      <strong>When</strong> el usuario selecciona ambos elementos y confirma la vinculación.<br>
      <strong>Then</strong> el sistema asocia el sensor al activo y habilita su uso para monitoreo.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el sensor ya se encuentra vinculado a otro activo.<br>
      <strong>When</strong> el usuario intenta asociarlo nuevamente.<br>
      <strong>Then</strong> el sistema informa el conflicto y no permite duplicar la vinculación.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el activo seleccionado no existe o fue desactivado.<br>
      <strong>When</strong> el usuario intenta completar la asociación.<br>
      <strong>Then</strong> el sistema impide la operación y solicita elegir un activo válido.
    </td>
    <td>EP002</td>
  </tr>
  <tr>
    <td>US009</td>
    <td>Emparejar gateway de red</td>
    <td>Como usuario administrativo de la plataforma, <strong>Quiero</strong> emparejar un gateway de red con los sensores de mi operación, <strong>Para</strong> asegurar la transmisión de datos desde los activos hacia el sistema.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> el gateway se encuentra disponible y el sensor está listo para configuración.<br>
      <strong>When</strong> el usuario realiza el proceso de emparejamiento correctamente.<br>
      <strong>Then</strong> el sistema confirma la conexión entre gateway y sensor.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el gateway no responde o presenta fallas de conectividad.<br>
      <strong>When</strong> el usuario intenta completar el emparejamiento.<br>
      <strong>Then</strong> el sistema informa el error y deja el sensor sin conexión activa.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el gateway ya fue asignado a una configuración incompatible.<br>
      <strong>When</strong> el usuario intenta reutilizarlo sin realizar ajustes previos.<br>
      <strong>Then</strong> el sistema advierte la incompatibilidad y solicita revisar la configuración.
    </td>
    <td>EP002</td>
  </tr>
  <tr>
    <td>US010</td>
    <td>Verificar calibración del sensor</td>
    <td>Como responsable de calidad u operación, <strong>Quiero</strong> verificar el estado de calibración de los sensores instalados, <strong>Para</strong> asegurar que las lecturas registradas sean confiables y útiles para control y cumplimiento.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> el sensor cuenta con información de calibración vigente.<br>
      <strong>When</strong> el usuario consulta el estado del sensor.<br>
      <strong>Then</strong> el sistema muestra que la calibración es válida y permite continuar con su uso normal.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el certificado de calibración está vencido.<br>
      <strong>When</strong> el usuario revisa el estado del sensor.<br>
      <strong>Then</strong> el sistema alerta que el sensor requiere mantenimiento o recalibración.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> no existe información registrada sobre la calibración del sensor.<br>
      <strong>When</strong> el usuario intenta validarlo dentro del sistema.<br>
      <strong>Then</strong> la plataforma indica que el estado del sensor no puede considerarse conforme.
    </td>
    <td>EP002</td>
  </tr>
  <tr>
    <td>US011</td>
    <td>Actualizar ubicación y estado del activo</td>
    <td>Como responsable de la operación, <strong>Quiero</strong> actualizar la ubicación física y el estado operativo de un activo registrado, <strong>Para</strong> mantener información precisa sobre su disponibilidad, condición y contexto de uso.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> el activo ya se encuentra registrado en la plataforma.<br>
      <strong>When</strong> el usuario modifica su ubicación o cambia su estado operativo a activo, inactivo o en mantenimiento.<br>
      <strong>Then</strong> el sistema guarda la actualización y refleja el cambio en el inventario de activos.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el usuario intenta asignar una ubicación inexistente o inválida.<br>
      <strong>When</strong> guarda la modificación del activo.<br>
      <strong>Then</strong> el sistema rechaza la operación y solicita una ubicación válida.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el activo tiene una incidencia abierta que restringe su cambio de estado.<br>
      <strong>When</strong> el usuario intenta modificarlo manualmente.<br>
      <strong>Then</strong> el sistema advierte la restricción y evita una actualización inconsistente.
    </td>
    <td>EP002</td>
  </tr>
  <tr>
    <td>US012</td>
    <td>Visualizar temperatura en tiempo real</td>
    <td>Como usuario de la plataforma, <strong>Quiero</strong> visualizar en tiempo real la temperatura de mis equipos o ambientes monitoreados, <strong>Para</strong> detectar rápidamente cualquier variación que pueda comprometer la conservación de los productos.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> el activo cuenta con un sensor correctamente vinculado y con transmisión activa.<br>
      <strong>When</strong> el usuario accede al panel de monitoreo.<br>
      <strong>Then</strong> el sistema muestra la temperatura actual del activo en tiempo real.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> no existe una lectura reciente disponible para el activo seleccionado.<br>
      <strong>When</strong> el usuario intenta visualizar la temperatura.<br>
      <strong>Then</strong> el sistema informa que no hay datos actualizados en ese momento.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el activo no tiene sensores configurados.<br>
      <strong>When</strong> el usuario accede al monitoreo del equipo.<br>
      <strong>Then</strong> la plataforma indica que el activo aún no puede ser monitoreado.
    </td>
    <td>EP003</td>
  </tr>
  <tr>
    <td>US013</td>
    <td>Visualizar humedad en tiempo real</td>
    <td>Como usuario de la plataforma, <strong>Quiero</strong> visualizar en tiempo real los valores de humedad de mis ambientes o equipos monitoreados, <strong>Para</strong> complementar el control de conservación y evaluar mejor las condiciones del activo.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> el sensor del activo transmite datos de humedad de forma correcta.<br>
      <strong>When</strong> el usuario consulta el detalle del monitoreo.<br>
      <strong>Then</strong> el sistema presenta el valor actual de humedad junto con el resto de variables monitoreadas.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el sensor no soporta medición de humedad.<br>
      <strong>When</strong> el usuario intenta consultar dicha variable.<br>
      <strong>Then</strong> el sistema informa que esa lectura no se encuentra disponible.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> la lectura de humedad no pudo ser capturada correctamente.<br>
      <strong>When</strong> el usuario revisa el panel de monitoreo.<br>
      <strong>Then</strong> el sistema muestra el estado de dato no disponible o inconsistente.
    </td>
    <td>EP003</td>
  </tr>
  <tr>
    <td>US014</td>
    <td>Consultar historial de lecturas</td>
    <td>Como encargado de negocio o responsable de operaciones, <strong>Quiero</strong> consultar el historial de lecturas de temperatura y humedad de un activo, <strong>Para</strong> revisar su comportamiento en el tiempo y analizar incidencias pasadas.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> el activo tiene lecturas almacenadas en el sistema.<br>
      <strong>When</strong> el usuario selecciona un rango de fechas para la consulta.<br>
      <strong>Then</strong> el sistema muestra el historial registrado dentro del periodo solicitado.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el activo no tiene información histórica disponible en el rango consultado.<br>
      <strong>When</strong> el usuario ejecuta la búsqueda.<br>
      <strong>Then</strong> el sistema informa que no existen registros para ese periodo.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el usuario ingresa un rango de fechas inválido.<br>
      <strong>When</strong> intenta consultar el historial.<br>
      <strong>Then</strong> la plataforma solicita corregir los criterios de búsqueda antes de procesar la consulta.
    </td>
    <td>EP003</td>
  </tr>
  <tr>
    <td>US015</td>
    <td>Detectar temperatura fuera de rango</td>
    <td>Como usuario de la plataforma, <strong>Quiero</strong> que el sistema identifique automáticamente cuando la temperatura de un activo salga del rango seguro, <strong>Para</strong> reconocer oportunamente una condición de riesgo dentro de la operación.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> el activo tiene configurado un rango válido de temperatura.<br>
      <strong>When</strong> el sistema recibe una lectura que supera los límites establecidos.<br>
      <strong>Then</strong> la plataforma marca la condición como fuera de rango.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el activo no tiene un rango configurado previamente.<br>
      <strong>When</strong> se recibe una nueva lectura de temperatura.<br>
      <strong>Then</strong> el sistema no puede evaluar el cumplimiento y advierte que falta configuración.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> la lectura recibida presenta valores corruptos o inconsistentes.<br>
      <strong>When</strong> el sistema intenta procesarla.<br>
      <strong>Then</strong> la lectura es descartada y queda registrada como inválida.
    </td>
    <td>EP003</td>
  </tr>
  <tr>
    <td>US016</td>
    <td>Visualizar estado de conectividad</td>
    <td>Como responsable de monitoreo, <strong>Quiero</strong> visualizar el estado de conectividad de los sensores y gateways, <strong>Para</strong> identificar si un activo está enviando información de forma continua o si existe un problema de transmisión.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> el sensor y el gateway mantienen transmisión normal de datos.<br>
      <strong>When</strong> el usuario revisa el estado del activo dentro del sistema.<br>
      <strong>Then</strong> la plataforma muestra que la conectividad se encuentra activa y estable.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> la conexión entre el sensor, gateway o red se ha interrumpido.<br>
      <strong>When</strong> el usuario accede al monitoreo del activo.<br>
      <strong>Then</strong> el sistema indica que la conectividad está perdida o inestable.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> no existe información suficiente para determinar el estado de conexión.<br>
      <strong>When</strong> el usuario consulta el panel.<br>
      <strong>Then</strong> la plataforma muestra el estado como desconocido o pendiente de actualización.
    </td>
    <td>EP003</td>
  </tr>
  <tr>
    <td>US017</td>
    <td>Sincronizar datos almacenados offline</td>
    <td>Como usuario de la plataforma, <strong>Quiero</strong> que los datos capturados durante una pérdida de conexión se sincronicen cuando el sistema recupere conectividad, <strong>Para</strong> conservar el historial completo de las lecturas registradas durante ese periodo.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> hubo una interrupción de red y el dispositivo almacenó lecturas de forma local.<br>
      <strong>When</strong> la conectividad se restablece.<br>
      <strong>Then</strong> el sistema sincroniza los datos pendientes con la plataforma central.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> la conexión vuelve de forma intermitente o inestable.<br>
      <strong>When</strong> se intenta sincronizar la información acumulada.<br>
      <strong>Then</strong> el sistema conserva los datos pendientes y reintenta la sincronización posteriormente.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> parte de los datos offline presenta errores de integridad.<br>
      <strong>When</strong> el sistema procesa la sincronización.<br>
      <strong>Then</strong> la plataforma registra los paquetes inválidos y sincroniza únicamente la información válida.
    </td>
    <td>EP003</td>
  </tr>
  <tr>
    <td>US018</td>
    <td>Crear incidencia térmica</td>
    <td>Como usuario de la plataforma, <strong>Quiero</strong> que el sistema cree una incidencia térmica cuando detecte una condición crítica en un activo, <strong>Para</strong> iniciar el seguimiento formal del evento y evitar que el problema pase desapercibido.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> el sistema detecta una lectura fuera del rango seguro configurado.<br>
      <strong>When</strong> la condición supera los criterios establecidos para riesgo operativo.<br>
      <strong>Then</strong> la plataforma crea automáticamente una incidencia térmica asociada al activo afectado.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el activo no tiene configuración suficiente para evaluar la condición detectada.<br>
      <strong>When</strong> el sistema intenta crear la incidencia.<br>
      <strong>Then</strong> la plataforma registra el evento como inconsistente y advierte que falta configuración.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> ya existe una incidencia abierta por la misma condición y el mismo activo.<br>
      <strong>When</strong> se procesa una nueva lectura equivalente.<br>
      <strong>Then</strong> el sistema evita crear una duplicidad y actualiza la incidencia ya existente.
    </td>
    <td>EP004</td>
  </tr>
  <tr>
    <td>US019</td>
    <td>Disparar notificaciones de alerta</td>
    <td>Como encargado de negocio o responsable de operaciones, <strong>Quiero</strong> recibir notificaciones automáticas cuando ocurra una incidencia crítica, <strong>Para</strong> reaccionar de manera oportuna antes de que el problema afecte los productos o la operación.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> existe una incidencia térmica activa clasificada como crítica.<br>
      <strong>When</strong> el sistema procesa las reglas de notificación configuradas.<br>
      <strong>Then</strong> la plataforma envía alertas al usuario por los canales definidos, como push, correo o SMS.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> uno de los canales de notificación no está disponible o falla.<br>
      <strong>When</strong> el sistema intenta despachar la alerta.<br>
      <strong>Then</strong> la plataforma registra el fallo e intenta continuar con los demás canales disponibles.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el usuario no tiene configurados canales de contacto válidos.<br>
      <strong>When</strong> se dispara una alerta crítica.<br>
      <strong>Then</strong> el sistema informa que la notificación no pudo completarse correctamente.
    </td>
    <td>EP004</td>
  </tr>
  <tr>
    <td>US020</td>
    <td>Escalar alerta no atendida</td>
    <td>Como responsable de la operación, <strong>Quiero</strong> que el sistema escale una alerta que no ha sido atendida en el tiempo esperado, <strong>Para</strong> asegurar que el incidente reciba seguimiento y no quede sin respuesta.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> una alerta crítica permanece sin reconocimiento dentro del tiempo de espera configurado.<br>
      <strong>When</strong> se cumple el umbral de escalamiento.<br>
      <strong>Then</strong> el sistema escala la alerta hacia un nivel superior de atención o hacia más responsables.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> la alerta ya fue reconocida antes de que venza el tiempo definido.<br>
      <strong>When</strong> el sistema evalúa la necesidad de escalamiento.<br>
      <strong>Then</strong> la plataforma no ejecuta la escalada.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> no existe una política de escalamiento configurada para ese tipo de alerta.<br>
      <strong>When</strong> el sistema intenta aplicar la regla.<br>
      <strong>Then</strong> la plataforma registra la ausencia de configuración y mantiene el incidente en seguimiento.
    </td>
    <td>EP004</td>
  </tr>
  <tr>
    <td>US021</td>
    <td>Reconocer alerta crítica</td>
    <td>Como usuario responsable del monitoreo, <strong>Quiero</strong> reconocer una alerta crítica dentro de la plataforma, <strong>Para</strong> dejar constancia de que el incidente está siendo atendido por una persona responsable.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> existe una alerta activa asociada a una incidencia térmica.<br>
      <strong>When</strong> el usuario la revisa y marca la alerta como reconocida.<br>
      <strong>Then</strong> el sistema actualiza su estado y registra quién asumió la atención del caso.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> la alerta ya fue reconocida por otro usuario.<br>
      <strong>When</strong> un segundo usuario intenta reconocerla nuevamente.<br>
      <strong>Then</strong> la plataforma muestra que la atención ya fue asumida y evita ambigüedad operativa.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el usuario no tiene permisos para gestionar incidencias.<br>
      <strong>When</strong> intenta reconocer la alerta.<br>
      <strong>Then</strong> el sistema rechaza la acción e informa acceso denegado.
    </td>
    <td>EP004</td>
  </tr>
  <tr>
    <td>US022</td>
    <td>Registrar acción correctiva y cerrar incidencia</td>
    <td>Como usuario responsable de la atención de incidencias, <strong>Quiero</strong> registrar la acción correctiva aplicada y cerrar la incidencia cuando la condición se estabilice, <strong>Para</strong> dejar registro de la medida aplicada, confirmar que el riesgo fue resuelto y conservar el historial del caso.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> existe una incidencia abierta y el usuario ya tomó una medida correctiva sobre el activo afectado.<br>
      <strong>When</strong> registra la acción ejecutada y el sistema confirma la estabilización de la temperatura.<br>
      <strong>Then</strong> la incidencia se cierra satisfactoriamente y queda almacenada en el historial.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el usuario intenta cerrar la incidencia sin registrar la acción tomada.<br>
      <strong>When</strong> confirma el cierre del caso.<br>
      <strong>Then</strong> la plataforma solicita completar la evidencia mínima antes de finalizar la incidencia.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> la temperatura aún no ha regresado a un rango estable.<br>
      <strong>When</strong> el usuario intenta cerrar la incidencia manualmente.<br>
      <strong>Then</strong> el sistema advierte que el evento sigue activo y evita un cierre inconsistente.
    </td>
    <td>EP004</td>
  </tr>
  <tr>
    <td>US023</td>
    <td>Generar bitácora diaria</td>
    <td>Como responsable de operaciones o calidad, <strong>Quiero</strong> generar una bitácora diaria con las lecturas registradas por los activos monitoreados, <strong>Para</strong> contar con evidencia ordenada del control térmico realizado en la operación.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> existen lecturas válidas registradas durante la jornada.<br>
      <strong>When</strong> el usuario solicita la generación de la bitácora diaria.<br>
      <strong>Then</strong> el sistema consolida las lecturas del periodo y genera la bitácora correspondiente.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> no existen datos suficientes para el día consultado.<br>
      <strong>When</strong> el usuario intenta generar la bitácora.<br>
      <strong>Then</strong> la plataforma informa que no es posible completar el registro diario por ausencia de datos.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> algunas lecturas del periodo están incompletas o corruptas.<br>
      <strong>When</strong> se ejecuta la generación de la bitácora.<br>
      <strong>Then</strong> el sistema marca las inconsistencias y reporta observaciones sobre la integridad de la información.
    </td>
    <td>EP005</td>
  </tr>
  <tr>
    <td>US024</td>
    <td>Consultar historial de lecturas, alertas e incidencias</td>
    <td>Como responsable de operaciones y control de calidad, <strong>Quiero</strong> consultar el historial de lecturas, alertas e incidencias de un activo o periodo operativo, <strong>Para</strong> reconstruir eventos pasados y verificar cómo evolucionó una situación dentro del sistema.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> el sistema dispone de lecturas, alertas e incidencias asociadas al activo consultado.<br>
      <strong>When</strong> el usuario accede al historial del activo o periodo operativo.<br>
      <strong>Then</strong> la plataforma muestra de forma ordenada los eventos relevantes del activo o periodo seleccionado.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> no existen eventos registrados para el criterio solicitado.<br>
      <strong>When</strong> el usuario intenta consultar el historial.<br>
      <strong>Then</strong> el sistema indica que no hay información disponible para ese caso.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el usuario no tiene permisos suficientes para acceder a esa información histórica.<br>
      <strong>When</strong> intenta visualizar el historial.<br>
      <strong>Then</strong> la plataforma restringe el acceso y muestra un mensaje de autorización insuficiente.
    </td>
    <td>EP005</td>
  </tr>
  <tr>
    <td>US025</td>
    <td>Exportar reporte de cumplimiento sanitario</td>
    <td>Como responsable de calidad, <strong>Quiero</strong> exportar un reporte de cumplimiento sanitario con la información relevante de monitoreo y control, <strong>Para</strong> utilizarlo como soporte documental en procesos internos o auditorías vinculadas al control sanitario.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> el usuario selecciona un periodo y un activo con información suficiente para reportar.<br>
      <strong>When</strong> solicita la exportación del reporte de cumplimiento sanitario.<br>
      <strong>Then</strong> el sistema genera el documento con los datos de monitoreo y cumplimiento correspondientes.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el rango seleccionado no contiene información mínima para construir el reporte.<br>
      <strong>When</strong> el usuario intenta exportarlo.<br>
      <strong>Then</strong> la plataforma informa que no es posible generar el reporte solicitado.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el usuario intenta exportar el reporte sin permisos de consulta o descarga.<br>
      <strong>When</strong> ejecuta la acción.<br>
      <strong>Then</strong> el sistema bloquea la operación y notifica la restricción de acceso.
    </td>
    <td>EP005</td>
  </tr>
  <tr>
    <td>US026</td>
    <td>Descargar reporte mensual</td>
    <td>Como usuario administrativo de la plataforma, <strong>Quiero</strong> descargar reportes mensuales consolidados de monitoreo e incidencias, <strong>Para</strong> evaluar el desempeño de la operación y tomar decisiones basadas en datos históricos.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> existe información consolidada del mes seleccionado.<br>
      <strong>When</strong> el usuario solicita la descarga del reporte mensual.<br>
      <strong>Then</strong> el sistema genera el archivo y lo deja disponible para descarga.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el periodo solicitado aún no cuenta con información consolidada suficiente.<br>
      <strong>When</strong> el usuario intenta descargar el reporte.<br>
      <strong>Then</strong> la plataforma informa que el documento todavía no puede ser generado.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> ocurre un error durante el proceso de exportación del archivo.<br>
      <strong>When</strong> el sistema intenta construir el reporte.<br>
      <strong>Then</strong> la plataforma informa el fallo y solicita intentar nuevamente.
    </td>
    <td>EP005</td>
  </tr>
  <tr>
    <td>US027</td>
    <td>Detectar faltantes o incumplimientos</td>
    <td>Como responsable de calidad y cumplimiento, <strong>Quiero</strong> identificar registros faltantes o posibles incumplimientos normativos dentro de la operación, <strong>Para</strong> corregirlos oportunamente antes de una revisión o auditoría formal.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> el sistema evalúa los registros de monitoreo frente a las reglas de control definidas.<br>
      <strong>When</strong> detecta faltantes de temperatura, vacíos en la bitácora o inconsistencias documentales.<br>
      <strong>Then</strong> la plataforma marca la situación como observación o incumplimiento potencial.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> la información del periodo es incompleta y no puede evaluarse con certeza.<br>
      <strong>When</strong> el sistema intenta verificar el cumplimiento.<br>
      <strong>Then</strong> la plataforma registra la limitación e informa que el análisis no pudo completarse totalmente.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el usuario intenta ignorar o cerrar la observación sin permisos apropiados.<br>
      <strong>When</strong> realiza la acción sobre el hallazgo.<br>
      <strong>Then</strong> el sistema restringe la modificación y conserva la evidencia registrada.
    </td>
    <td>EP005</td>
  </tr>
  <tr>
    <td>US028</td>
    <td>Preparar evidencia para auditoría</td>
    <td>Como responsable de auditoría interna o control de calidad, <strong>Quiero</strong> reunir la evidencia documental de monitoreo, incidencias y acciones correctivas, <strong>Para</strong> sustentar el cumplimiento de la operación ante revisiones internas o externas.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> existen registros históricos, incidencias cerradas y reportes generados en el sistema.<br>
      <strong>When</strong> el usuario solicita preparar la evidencia para auditoría.<br>
      <strong>Then</strong> la plataforma consolida la documentación relevante para su consulta o exportación.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> faltan documentos clave o registros obligatorios para el periodo evaluado.<br>
      <strong>When</strong> el usuario intenta preparar la evidencia.<br>
      <strong>Then</strong> el sistema advierte qué elementos faltan y señala que la evidencia está incompleta.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el usuario selecciona un criterio de auditoría fuera del alcance de sus permisos.<br>
      <strong>When</strong> intenta consolidar la evidencia.<br>
      <strong>Then</strong> la plataforma restringe la operación y conserva la seguridad de acceso.
    </td>
    <td>EP005</td>
  </tr>
  <tr>
    <td>US029</td>
    <td>Configurar rango de seguridad</td>
    <td>Como usuario administrativo de la plataforma, <strong>Quiero</strong> configurar rangos seguros de temperatura y humedad para cada activo o tipo de producto, <strong>Para</strong> adaptar el monitoreo a las condiciones reales de conservación que requiere la operación.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> el activo ya se encuentra registrado y cuenta con monitoreo habilitado.<br>
      <strong>When</strong> el usuario define límites válidos de temperatura y humedad y guarda la configuración.<br>
      <strong>Then</strong> el sistema registra el rango de seguridad y lo utiliza como referencia para evaluar futuras lecturas.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el usuario ingresa valores inconsistentes o fuera de un rango permitido.<br>
      <strong>When</strong> intenta guardar la configuración.<br>
      <strong>Then</strong> la plataforma rechaza los datos y solicita corregir los parámetros ingresados.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el usuario no tiene permisos de configuración sobre ese activo.<br>
      <strong>When</strong> intenta modificar los rangos definidos.<br>
      <strong>Then</strong> el sistema bloquea la acción y muestra un mensaje de acceso restringido.
    </td>
    <td>EP006</td>
  </tr>
  <tr>
    <td>US030</td>
    <td>Actualizar parámetros operativos</td>
    <td>Como responsable de la operación, <strong>Quiero</strong> actualizar parámetros operativos del monitoreo, como intervalos de lectura o criterios de evaluación, <strong>Para</strong> ajustar el comportamiento del sistema al contexto y nivel de criticidad de cada activo.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> el activo dispone de una configuración operativa activa.<br>
      <strong>When</strong> el usuario modifica parámetros válidos del monitoreo y guarda los cambios.<br>
      <strong>Then</strong> la plataforma actualiza la configuración y aplica los nuevos valores en las lecturas siguientes.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el usuario define parámetros incompatibles con la configuración del sensor o gateway.<br>
      <strong>When</strong> intenta guardar los cambios.<br>
      <strong>Then</strong> el sistema rechaza la actualización y señala la incompatibilidad detectada.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> se produce un error al aplicar la configuración sobre el activo.<br>
      <strong>When</strong> el usuario confirma la actualización.<br>
      <strong>Then</strong> la plataforma informa el fallo y mantiene los parámetros operativos anteriores.
    </td>
    <td>EP006</td>
  </tr>
  <tr>
    <td>US031</td>
    <td>Programar mantenimiento preventivo</td>
    <td>Como responsable de calidad u operación, <strong>Quiero</strong> programar el mantenimiento preventivo de sensores o equipos de frío, <strong>Para</strong> reducir el riesgo de fallas operativas y mantener la confiabilidad del monitoreo.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> el activo o sensor requiere seguimiento periódico.<br>
      <strong>When</strong> el usuario registra una programación de mantenimiento preventivo con fecha y observaciones.<br>
      <strong>Then</strong> el sistema agenda la intervención y marca el activo para seguimiento.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el usuario intenta programar mantenimiento para un activo inexistente o inactivo.<br>
      <strong>When</strong> guarda la solicitud.<br>
      <strong>Then</strong> la plataforma rechaza la operación y solicita seleccionar un activo válido.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> ya existe un mantenimiento pendiente para el mismo activo en el mismo periodo.<br>
      <strong>When</strong> el usuario intenta registrar una nueva programación equivalente.<br>
      <strong>Then</strong> el sistema advierte la duplicidad y evita generar un seguimiento redundante.
    </td>
    <td>EP006</td>
  </tr>
  <tr>
    <td>US032</td>
    <td>Solicitar y cerrar servicio técnico</td>
    <td>Como usuario responsable del activo, <strong>Quiero</strong> solicitar servicio técnico y cerrar la atención una vez completada la intervención, <strong>Para</strong> conservar el registro de la intervención técnica y devolver el equipo a operación de forma controlada.</td>
    <td>
      <strong>Happy Path:</strong> <strong>Given</strong> el activo presenta una falla o requiere atención técnica correctiva.<br>
      <strong>When</strong> el usuario registra la solicitud de servicio técnico y posteriormente documenta la reparación realizada.<br>
      <strong>Then</strong> el sistema crea el seguimiento del servicio y permite cerrar el caso cuando la intervención ha finalizado correctamente.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> el usuario intenta cerrar el servicio sin registrar la intervención técnica ni el resultado obtenido.<br>
      <strong>When</strong> confirma el cierre del caso.<br>
      <strong>Then</strong> la plataforma exige completar la evidencia mínima antes de finalizar el ticket.<br><br>
      <strong>Unhappy Path:</strong> <strong>Given</strong> la prueba de funcionamiento posterior al mantenimiento resulta fallida.<br>
      <strong>When</strong> el usuario intenta cerrar la atención técnica.<br>
      <strong>Then</strong> el sistema mantiene el servicio abierto y marca el activo como pendiente de nueva revisión.
    </td>
    <td>EP006</td>
  </tr>
</table>

## 3.2 Impact Mapping

**Segmento 1: Dueños o encargados de pequeños negocios con productos perecibles**

   <img src="assets/chapter-03/impact maps/Impact map 1.png" alt="Impact map del segmento de minimarkets o pequeños negocios con productos perecibles" width="900">

**Segmento 2: Responsables de operaciones, calidad o logística en negocios con cadena de frío**

   <img src="assets/chapter-03/impact maps/Impact map 2.png" alt="Impact map del segmento de responsables de operaciones y control de calidad en negocios con cadena de frío" width="900">

## 3.3 Product Backlog

<table style="width: 100%; table-layout: fixed;">
  <colgroup>
    <col style="width: 8%;">
    <col style="width: 12%;">
    <col style="width: 20%;">
    <col style="width: 50%;">
    <col style="width: 10%;">
  </colgroup>
  <tr>
    <td><strong>#Order</strong></td>
    <td><strong>User Story Id</strong></td>
    <td><strong>Título</strong></td>
    <td><strong>Descripción</strong></td>
    <td><strong>Story Points</strong></td>
  </tr>
  <tr>
    <td>1</td>
    <td>US001</td>
    <td>Crear cuenta de usuario</td>
    <td><strong>Como</strong> usuario nuevo de la plataforma, <strong>deseo</strong> registrar una cuenta con mis datos básicos de acceso <strong>para</strong> poder ingresar a ColdTrace y utilizar las funcionalidades disponibles según mi rol.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>2</td>
    <td>US002</td>
    <td>Verificar identidad por correo</td>
    <td><strong>Como</strong> usuario registrado, <strong>deseo</strong> recibir un correo de verificación y confirmar mi identidad <strong>para</strong> activar mi cuenta y asegurar que solo usuarios válidos accedan a la plataforma.</td>
    <td>2</td>
  </tr>
  <tr>
    <td>3</td>
    <td>US003</td>
    <td>Iniciar sesión</td>
    <td><strong>Como</strong> usuario registrado, <strong>deseo</strong> iniciar sesión con mis credenciales <strong>para</strong> acceder a mi cuenta y utilizar las funciones de monitoreo y gestión disponibles en ColdTrace.</td>
    <td>2</td>
  </tr>
  <tr>
    <td>4</td>
    <td>US004</td>
    <td>Recuperar contraseña</td>
    <td><strong>Como</strong> usuario de la plataforma, <strong>deseo</strong> restablecer mi contraseña cuando no pueda acceder a mi cuenta <strong>para</strong> recuperar el ingreso al sistema de manera segura y sin depender de soporte manual.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>5</td>
    <td>US005</td>
    <td>Asignar roles y permisos</td>
    <td><strong>Como</strong> administrador de la organización, <strong>deseo</strong> asignar roles y permisos a los usuarios del sistema <strong>para</strong> controlar qué acciones puede realizar cada persona dentro de ColdTrace según su responsabilidad operativa.</td>
    <td>5</td>
  </tr>
  <tr>
    <td>6</td>
    <td>US006</td>
    <td>Registrar cámara frigorífica</td>
    <td><strong>Como</strong> responsable de la operación, <strong>deseo</strong> registrar una cámara frigorífica en la plataforma con sus datos principales <strong>para</strong> monitorear su funcionamiento y asociarla correctamente a la operación de la organización.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>7</td>
    <td>US008</td>
    <td>Vincular sensor IoT a un activo</td>
    <td><strong>Como</strong> responsable de la configuración del sistema, <strong>deseo</strong> vincular un sensor IoT a una cámara frigorífica o unidad de transporte <strong>para</strong> comenzar a capturar datos de temperatura y humedad del activo correcto.</td>
    <td>5</td>
  </tr>
  <tr>
    <td>8</td>
    <td>US009</td>
    <td>Emparejar gateway de red</td>
    <td><strong>Como</strong> usuario administrativo de la plataforma, <strong>deseo</strong> emparejar un gateway de red con los sensores de mi operación <strong>para</strong> asegurar la transmisión de datos desde los activos hacia el sistema.</td>
    <td>5</td>
  </tr>
  <tr>
    <td>9</td>
    <td>US029</td>
    <td>Configurar rango de seguridad</td>
    <td><strong>Como</strong> usuario administrativo de la plataforma, <strong>deseo</strong> configurar rangos seguros de temperatura y humedad para cada activo o tipo de producto <strong>para</strong> adaptar el monitoreo a las condiciones reales de conservación que requiere la operación.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>10</td>
    <td>US012</td>
    <td>Visualizar temperatura en tiempo real</td>
    <td><strong>Como</strong> usuario de la plataforma, <strong>deseo</strong> visualizar en tiempo real la temperatura de mis equipos o ambientes monitoreados <strong>para</strong> detectar rápidamente cualquier variación que pueda comprometer la conservación de los productos.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>11</td>
    <td>US015</td>
    <td>Detectar temperatura fuera de rango</td>
    <td><strong>Como</strong> usuario de la plataforma, <strong>deseo</strong> que el sistema identifique automáticamente cuando la temperatura de un activo salga del rango seguro <strong>para</strong> reconocer oportunamente una condición de riesgo dentro de la operación.</td>
    <td>5</td>
  </tr>
  <tr>
    <td>12</td>
    <td>US018</td>
    <td>Crear incidencia térmica</td>
    <td><strong>Como</strong> usuario de la plataforma, <strong>deseo</strong> que el sistema cree una incidencia térmica cuando detecte una condición crítica en un activo <strong>para</strong> iniciar el seguimiento formal del evento y evitar que el problema pase desapercibido.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>13</td>
    <td>US019</td>
    <td>Disparar notificaciones de alerta</td>
    <td><strong>Como</strong> encargado de negocio o responsable de operaciones, <strong>deseo</strong> recibir notificaciones automáticas cuando ocurra una incidencia crítica <strong>para</strong> reaccionar de manera oportuna antes de que el problema afecte los productos o la operación.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>14</td>
    <td>US021</td>
    <td>Reconocer alerta crítica</td>
    <td><strong>Como</strong> usuario responsable del monitoreo, <strong>deseo</strong> reconocer una alerta crítica dentro de la plataforma <strong>para</strong> dejar constancia de que el incidente está siendo atendido por una persona responsable.</td>
    <td>2</td>
  </tr>
  <tr>
    <td>15</td>
    <td>US022</td>
    <td>Registrar acción correctiva y cerrar incidencia</td>
    <td><strong>Como</strong> usuario responsable de la atención de incidencias, <strong>deseo</strong> registrar la acción correctiva aplicada y cerrar la incidencia cuando la condición se estabilice <strong>para</strong> dejar registro de la medida aplicada, confirmar que el riesgo fue resuelto y conservar el historial del caso.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>16</td>
    <td>US014</td>
    <td>Consultar historial de lecturas</td>
    <td><strong>Como</strong> encargado de negocio o responsable de operaciones, <strong>deseo</strong> consultar el historial de lecturas de temperatura y humedad de un activo <strong>para</strong> revisar su comportamiento en el tiempo y analizar incidencias pasadas.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>17</td>
    <td>US024</td>
    <td>Consultar historial de lecturas, alertas e incidencias</td>
    <td><strong>Como</strong> responsable de operaciones y control de calidad, <strong>deseo</strong> consultar el historial de lecturas, alertas e incidencias de un activo o periodo operativo <strong>para</strong> reconstruir eventos pasados y verificar cómo evolucionó una situación dentro del sistema.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>18</td>
    <td>US023</td>
    <td>Generar bitácora diaria</td>
    <td><strong>Como</strong> responsable de operaciones o calidad, <strong>deseo</strong> generar una bitácora diaria con las lecturas registradas por los activos monitoreados <strong>para</strong> contar con evidencia ordenada del control térmico realizado en la operación.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>19</td>
    <td>US025</td>
    <td>Exportar reporte de cumplimiento sanitario</td>
    <td><strong>Como</strong> responsable de calidad, <strong>deseo</strong> exportar un reporte de cumplimiento sanitario con la información relevante de monitoreo y control <strong>para</strong> utilizarlo como soporte documental en procesos internos o auditorías vinculadas al control sanitario.</td>
    <td>5</td>
  </tr>
  <tr>
    <td>20</td>
    <td>US028</td>
    <td>Preparar evidencia para auditoría</td>
    <td><strong>Como</strong> responsable de auditoría interna o control de calidad, <strong>deseo</strong> reunir la evidencia documental de monitoreo, incidencias y acciones correctivas <strong>para</strong> sustentar el cumplimiento de la operación ante revisiones internas o externas.</td>
    <td>5</td>
  </tr>
  <tr>
    <td>21</td>
    <td>US027</td>
    <td>Detectar faltantes o incumplimientos</td>
    <td><strong>Como</strong> responsable de calidad y cumplimiento, <strong>deseo</strong> identificar registros faltantes o posibles incumplimientos normativos dentro de la operación <strong>para</strong> corregirlos oportunamente antes de una revisión o auditoría formal.</td>
    <td>5</td>
  </tr>
  <tr>
    <td>22</td>
    <td>US011</td>
    <td>Actualizar ubicación y estado del activo</td>
    <td><strong>Como</strong> responsable de la operación, <strong>deseo</strong> actualizar la ubicación física y el estado operativo de un activo registrado <strong>para</strong> mantener información precisa sobre su disponibilidad, condición y contexto de uso.</td>
    <td>2</td>
  </tr>
  <tr>
    <td>23</td>
    <td>US010</td>
    <td>Verificar calibración del sensor</td>
    <td><strong>Como</strong> responsable de calidad u operación, <strong>deseo</strong> verificar el estado de calibración de los sensores instalados <strong>para</strong> asegurar que las lecturas registradas sean confiables y útiles para control y cumplimiento.</td>
    <td>2</td>
  </tr>
  <tr>
    <td>24</td>
    <td>US031</td>
    <td>Programar mantenimiento preventivo</td>
    <td><strong>Como</strong> responsable de calidad u operación, <strong>deseo</strong> programar el mantenimiento preventivo de sensores o equipos de frío <strong>para</strong> reducir el riesgo de fallas operativas y mantener la confiabilidad del monitoreo.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>25</td>
    <td>US032</td>
    <td>Solicitar y cerrar servicio técnico</td>
    <td><strong>Como</strong> usuario responsable del activo, <strong>deseo</strong> solicitar servicio técnico y cerrar la atención una vez completada la intervención <strong>para</strong> conservar el registro de la intervención técnica y devolver el equipo a operación de forma controlada.</td>
    <td>5</td>
  </tr>
  <tr>
    <td>26</td>
    <td>US030</td>
    <td>Actualizar parámetros operativos</td>
    <td><strong>Como</strong> responsable de la operación, <strong>deseo</strong> actualizar parámetros operativos del monitoreo, como intervalos de lectura o criterios de evaluación, <strong>para</strong> ajustar el comportamiento del sistema al contexto y nivel de criticidad de cada activo.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>27</td>
    <td>US013</td>
    <td>Visualizar humedad en tiempo real</td>
    <td><strong>Como</strong> usuario de la plataforma, <strong>deseo</strong> visualizar en tiempo real los valores de humedad de mis ambientes o equipos monitoreados <strong>para</strong> complementar el control de conservación y evaluar mejor las condiciones del activo.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>28</td>
    <td>US016</td>
    <td>Visualizar estado de conectividad</td>
    <td><strong>Como</strong> responsable de monitoreo, <strong>deseo</strong> visualizar el estado de conectividad de los sensores y gateways <strong>para</strong> identificar si un activo está enviando información de forma continua o si existe un problema de transmisión.</td>
    <td>2</td>
  </tr>
  <tr>
    <td>29</td>
    <td>US017</td>
    <td>Sincronizar datos almacenados offline</td>
    <td><strong>Como</strong> usuario de la plataforma, <strong>deseo</strong> que los datos capturados durante una pérdida de conexión se sincronicen cuando el sistema recupere conectividad <strong>para</strong> conservar el historial completo de las lecturas registradas durante ese periodo.</td>
    <td>8</td>
  </tr>
  <tr>
    <td>30</td>
    <td>US020</td>
    <td>Escalar alerta no atendida</td>
    <td><strong>Como</strong> responsable de la operación, <strong>deseo</strong> que el sistema escale una alerta que no ha sido atendida en el tiempo esperado <strong>para</strong> asegurar que el incidente reciba seguimiento y no quede sin respuesta.</td>
    <td>5</td>
  </tr>
  <tr>
    <td>31</td>
    <td>US026</td>
    <td>Descargar reporte mensual</td>
    <td><strong>Como</strong> usuario administrativo de la plataforma, <strong>deseo</strong> descargar reportes mensuales consolidados de monitoreo e incidencias <strong>para</strong> evaluar el desempeño de la operación y tomar decisiones basadas en datos históricos.</td>
    <td>3</td>
  </tr>
  <tr>
    <td>32</td>
    <td>US007</td>
    <td>Registrar unidad de transporte</td>
    <td><strong>Como</strong> responsable logístico, <strong>deseo</strong> registrar una unidad de transporte refrigerado dentro de ColdTrace <strong>para</strong> monitorear sus condiciones térmicas y conservar un historial de mediciones e incidencias durante su operación.</td>
    <td>3</td>
  </tr>
</table>