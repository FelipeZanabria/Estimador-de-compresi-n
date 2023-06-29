# Estimador-de-compresi-n
Pequeño script desarrollado en AutoHotKey que le ayuda a obtener la reducción de ganancia con base en algunos parámetros del compresor
## Modo de uso:
Al ejecutar el script aparecerá un diálogo con información básica sobre el modo de uso.
Seguidamente, pulsa alt+shift+c cada vez que quieras lanzar el estimador.
Después de ingresar el valor solicitado pulsa ok o enter para avanzar.
Si ya no quieres usar el script, pulsa alt+shift+q. Esto libera los atajos asignados durante la ejecución, reproduce un tono y lo cierra completamente.
### Valores solicitados:
#### Entrada:
Ingrese el nivel de entrada de la señal, por ejemplo -8.
#### Umbral:
Ingrese el umbral del compresor, por ejemplo -12.
#### Proporción:
Ingrese la proporción (ratio) a comprimir, por ejemplo 4.
Después de llenar los 3 campos solicitados, aparecerá una ventana con la cantidad máxima de ganancia que se aplicará al audio. Para mejor comodidad, el valor estará positivo, para que puedas copiar y pegar en el control de ganancia de salida del compresor.
##### Notas:
1. Solo es posible introducir valores como estos en los plug-ins VST de Reaper, estando en la interfaz mostrada en la cadena de fx. Los VST que dependen de la lista de parámetros de osara solo permiten valores en bruto entre 0 y 1, de manera que 0 significa un parámetro a su nivel mínimo, y 1 significa el nivel máximo. En cambio, los efectos JS permiten números más amigables como 3, -5 etc, tanto en la interfaz en la cadena de fx como en la lista de parámetros de OSARA.
2. El resultado del cálculo mostrado es el valor máximo de compresión, teniendo en cuenta que se ha introducido correctamente el nivel de pico de la señal de entrada.
3. Tenga en cuenta que dependiendo del audio entrante, el ataque, la liberación, la rodilla y el tamaño rms (que casi no se usan) el compresor puede comprimir menos de lo informado en el script. Puedes saber la cantidad de compresión con Reacomp siguiendo los siguientes pasos:
    1. Sitúate sobre la cadena de  fx y enfoca Reacomp.
    2. Pulsa tabulador para buscar el control que se llama rms size. Pulsando tab una vez más encontrará un control desconocido que mostrará la cantidad de reducción en la ganancia, que aumenta según el avance del audio, los picos y los parámetros que configures. Así como el visor de picos de osara en su configuración predeterminada, la reducción de ganancia toma lo máximo calculado. Para limpiar el valor y calcular denuevo, se debe pulsar NVDA+Enter con el cursor de revisión posicionado en el control que lo presente.

Alternativamente, puedes usar el visor de picos de OSARA para que le informe automáticamente o no la reducción de ganancia.
Teniendo Reacomp insertado y enfocado en la cadena de fx, pulsa alt+w para abrir menú para escojer el visor a configurar. Después de configurarlo, puedes consultar cada canal con los atajos dedicados de cada visor, reiniciarlo u configurar el anuncio automático, por ejemplo de -3 para bajo.
