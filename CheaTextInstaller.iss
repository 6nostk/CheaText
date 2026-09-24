; Script de instalación de CheaText
; Compilar con: "C:\Program Files (x86)\Inno Setup 6\ISCC.exe" "CheaTextInstaller.iss"

#define MyAppName "CheaText"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "CheaText"
#define MyAppURL "https://example.com"
#define MyAppExeName "CheaText.exe"
#define MyAppIcon "CT.ico"

[Setup]
AppId={{4D6A19F0-B82C-46D8-BF90-CB50D3E23407}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=no
OutputBaseFilename=CheaText-setup
OutputDir=listo
Compression=lzma
SolidCompression=yes
WizardStyle=modern
DisableWelcomePage=no
PrivilegesRequired=admin
SetupIconFile={#MyAppIcon}
UninstallDisplayIcon={app}\{#MyAppExeName}
CreateAppDir=yes
CreateUninstallRegKey=yes

[Messages]
WelcomeLabel2={cm:WelcomeDescription}

[CustomMessages]
spanish.WelcomeDescription=Este asistente le ayudará a instalar CheaText en su equipo.%n%nCheaText mejora texto en cualquier aplicación con IA.
english.WelcomeDescription=This wizard will help you install CheaText on your computer.%n%nCheaText improves text in any application with AI.
spanish.LaunchProgram=Abrir CheaText
english.LaunchProgram=Open CheaText

[Languages]
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "CT.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "LEEME.md"; DestDir: "{app}"; DestName: "LEEME.txt"; Flags: ignoreversion; Languages: spanish
Source: "LEEME-en.md"; DestDir: "{app}"; DestName: "README.txt"; Flags: ignoreversion; Languages: english

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"; IconFilename: "{app}\CT.ico"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"; IconFilename: "{app}\CT.ico"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: filesandordirs; Name: "{app}"
