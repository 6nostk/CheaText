# CheaText Full

CheaText Full es un corrector de texto con IA para Windows que funciona en cualquier campo de texto del sistema, no solo en páginas web. Está pensado para mejorar texto en aplicaciones como Discord, Twitch, WhatsApp Desktop, navegadores, Notepad, Word, Google Docs y otras herramientas que aceptan escritura directa.

La idea principal es simple: pulsas un atajo global, el programa lee el texto del campo activo, lo corrige o adapta con IA y lo vuelve a escribir en el mismo sitio, simulando pulsaciones reales de teclado para que el sistema lo trate como si lo hubieras escrito tú.

## Qué hace ahora

El programa actual incluye estas funciones:

- Corrector de ortografía y gramática con inteligencia artificial.
- Ajuste de tono: informal, natural o formal.
- Traducción entre idiomas.
- Reducción de longitud del texto para dejarlo más corto.
- Soporte de múltiples proveedores de IA con respaldo automático.
- Modo de selección flexible para chats, documentos o texto manualmente seleccionado.
- Envío automático con Enter opcional.
- Interfaz gráfica de configuración con tema oscuro/claro.
- Icono en la bandeja del sistema para abrir ajustes y salir del programa.

## Atajo global

Atajo principal:

- Alt + Enter

Cuando lo pulsas, el programa:

1. Detecta el campo activo.
2. Lee el texto donde está el foco o la selección actual.
3. Lo procesa con la IA usando el proveedor activo y, si falla, prueba el siguiente.
4. Reemplaza el texto en ese mismo campo.
5. Muestra toasts informativos con el resultado y el proveedor usado.

## Modos de selección

La configuración permite elegir cómo se toma el texto:

- Modo CHAT: selecciona el contenido del campo completo, útil para Twitch, Discord, buscadores, Notepad, etc.
- Modo DOCUMENTO: usa un atajo configurable para seleccionar el texto relevante de documentos o editores de texto.
- Selección del usuario: solo procesa el texto que tú hayas marcado antes de pulsar Alt + Enter.

Esto hace que el programa sea útil tanto para conversaciones rápidas como para textos más largos o documentos.

## Proveedores de IA

Actualmente soporta estos proveedores:

- Google Gemini
- Groq
- Mistral
- OpenAI
- Anthropic
- Cerebras

La app intenta usar el primer proveedor habilitado y, si falla por cuota o error temporal, pasa automáticamente al siguiente disponible según el orden configurado.

## Configuración

Al arrancar, si no hay ningún proveedor configurado, se abre la ventana de configuración automáticamente.

Desde ahí puedes configurar:

- idioma de la interfaz
- tono por defecto
- si quieres traducir el texto
- idiomas de origen y destino
- si quieres acortar el texto
- si quieres enviar automáticamente con Enter
- modo de selección (chat, documento o selección manual)
- atajos de selección para cada modo
- proveedores activos y sus API keys
- orden de prioridad de proveedores

La configuración se guarda en:

```
%USERPROFILE%\.cheatext\config.json
```

En Windows, las API keys se protegen con DPAPI antes de guardarse.

## Requisitos

- Python 3.10 o superior
- Windows
- Dependencias listadas en `requirements.txt`

## Instalación

1. Instala Python 3.10+.
2. En la carpeta del proyecto ejecuta:

```powershell
pip install -r requirements.txt
```

3. Arranca la aplicación:

```powershell
python app.py
```

## Ejecutar la aplicación

```powershell
python app.py
```

Al abrirse, el programa queda ejecutándose en segundo plano con un icono en la bandeja del sistema. Desde allí puedes abrir la configuración o salir del programa.

## Empaquetado a .exe

Si quieres generar un ejecutable independiente:

```powershell
pip install pyinstaller
pyinstaller --onefile --noconsole --name cheatext app.py
```

Esto genera un archivo `dist\cheatext.exe` que puedes mover o ejecutar directamente sin instalar Python en la máquina destino.

## Consideraciones importantes

- El atajo es global: funciona desde cualquier ventana mientras la aplicación siga corriendo.
- El programa evita que el propio atajo interfiera con el campo activo usando liberaciones de teclado y simulación de eventos.
- Para evitar errores de escritura, si un programa usa Alt + Enter para otra función, el programa puede tomar ese atajo en su lugar.
- La opción de "Enviar automáticamente" puede ser útil, pero es más riesgosa porque simula Enter después de reemplazar el texto.
- Si no existen proveedores configurados, la interfaz de configuración se abre automáticamente al inicio.

## Cómo cerrar la app

Haz clic derecho sobre el icono de la bandeja y selecciona "Salir".

## Resumen

CheaText Full ya no es solo un corrector simple: es una herramienta de escritorio para reescribir texto con IA en cualquier aplicación, con soporte para múltiples proveedores, modos de selección, traducción, acortamiento y ajustes avanzados de configuración.
