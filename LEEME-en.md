# CheaText Full

CheaText Full is an AI text correction tool for Windows that works in any text field in the system, not only on web pages. It is designed to improve text in applications such as Discord, Twitch, WhatsApp Desktop, browsers, Notepad, Word, Google Docs, and other tools that accept direct typing.

The main idea is simple: press a global shortcut, the program reads the text from the active field, corrects or adapts it with AI, and writes it back in the same place, simulating real keyboard input so the system treats it as if you had typed it yourself.

## What it does

The current version includes:

- Spelling and grammar correction with artificial intelligence.
- Tone adjustment: informal, natural, or formal.
- Translation between languages.
- Text shortening.
- Support for multiple AI providers with automatic fallback.
- Flexible selection modes for chats, documents, or manually selected text.
- Optional automatic sending with Enter.
- Configuration interface with dark and light themes.
- System tray icon for opening settings and exiting the program.

## Global shortcut

Main shortcut:

- Alt + Enter

To use it, place the cursor in the text field where you are writing and press Alt + Enter. CheaText will:

1. Detect the active field.
2. Read the text at the cursor or the current selection.
3. Process it with the configured AI provider, trying the next provider if necessary.
4. Replace the text in the same field.
5. Show a notification with the result and the provider used.

## Selection modes

The settings let you choose how text is selected:

- CHAT mode: selects the complete content of the field, useful for Twitch, Discord, search boxes, Notepad, and similar apps.
- DOCUMENT mode: uses a configurable shortcut to select the relevant text in documents or text editors.
- User selection: processes only the text you selected before pressing Alt + Enter.

This makes the program useful for both quick conversations and longer texts or documents.

## AI providers

The supported providers are:

- Google Gemini
- Groq
- Mistral
- OpenAI
- Anthropic
- Cerebras

The app tries the first enabled provider and, if it fails because of a quota or temporary error, automatically tries the next available provider according to the configured priority order.

## Configuration

When the program starts without a configured provider, the settings window opens automatically.

From there you can configure:

- Interface language
- Default tone
- Translation
- Source and destination languages
- Text shortening
- Automatic sending with Enter
- Selection mode (chat, document, or manual selection)
- Selection shortcuts for each mode
- Enabled providers and their API keys
- Provider priority order

The configuration is saved at:

```
%USERPROFILE%\.cheatext\config.json
```

On Windows, API keys are protected with DPAPI before they are saved.

## Requirements

- Python 3.10 or newer
- Windows
- Dependencies listed in `requirements.txt`

## Installation

1. Run the CheaText installer.
2. Choose the installation language.
3. Follow the steps shown by the installer.
4. Read `LEEME.txt` in the installation folder for more information.

## Running the application

After starting, the application runs in the background with an icon in the system tray. From there you can open the settings or exit the program.

## Important notes

- The shortcut is global and works from any window while the application is running.
- The program prevents the shortcut from interfering with the active field by releasing keys and simulating keyboard events.
- If another program uses Alt + Enter for a different action, CheaText may take control of that shortcut.
- The automatic sending option simulates Enter after replacing the text, so use it carefully.
- If no provider is configured, the settings window opens automatically at startup.

## Closing the app

Right-click the system tray icon and select **Exit**.

## Summary

CheaText Full is a desktop tool for rewriting text with AI in any application, with support for multiple providers, translation, shortening, and advanced configuration options.
