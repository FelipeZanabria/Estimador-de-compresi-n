#SingleInstance Force
;@Ahk2Exe-SetProductName Estimador de compresión
;@Ahk2Exe-SetDescription Estimador de compresión del rango dinámico de audio
;@Ahk2Exe-SetCompanyName Felipe Porciuncula Zanabria
;@Ahk2Exe-SetVersion 1.0	

msgBox, 0, "bienvenido", "¡Bienvenido al Estimador de compresión!`nPara lanzarlo, pulsa alt+shift+c.`nEsto mostrará por separado 3 cuadros de edición para introducir datos a calcular.`nSe debe escribir el nivel pico de la señal de entrada, el umbral y la proporción, según lo que aparezca.`nPulsa alt+shift+q para terminar el script.`nTenga en cuenta que el compresor puede comprimir menos, dependiendo principalmente del ataque, la rodilla y el tamaño de rms. En mis pruebas con tono sinusoidal o ruído rosa que son señales constantes, el nivel de compresión coincidió con el cálculo del script.`nSi el compresor comprime lentamente, es posible que la reducción de ganancia no llegue al punto máximo informado en este script. Esto significa que la compensación de volumen también deba ser menos, de lo contrario el volumen de salida será un poco mayor que la entrada.`nSi estás usando Reacomp, mira el cuadro al lado del tamaño rms, que muestra la cantidad de compresión.`nSi la cantidad en este cuadro es menor que el resultado informado aquí y quieres alcanzar tal nivel, prueba disminuir el umbral, mira denuevo el cuadro.`nAlternativamente, si usas Reacomp puedes abrir el visor de picos con el efecto insertado y enfocado, y configurar el aviso automático o no, según tus preferencias, o consultar el nivel de compresión de cada canal con los atajos correspondientes de cada visor.`nY sobre todas las cosas, escucha."

+!c::
InputBox, entrada, Entrada, Ingrese el nivel de entrada de la señal
if ErrorLevel {
entrada := ""
return
}
else
InputBox, Umbral, umbral, Ingrese el umbral del compresor
if ErrorLevel {
entrada := ""
umbral := ""
return
}
else
InputBox, proporcion, Proporción, Ingrese la proporción (ratio) a comprimir
if ErrorLevel {
entrada := ""
umbral := ""
proporcion := ""
return
}
else
salida := (entrada - umbral) / proporcion + (umbral)
resultado := (salida-entrada)*-1
msgBox, 64, "Resultado", %resultado%
+!q::
soundBeep, 880, 500
exitApp