; Instalador Oficial y Limpio de CheaText v2.0.0
; Compila directamente desde Inno Setup Compiler

#define MyAppName "CheaText"
#define MyAppVersion "2.0.0"
#define MyAppPublisher "CheaText"
#define MyAppURL "https://github.com"
#define MyAppExeName "CheaText.exe"
#define MyAppIcon "CT.ico"

[Setup]
AppId={{D4C2B4D2-8745-4C6C-A911-C264E0B457BB}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=no
OutputBaseFilename=CheaText-setup-v2
OutputDir=listo
Compression=lzma
SolidCompression=yes
WizardStyle=modern
DisableWelcomePage=no
PrivilegesRequired=admin
SetupIconFile={#MyAppIcon}
UninstallDisplayIcon={app}\{#MyAppExeName}
AppendDefaultDirName=yes
CreateAppDir=yes
CreateUninstallRegKey=yes

[Languages]
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Messages]
; Forzamos el texto directamente en el idioma nativo de Inno Setup para solucionar el bug visual
spanish.WelcomeLabel1=Bienvenido a CheaText
spanish.WelcomeLabel2=Este asistente le ayudará a instalar CheaText en su equipo.%n%nCheaText corrige, traduce, acorta y reescribe texto con IA de forma 100% inteligente y automática en cualquier aplicación.

english.WelcomeLabel1=Welcome to CheaText
english.WelcomeLabel2=This wizard will help you install CheaText on your computer.%n%nCheaText corrects, translates, shortens, and rewrites text with AI in a 100% smart and automatic way in any application.

[CustomMessages]
spanish.LaunchProgram=Abrir CheaText
english.LaunchProgram=Open CheaText

[Files]
Source: "dist\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "CT.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "README.md"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"; IconFilename: "{app}\CT.ico"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"; IconFilename: "{app}\CT.ico"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: filesandordirs; Name: "{app}"

