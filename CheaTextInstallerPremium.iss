; Instalador elegante de CheaText
; Compila con: "C:\Users\Gnostk\AppData\Local\Programs\Inno Setup 6\ISCC.exe" "CheaTextInstallerPremium.iss"

#define MyAppName "CheaText"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "CheaText"
#define MyAppURL "https://example.com"
#define MyAppExeName "CheaText.exe"
#define MyAppIcon "CT.ico"
#define MyWizardImage "installer_wizard.bmp"
#define MyWizardSmallImage "installer_wizard_small.bmp"

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
OutputBaseFilename=CheaText-setup-premium
OutputDir=listo
Compression=lzma
SolidCompression=yes
WizardStyle=modern
DisableWelcomePage=no
PrivilegesRequired=admin
SetupIconFile={#MyAppIcon}
UninstallDisplayIcon={app}\{#MyAppExeName}
WizardImageFile={#MyWizardImage}
WizardSmallImageFile={#MyWizardSmallImage}
AppendDefaultDirName=yes
CreateAppDir=yes
CreateUninstallRegKey=yes

[Messages]
WelcomeLabel1={cm:WelcomeTitle}
WelcomeLabel2={cm:WelcomeDescription}

[CustomMessages]
spanish.WelcomeTitle=Bienvenido a CheaText
english.WelcomeTitle=Welcome to CheaText
spanish.WelcomeDescription=Este asistente le ayudará a instalar CheaText en su equipo.%n%nCheaText corrige, traduce, acorta y reescribe texto con IA en cualquier aplicación.
english.WelcomeDescription=This wizard will help you install CheaText on your computer.%n%nCheaText corrects, translates, shortens, and rewrites text with AI in any application.
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
