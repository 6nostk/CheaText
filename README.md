# CheaText

CheaText es una aplicación de Windows que corrige, traduce, acorta y reescribe texto con IA en cualquier campo de escritura.

## Descargar para Windows

Los instaladores se publican en la sección **Releases** de GitHub:

- `CheaText-setup-premium.exe`
- `CheaText-setup.exe`

No es necesario instalar Python. Después de instalar CheaText, abre la configuración, activa al menos un proveedor de IA e introduce su API key. Las claves se almacenan protegidas en Windows y nunca deben publicarse en GitHub.

## Uso

1. Coloca el cursor en la casilla donde estás escribiendo.
2. Presiona `Alt + Enter`.
3. CheaText procesa el texto y lo devuelve en el mismo campo.

## Desarrollo

Requisitos: Windows y Python 3.10 o superior.

```powershell
pip install -r requirements.txt
python app.py
```

Para generar el ejecutable:

```powershell
pyinstaller --clean --noconfirm CheaText.spec
```

Los instaladores se compilan con Inno Setup usando `CheaTextInstaller.iss` o `CheaTextInstallerPremium.iss`.

Consulta `LEEME.md` para la documentación completa en español o `LEEME-en.md` para la versión en inglés.
