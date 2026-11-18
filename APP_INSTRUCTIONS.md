# Pheonix - Application Instructions

This file is the main instruction and application-details document for this
project. Update this file every time the assistant is changed, rebuilt, or given
a new feature so the latest behavior is always documented in one place.

## Update Rule

When any code, feature, command, UI behavior, dependency, build process, or data
format changes, update the relevant section in this file and add a new entry to
the Change Log at the bottom.

## Application Summary

Pheonix is a free local Windows desktop AI assistant built with Python. It runs
a futuristic HUD-style Tkinter interface, chats through a local Ollama model,
opens desktop apps and websites, handles normal typed language, supports
optional voice features, stores personal notes/reminders locally, and can
schedule assistant operations to run later.

The app is designed for VS Code development and can also be packaged as a
Windows executable.

## Main Features

- Futuristic Jarvis/Friday-style black-and-blue HUD interface.
- UI Pack 2 dashboard row with live RAM, voice, power, Ollama, schedule,
  storage, and network tiles.
- UI Pack 4 chat polish with timestamps, message action buttons, copy support,
  rerun buttons, and collapsed long-output viewing.
- UI Pack 5 voice visualizer with animated mic waveform and clearer voice
  states such as sleeping, ready, listening, processing, and voice mode.
- Pack 25 UI polish: command status lights, dashboard tile status lights, a
  compact/expanded HUD toggle, HUD notification banners, and an animated PX
  listening/processing ring.
- Packs 23-33 advanced layer: voice doctor and microphone listing, advanced app
  status/open-focus/force-close controls, create/write/copy/move/safe-delete
  file operations, personal favorite shortcuts, confirmation guards, repeating
  automations, smart dashboard reports, JSON plugin commands, context-aware
  Ollama brain replies, and a Pheonix error doctor.
- Packs 34-48 next AI layer: screen capture/OCR helpers, agent goal mode, app
  setup modes, voice personality presets, knowledge vault folders, message
  drafting/templates, maintenance reports, exact-time smart reminders, command
  learning, mini HUD, overlay mode, AI planner, coding helper, document reader,
  and local assistant-data backup.
- Packs 49-64 reliability layer: agent previews, confirmation queue,
  notification center, memory export/import, local search index, OCR setup
  helper, command analytics, macro recorder, smart error recovery, research
  mode, Kanban task board, focus guardian, voice training, full backup/restore,
  plugin marketplace, and project Q&A.
- Latest UI upgrade: command-center strip, assistant state core, dedicated voice
  HUD panel, reminder timeline, mode/plugin dashboard, screen assistant panel,
  five-row running-app list, mini assistant window, overlay mode, and stored
  theme presets (`jarvis`, `dragon`, `minimal`, `contrast`).
- Pack 7 command autocomplete with live suggestion chips, Tab completion,
  command history navigation, and dynamic suggestions for apps, routines,
  contacts, profile fields, preferences, and saved memories.
- Completely black sleep screen on launch.
- Double-clap wake support through the microphone when `sounddevice` is available.
- Voice wake command support with the primary phrase `wake up Pheonix` when
  `sounddevice`, `vosk`, and a Vosk model path are available.
- Pack 10 wake engine diagnostics: live wake meter in the sidebar, wake status
  messages, quiet/normal/noisy clap sensitivity presets, and a Wake Test window
  for checking double clap and voice wake readiness.
- Jarvis wake engine upgrade: configurable wake phrase list, fuzzy wake-word
  matching, adjustable wake similarity threshold, and strict/fuzzy wake modes.
- Microphone calibration wizard that samples room noise, clap strength, and
  speech level, then saves recommended wake thresholds.
- Manual wake by clicking the black screen or pressing Enter.
- Startup/wake greeting is short and time-aware with the name `Vishwa`, for
  example `Good morning, Vishwa.` or `Good afternoon, Vishwa.`, without time,
  date, or operation suggestions.
- Local AI chat through Ollama.
- Natural text commands, not only slash commands.
- Settings window for model, voice, clap sensitivity, wake phrases, auth mode,
  news API options, SMTP, Twilio, and schedule confirmation preferences.
- App permission rules with allow/block/prompt policies for local apps.
- Optional authentication layer with voice passphrase unlock, face enrollment,
  face verification, and lock-on-wake support.
- Mobile companion sync export/import with pairing codes and a reusable sync
  bundle stored in `data/mobile_sync`.
- Desktop app opening, for example `open Chrome` or `open notepad`.
- Desktop app closing, for example `close Chrome` or `/close notepad`.
- Desktop window control, for example `focus Chrome`, `minimize Chrome`,
  `maximize notepad`, `restore Chrome`, `restart notepad`, and
  `close current window`.
- System diagnostics Pack 6: local system report, battery/power status,
  memory/RAM status, drive usage, network/local IP status, top memory-heavy
  processes, and system-report clipboard copy.
- Running-apps sidebar dashboard with quick focus and close buttons.
- Scrollable left HUD sidebar so timer, running apps, and quick commands remain
  accessible on smaller screens.
- Sci-fi themed custom scrollbars for the sidebar and chat panel, with smooth
  mouse-wheel scrolling.
- Fixed left HUD header with the Pheonix name, local status, and PX circular
  core while only the lower options/panels scroll.
- Compact HUD mode hides the central scanner for a tighter chat-focused layout;
  use the COMPACT/EXPAND header button or the Compact HUD quick command.
- Dark Windows title bar/chrome so minimize, maximize, restore, and close blend
  with the black HUD theme, applied after the window is mapped to catch Tk's
  native parent frame.
- Installed app discovery from Windows Start Menu shortcuts for opening apps
  beyond the built-in alias list.
- Custom app shortcuts stored in local data.
- Contact book for saved phone numbers and email addresses.
- Local memory for facts such as IDs and preferences.
- Smart memory Pack 5: personal profile fields, assistant preferences, memory
  search, memory updates, and a personal context summary.
- Website opening, for example `open youtube.com`.
- Browser-targeted website opening, for example `open chatgpt in chrome` or
  `open youtube in edge`.
- Google and YouTube search.
- Live weather via Open-Meteo API and live news via NewsAPI, GNews, or RSS
  fallback instead of only opening browser shortcuts.
- Local ML intent integration with trainable text-to-command examples,
  confidence-based command suggestions, and optional `scikit-learn` support for
  a lightweight on-device intent model.
- Continuous unsupervised chat learning that clusters your conversations into
  evolving local topics, tracks your vocabulary, and can surface similar past
  conversations without requiring manual labels.
- Music/video opening through local folders or YouTube search.
- File assistant Pack 2: search common folders, search a specific folder,
  open the latest screenshot/download/image/Python file, open a matched file,
  and copy a matched file path to the clipboard.
- Clipboard assistant Pack 2: show clipboard text, summarize clipboard text
  with Ollama, save clipboard text as a note, search clipboard text on Google,
  open a website link from the clipboard, and clear the clipboard.
- Routine automation Pack 3: create named routines, add multiple assistant
  operations as steps, list/show routines, run routines, remove individual
  steps, clear routines, delete routines, and schedule routines for later.
- Email draft creation and real email sending through configured SMTP.
- SMS sending through configured Twilio, with SMS draft fallback when Twilio is
  not configured.
- WhatsApp message draft creation.
- Notes stored in local JSON data.
- Reminders and alarms stored in local JSON data.
- Reminder manager commands for cancellation.
- Daily and weekly repeating reminders.
- On-screen countdown timer for the nearest reminder, alarm, or scheduled operation.
- Scheduled operations, for example `in 5 minutes open Chrome`.
- Optional confirmation before scheduled operations run.
- Optional voice replies with `pyttsx3`.
- Human voice upgrade: warmer spoken text cleanup, natural pauses, short
  response variation, voice style presets, speed/volume tuning, voice tests,
  installed voice listing, and pronunciation dictionary commands.
- Optional offline voice input with Vosk.
- Voice setup status check through `voice status`, `/voice status`, and the
  Pheonix Settings voice status button.
- Vosk model path can be saved from chat with `/voice model <folder path>` or
  `set voice model path to <folder path>`.
- Persistent Vosk model path setting so the executable can use voice input even
  when `VOSK_MODEL_PATH` was not set in the launching terminal.
- Advanced voice Pack 4: one-shot listening with `listen`, continuous
  hands-free voice mode with `start voice mode`, spoken command display in the
  chat, model caching for faster repeated recognition, timeout handling, and
  stop commands such as `stop voice mode` or `go to sleep`.
- Voice Conversation Pack 9: saying the wake phrase can start continuous voice
  conversation automatically, `Ctrl+Space` and `F9` act as push-to-talk hotkeys,
  and risky spoken actions ask for a yes/no confirmation before running.
- Pack 10 wake engine diagnostics: live wake meter in the sidebar, wake status
  messages, quiet/normal/noisy clap sensitivity presets, and a Wake Test window
  for checking double clap and voice wake readiness.
- Pack 11 voice command accuracy: spoken command previews, voice aliases such
  as `browser` -> `Chrome`, correction phrases such as `no I meant Chrome`, and
  a Voice History window for recent transcripts.
- Pack 12 app automation workflows: open Chrome/YouTube and search, open
  Notepad with drafted text, open VS Code projects, and open File Explorer in
  known folders.
- Pack 13 local knowledge brain: search local readable files, ask Ollama
  questions using local file context, summarize local folders, and list
  knowledge sources.
- Pack 22 app skill profiles: browser tab/search/site actions, VS Code terminal,
  command palette and run-file actions, and Notepad draft creation.
- Pack 15 system control: volume up/down/mute, approximate volume setting,
  screenshot saving, Wi-Fi/Bluetooth/brightness settings shortcuts, PC lock,
  confirmed shutdown/restart, shutdown cancellation, temp scanning, and
  confirmed user-temp cleanup.
- Pack 16 productivity: task list, today's plan, calendar-style reminders,
  Pomodoro timer, focus mode, study mode, and scheduled routine starts.
- Pack 18 workspace awareness: active-window detection, workspace snapshots,
  snapshot copy, saved workspace profiles, profile restore, numbered visible-
  window maps, and numbered window focus/minimize/maximize/restore/close
  actions.
- Pack 23 voice reliability tools: `/voice doctor`, `/voice devices`,
  `/voice calibrate`, microphone listing, setup fixes, and push-to-talk backup
  guidance.
- Pack 24 advanced app control: `/appcontrol status`, `/appcontrol openfocus`,
  `/appcontrol forceclose`, expanded app aliases, and natural commands such as
  `app status Chrome` or `open and focus Chrome`.
- Pack 26 advanced file assistant: `/files` commands and natural commands to
  create folders, create/write files, copy/move matched files, and request
  confirmed file deletion.
- Pack 27 personal shortcuts: favorite app, website, and music preferences with
  commands such as `my favorite app is Chrome` and `open my favorite app`.
- Pack 28 safety guard: risky file deletion and force-close actions create a
  pending safety preview that must be completed with `confirm action` or stopped
  with `cancel action`.
- Pack 29 automation builder: repeating automations with create/list/pause/
  resume/delete/run controls, plus natural commands such as
  `every 30 minutes open youtube.com`.
- Pack 30 smart dashboard: `/dashboard smart` and `smart dashboard` summarize
  RAM, battery, storage, network, Ollama, timers, automations, and safety state.
- Pack 31 plugin system: JSON plugin files in `plugins\` can define simple
  local phrase commands for opening URLs/apps, Google searches, or notes.
- Pack 32 local AI brain: `/brain <question>` and normal fallback chat send
  personal context, dashboard status, running-window hints, and local ability
  guidance to Ollama.
- Pack 33 error doctor: `/doctor` and `error doctor` report data-folder
  writability, temp-folder health, Ollama port status, Vosk model detection,
  executable presence, aliases, and pending safety state.
- Pack 34 screen assistant: `/screen capture`, `/screen read`, and
  `/screen ask <question>` use local screenshot capture and optional OCR.
- Pack 35 agent mode: `/agent run study`, `/agent run coding`,
  `/agent run meeting`, and `/agent run movie` run safe multi-step goals.
- Pack 36 app profiles: `/mode save <name>: <step>; <step>`, `/mode run`,
  `/mode list`, and natural `study mode` style commands.
- Pack 37 voice personality: `/personality concise|friendly|silent|detailed`.
- Pack 38 knowledge vault: `/vault add <folder>`, `/vault search <query>`,
  `/vault ask <question>`, and `/vault summarize`.
- Pack 39 message assistant: `/compose email <to> about <topic>`,
  `/compose message <target> about <topic>`, and `/template` commands.
- Pack 40 maintenance assistant: `/maintenance slow`, `/maintenance large`,
  `/maintenance startup`, and `/maintenance temp`.
- Pack 41 smart reminders: exact-time daily/weekly operation reminders with
  `/smartreminder every day 19:00 <operation>` and snooze/list support.
- Pack 42 command learning: `/learn when I say <phrase> do <operation>`.
- Pack 43 mini assistant: `/mini` or `mini assistant` opens a small topmost HUD
  command box.
- Pack 44 overlay mode: `/overlay on` and `/overlay off` change the HUD opacity
  and topmost behavior.
- Pack 45 AI planner: `/planner day` and `/planner study 2h python`.
- Pack 46 coding assistant: `/coding todo`, `/coding explain`, and `/coding run`.
- Pack 47 document reader: `/reader summarize <file>` and `/reader search`.
- Pack 48 secure settings vault: `/secure status` and `/secure backup`.
- UI Pack 6 command-center layout: four compact main tiles for state, voice,
  next action, and active mode counts.
- UI Pack 8 assistant state core: the central PX scanner changes color and
  labels for sleeping, ready, listening, thinking, confirmation, and speak-ready
  states.
- UI Pack 10 voice HUD: sidebar voice status, last heard command, mic mode, and
  animated waveform meter.
- UI Pack 11 reminder timeline: sidebar preview of the next three reminder,
  alarm, scheduled operation, automation, or smart reminder events.
- UI Pack 12 app panel: the running-app panel now shows five rows with quick
  focus and close controls.
- UI Pack 13 plugin/mode dashboard: sidebar counts and quick buttons for modes,
  plugins, learned commands, and vault folders.
- UI Pack 14 screen assistant panel: sidebar capture/read buttons and last
  screen capture status.
- UI Pack 15 theme system: settings field `ui_theme` supports `jarvis`,
  `dragon`, `minimal`, and `contrast`; restart the HUD to fully redraw a saved
  theme.
- Executable build through PyInstaller.

## Important Safety Behavior

- `email ...` and `message ...` commands open drafts.
- `send email ...` sends only when SMTP environment variables are configured.
- `send sms ...` sends automatically when Twilio environment variables are
  configured; otherwise it opens an SMS draft for the phone number.
- Without provider credentials, Pheonix reports what is missing instead of
  pretending that a message was sent.
- Scheduled operations and routine steps run only built-in assistant actions
  such as open, close, search, Pack 2 file/clipboard actions, play, configured
  communication, calculate, routines, and voice on/off.
- Optional scheduled operation confirmation can be enabled in Pheonix Settings.
- The assistant does not run arbitrary shell commands from user text.
- Pheonix refuses broad app-closing requests such as `close all apps`.
- Pack 15 shutdown, restart, and temp cleanup commands require explicit
  confirmation words. Shutdown and restart use a 60-second Windows timer so
  `cancel shutdown` can abort them.
- Pack 15 temp cleanup is limited to the current user's temp folder and skips
  locked items.
- Pack 28 file deletion and force-close requests do not run immediately. Pheonix
  shows a safety preview and waits for `confirm action`; `cancel action` clears
  the pending action.
- Window focus/minimize/maximize/restore commands affect visible top-level
  Windows app windows that Pheonix can match by title or process name.
- Personal data is stored locally in the project `data` folder.

## Project Structure

```text
AI Assistant/
  assistant.py                  Main launcher for HUD or console mode
  APP_INSTRUCTIONS.md           This application detail and update log file
  README.md                     Quick overview and fast start
  build_exe.ps1                 Builds the Windows executable
  requirements-build.txt        Build dependency list
  requirements-optional.txt     Optional voice dependency list
  .vscode/
    launch.json                 VS Code run/debug configuration
    settings.json               VS Code Python settings
    tasks.json                  VS Code build task
  data/
    assistant_data.json         Local generated data file
  docs/
    SETUP.md                    Full setup guide
  src/
    advanced_packs.py           Packs 23-33 advanced commands, safety, automation, plugins
    advanced_core.py            Briefing, timers, favorites, chat export, cleanup
    app.py                      Console assistant loop
    app_automation.py           Pack 12 app workflow automation helpers
    app_skills.py               Pack 22 app-specific skill profiles
    autocomplete.py             Pack 7 command suggestion and completion engine
    brain.py                    Pack 32 context-aware Ollama brain wrapper
    commands.py                 Slash command handling
    clipboard_tools.py          Clipboard show, summarize, note, search, link, clear helpers
    communication.py            Email and SMS sending helpers
    contacts.py                 Saved contact helpers
    config.py                   Paths, Ollama model, app aliases, help text
    desktop.py                  Opens/closes apps, folders, websites, and discovered shortcuts
    file_tools.py               File search, latest-file opening, file open, path copy helpers
    future_packs.py             Packs 34-48 screen, agent, vault, planner helpers
    enhancement_packs.py        Packs 49-64 reliability, search, backup, project tools
    gui.py                      Tkinter HUD interface and wake/schedule loops
    knowledge.py                Pack 13 local file knowledge search and Q&A
    natural.py                  Natural language command parser
    memory.py                   Local memory helpers
    ollama_client.py            Ollama chat API client
    personal.py                 Notes, reminders, alarms, scheduled operations
    productivity.py             Pack 16 tasks, daily plan, and focus timers
    routines.py                 Pack 3 named routine creation, step management, and lookup
    storage.py                  JSON load/save and default data structure
    system_control.py           Pack 15 guarded Windows system controls
    system_tools.py             Pack 6 local system diagnostics and reports
    voice.py                    Voice input/output helpers
    workspace_awareness.py      Pack 18 active-window, snapshots, and profiles
  plugins/
    example_plugin.json         Starter Pack 31 plugin created automatically
```

Generated folders such as `.venv`, `dist`, `_build_work`, `_build_spec`, and
`__pycache__` are not source files.

## Runtime Requirements

Required:

- Windows
- Python 3.11 or newer
- Ollama
- Ollama model `llama3.2`

Optional:

- `pyttsx3` for voice replies
- `sounddevice` for clap wake and microphone input
- `vosk` plus a local Vosk model for offline speech recognition
- SMTP credentials for email sending
- Twilio credentials for SMS sending

## Setup Commands

Create and activate the virtual environment:

```powershell
python -m venv .venv
.\.venv\Scripts\Activate.ps1
python -m pip install --upgrade pip
```

Install optional voice packages:

```powershell
pip install -r requirements-optional.txt
```

Pull the local Ollama model:

```powershell
ollama pull llama3.2
```

Start Ollama if it is not already running:

```powershell
ollama serve
```

If `ollama serve` says port `11434` is already in use, Ollama is already
running.

## How To Run

Run the HUD interface:

```powershell
python assistant.py
```

Run console mode:

```powershell
python assistant.py --cli
```

Run the executable:

```powershell
.\dist\Pheonix.exe
```

## How To Build The Executable

```powershell
.\build_exe.ps1
```

Expected output:

```text
dist\Pheonix.exe
```

The executable contains the assistant code. Ollama and the selected model must
still be installed on the computer running the app.

## Email And SMS Sending

Email sending uses SMTP environment variables. Example:

```powershell
$env:PHEONIX_SMTP_HOST='smtp.gmail.com'
$env:PHEONIX_SMTP_PORT='587'
$env:PHEONIX_SMTP_USER='your_email@gmail.com'
$env:PHEONIX_SMTP_PASSWORD='your_app_password'
$env:PHEONIX_EMAIL_FROM='your_email@gmail.com'
python assistant.py
```

Optional SSL mode:

```powershell
$env:PHEONIX_SMTP_SSL='true'
```

Email commands:

```text
send email to alex@example.com subject Hello message Testing Pheonix
/email alex@example.com subject Hello message Testing Pheonix
```

SMS sending uses Twilio environment variables. Example:

```powershell
$env:PHEONIX_TWILIO_ACCOUNT_SID='your_account_sid'
$env:PHEONIX_TWILIO_AUTH_TOKEN='your_auth_token'
$env:PHEONIX_TWILIO_FROM_NUMBER='+1234567890'
python assistant.py
```

SMS commands:

```text
send sms to 919876543210 message hello from Pheonix
sms 919876543210 hello from Pheonix
/sms 919876543210 hello from Pheonix
in 5 minutes send sms to 919876543210 message meeting starts now
```

SMS is not truly free without a provider. Pheonix supports the provider through
configuration, but the provider account controls pricing and limits. Without
Twilio, Pheonix uses the system `sms:` handler to open a draft for the phone
number when available.

## Sleep And Wake Behavior

At startup Pheonix covers the window with a completely black sleep screen. No
instructions or labels are shown while sleeping.

Wake triggers:

```text
Option 1: say "wake up Pheonix"
Option 2: double clap near the microphone
Option 3: click the black screen or press Enter
```

Clap wake needs `sounddevice` and uses double clap by default. Spoken wake needs
`sounddevice`, `vosk`, and a valid Vosk model path. The app accepts both
`Pheonix` and `Phoenix` spellings in its wake phrase list because speech
recognition usually writes the word as `Phoenix`. Type `wake commands`,
`/voice wake`, or `/wake` to show the active voice wake examples.

Pack 10 adds a wake engine panel in the left sidebar. It shows whether double
clap and voice wake are armed, a live microphone level meter while Pheonix is
sleeping, and the current peak/RMS levels against the wake thresholds. Click
`Wake Test` in Quick Commands or Pheonix Settings, or type `wake test`, to open
a 10-second wake calibration window. In Settings, use the wake sensitivity
presets:

```text
Quiet  - lower clap thresholds for soft microphones
Normal - default laptop microphone tuning
Noisy  - higher clap thresholds for noisy rooms
```

## Voice Mode

One-shot voice input listens for a single command:

```text
listen
/listen
```

Continuous voice mode keeps listening after Pheonix is awake:

```text
start voice mode
/voice on
```

If the black sleep screen is active and Vosk wake recognition is configured,
saying `wake up Pheonix` wakes the HUD and starts voice
conversation mode automatically.

While voice mode is active, spoken commands appear in the chat as user messages
and are processed like typed commands. Say any normal command, for example:

```text
open notepad
search Google for Python projects
show routines
start routine study mode
summarize clipboard
```

Push-to-talk is available from the HUD at any time after launch:

```text
Ctrl+Space
F9
```

Risky spoken actions such as closing apps, sending messages, clearing data, or
deleting routines enter a confirmation state. Say `yes`, `confirm`, or `do it`
to run the action. Say `no`, `cancel`, or `never mind` to stop it.

Pack 11 improves spoken command accuracy. Pheonix shows a preview like
`Voice heard: ...` before it runs the recognized command. Common spoken aliases
are normalized, for example:

```text
open browser                -> open Chrome
open you tube               -> open YouTube
open visual studio code     -> open VS Code
show open apps              -> show running apps
```

If Pheonix heard the target wrong, speak a correction:

```text
no I meant Chrome
correct that to Notepad
```

For example, after a mistaken `open edge`, saying `no I meant Chrome` runs
`open Chrome`. Use `voice history`, `/voice history`, or the Voice Log quick
button to review recent raw transcripts and the final command Pheonix used.

## Human Voice Tuning

Pheonix can make spoken replies less robotic while staying free and offline with
`pyttsx3`, or with optional free offline Piper TTS when a Piper executable and
voice model are configured. The human voice layer cleans long screen replies
before speaking, adds small natural pauses, varies short confirmations, applies
speed/volume tuning, and fixes pronunciation for words like `Pheonix`,
`Ollama`, and `Vishwa`.

Natural commands:

```text
make voice human
set voice style calm
set voice speed slow
pronounce Pheonix as Phoenix
test voice
voice settings
list voices
```

Slash commands:

```text
/voice human
/voice style friendly|calm|jarvis|friday|deep|soft|fast|concise|detailed|silent
/voice speed slow|normal|fast|160
/voice volume 85
/voice engine pyttsx3|piper
/voice piper D:\Piper\piper.exe | D:\Piper\voices\en_US.onnx
/voice pronounce Pheonix as Phoenix
/voice test
/voice voices
/voice settings
```

If `voice status` says the microphone package and Vosk are installed but the
readiness line says the model path is missing, download and extract a Vosk model
folder, then save it with:

```text
/voice model D:\Models\vosk-model-small-en-us-0.15
set voice model path to D:\Models\vosk-model-small-en-us-0.15
```

Stop voice mode:

```text
stop voice mode
/voice off
go to sleep
```

Voice mode requires `sounddevice`, `vosk`, and `VOSK_MODEL_PATH`. If those are
missing, Pheonix reports the missing setup instead of silently failing. The
preferred setup is to open Pheonix Settings, paste the extracted Vosk model
folder into `Vosk model path`, save, then run `voice status` or `/voice status`.
Pheonix also checks common model folders such as `D:\Models` and Downloads.

## Natural Command Examples

```text
hello
open notepad
open Chrome
open Chrome and search Python projects
open new tab
close current tab
reopen closed tab
next tab
previous tab
open VS Code terminal
open command palette
run current file in VS Code
create notepad draft meeting notes
save notepad draft ideas: build a better assistant
open YouTube and search lo-fi music
open Notepad and write meeting notes
open VS Code project AI Assistant
open File Explorer in downloads
close notepad
close Chrome
show apps
show running apps
focus Chrome
minimize Chrome
maximize notepad
restore Chrome
close current window
restart notepad
system status
battery status
storage status
memory status
network status
show top processes
copy system report
workspace snapshot
copy workspace snapshot
save workspace as study
show workspace profiles
restore workspace study
active window
window map
focus window 2
minimize window 2
maximize window 2
restore window 2
volume up
volume down
mute volume
set volume 50
take screenshot
open wifi settings
open bluetooth settings
lock pc
scan temp files
open youtube.com
search Google for Python projects
search YouTube for coding tutorials
find file resume.pdf
search downloads for invoice
open file resume.pdf
open downloads file invoice
copy path of resume.pdf
open latest screenshot
open latest download
show clipboard
summarize clipboard
save clipboard as note
search clipboard on Google
open clipboard link
clear clipboard
create routine study mode
add to routine study mode open VS Code
add to routine study mode close YouTube
add to routine study mode: open latest screenshot
show routine study mode
remove step 2 from routine study mode
clear routine study mode
start routine study mode
in 5 minutes start routine study mode
play music
play lo-fi beats
send email to alex@example.com subject Hello message Testing Pheonix
save contact mom phone 919876543210
send sms to mom message hello from Pheonix
send sms to 919876543210 message hello from Pheonix
in 5 minutes send sms to 919876543210 message meeting starts now
remember my roll number is 42
what is my roll number
my name is Alex
call me Alex
set my city to Chennai
show profile
set preference reply style to short
what is my reply style preference
search memories for exam
search my documents for exam timetable
ask my documents about project ideas
summarize project folder
knowledge sources
update memory roll number to 43
what do you remember about me
remind me every day to drink water
cancel reminder 1
email alex@example.com subject Hello message Testing my assistant
message 919876543210 saying hello
remember that my exam is on Friday
show my notes
remind me in 10 minutes to drink water
set alarm in 15 minutes to stretch
in 5 minutes open Chrome
schedule open youtube.com in 10 minutes
remind me in 1 minute to open notepad
show scheduled operations
add task finish math homework
show tasks
mark task 1 done
delete task 1
plan today revise Python; finish notes; email teacher
add to plan drink water
show plan
start pomodoro 25m
start focus mode 45m
start study mode 1h
remind me on 2026-04-20 at 09:00 to submit assignment
schedule routine study mode in 10m
turn voice on
turn voice off
listen
start voice mode
stop voice mode
set voice model path to D:\Models\vosk-model-small-en-us-0.15
go to sleep
calculate 25 * 4 + 10
open downloads
```

## Slash Commands

```text
/help
/apps
/open <app or website>
/close <app>
/running
/skill <app action>
/workspace
/workspace copy
/workspace save <name>
/workspace profiles
/workspace show <name>
/workspace restore <name>
/workspace active
/workspace windows
/window list
/window focus <number>
/window close <number>
/control <action>
/system
/system copy
/battery
/storage
/network
/processes
/ram
/focus <app>
/minimize <app>
/maximize <app>
/restore <app>
/restart <app>
/find <file name>
/openfile <file name>
/copypath <file name>
/latest <screenshot|download|image|python>
/clipboard show
/clipboard summarize
/clipboard note
/clipboard google
/clipboard open
/clipboard clear
/routine create <name>
/routine add <name> <step>
/routine run <name>
/routine remove <name> <step number>
/routine clear <name>
/routine show <name>
/routine list
/routine delete <name>
/note <text>
/notes
/remind <time> <text>
/reminders
/alarm <time> <text>
/alarms
/cancel reminder|alarm|schedule <number>
/task add <text>
/tasks
/task done <number>
/task delete <number>
/plan today <items>
/plan add <item>
/plan done <number>
/plan clear
/pomodoro <time>
/focusmode <time>
/study <time>
/calendar remind YYYY-MM-DD HH:MM <text>
/contact <name> phone|email <value>
/contacts
/memory <key> is <value>
/memory <key>
/memory search <query>
/memory update <key> to <value>
/profile <key> is <value>
/profile
/preference <key> is <value>
/preference
/context
/forget <key>
/app <name> <full path>
/email <address> subject <subject> message <body>
/sms <mobile number> <message>
/schedule <time> <operation>
/scheduled
/speak on
/speak off
/listen
/voice on
/voice off
/voice status
/voice model <folder path>
/voice wake
/voice history
wake test
/automate <workflow>
/knowledge search <query>
/knowledge ask <question>
/knowledge summarize <folder>
/clear
/exit
```

Time formats for slash commands:

```text
10s
10m
2h
1d
```

## Scheduled Operations

Scheduled operations are executable assistant actions saved with a due time.
When the due time arrives, the HUD or console loop runs the operation.
The HUD sidebar also shows the nearest pending reminder, alarm, or scheduled
operation as a live countdown timer.

Supported examples:

```text
in 5 minutes open Chrome
in 5 minutes close notepad
open notepad in 2 minutes
schedule open youtube.com in 10 minutes
remind me in 1 minute to open notepad
/schedule 10m open notepad
```

Stored data shape:

```json
{
  "operation": "open Chrome",
  "due_at": "2026-04-14T20:23:05",
  "done": false
}
```

## Routine Automation

Routines are named lists of assistant operations. They are useful for repeated
flows such as study mode, work mode, shutdown prep, or morning setup.

Examples:

```text
create routine study mode
add to routine study mode open VS Code
add to routine study mode open youtube.com
add to routine study mode: search Google for Python practice
show routine study mode
start routine study mode
remove step 2 from routine study mode
clear routine study mode
delete routine study mode
```

Slash examples:

```text
/routine create study mode
/routine add study mode: open notepad
/routine add "study mode" open latest screenshot
/routine show study mode
/routine run study mode
/routine remove study mode 1
/routine clear study mode
/routine delete study mode
```

Routines can also be scheduled:

```text
in 5 minutes start routine study mode
```

Routine steps use the same safe operation list as scheduled operations. Pheonix
does not run arbitrary shell commands from routines.

## System Diagnostics

Pack 6 reads local Windows system information without paid services.

Examples:

```text
system status
system overview
battery status
storage status
memory status
network status
show top processes
copy system report
```

Slash examples:

```text
/system
/system copy
/battery
/storage
/network
/processes
/ram
```

The internet check only reports whether a quick connection test succeeded. If a
firewall, school/work network, or sandbox blocks the check, Pheonix reports
`offline or blocked`.

## App Skill Profiles

Pack 22 adds app-specific controls for common workflows.

Browser examples:

```text
open new tab
close current tab
reopen closed tab
next tab
previous tab
search in Chrome for AI news
open Chrome site youtube.com
/skill chrome new tab
```

VS Code examples:

```text
open VS Code terminal
open command palette
run current file in VS Code
open VS Code project AI Assistant
/skill vscode terminal
/skill vscode run file
```

Notepad examples:

```text
create notepad draft meeting notes
save notepad draft ideas: build a better assistant
write in notepad remember the meeting
/skill notepad draft hello from Pheonix
```

Hotkey-based skills focus or open the target app first, then send the matching
Windows shortcut. Draft skills save files under `data\drafts` and open them in
Notepad.

## Advanced Packs 23-33

The advanced layer is handled mostly by `src\advanced_packs.py`, with smarter
Ollama context in `src\brain.py`.

Examples:

```text
voice doctor
show microphones
calibrate voice
app status Chrome
open and focus Chrome
force close Chrome
create folder Documents\Pheonix Notes
write file Documents\idea.txt: build a local assistant
delete file old draft
confirm action
my favorite app is Chrome
open my favorite app
every 30 minutes open youtube.com
show automations
smart dashboard
open pheonix docs
ask brain what should I work on next?
error doctor
```

Slash examples:

```text
/packs
/voice doctor
/voice devices
/voice calibrate
/appcontrol help
/files help
/automation create study every 10m do open VS Code
/automation list
/dashboard smart
/plugins list
/brain what should I work on next?
/doctor
/safety
/confirm
```

Pack 31 plugins are JSON files in `plugins\`. Each plugin can define phrases
that open URLs/apps, run a Google search, or return a note message. Pheonix
creates `plugins\example_plugin.json` automatically if no plugin exists.

Pack 29 repeating automations are stored in `data\assistant_data.json` under
`automations`. The HUD and console loops check due automations along with
scheduled operations.

## Future Packs 34-48

Packs 34-48 are handled mostly by `src\future_packs.py`.

Examples:

```text
screen capture
read screen
ask screen what error is visible?
agent run study
save study mode: open VS Code; show plan; start focus mode 45m
study mode
set personality to concise
add vault folder Documents
search vault python
ask vault what are my project notes?
draft email to teacher about assignment extension
why is my pc slow
find large files
every day at 19:00 open Python notes
when I say college do open classroom.google.com
mini assistant
overlay on
plan my day
create a 2 hour study schedule for Python
coding todo
summarize document notes.txt
backup assistant data
```

Slash examples:

```text
/future
/screen capture
/screen read
/screen ask what error is visible?
/agent run study
/mode save study: open VS Code; show plan; start focus mode 45m
/mode run study
/personality concise
/vault add Documents
/vault search python
/vault ask what are my project notes?
/compose email teacher@example.com about assignment extension
/maintenance slow
/smartreminder every day 19:00 open Python notes
/learn when I say college do open classroom.google.com
/mini
/overlay on
/planner day
/coding todo
/reader summarize notes.txt
/secure backup
```

Screen text reading uses optional OCR. Without Tesseract and `pytesseract`,
Pheonix still captures a screenshot and reports where it was saved, but cannot
extract text from it.

Smart reminders are stored in `smart_reminders` and are checked by both the HUD
and console loops. Learned commands are stored in `learned_commands`.

## Enhancement Packs 49-64

Packs 49-64 are handled mostly by `src\enhancement_packs.py`.

Examples:

```text
enhancement packs
agent preview study python
confirmation queue
notification center
memory categories
rebuild search index
search index gui
ocr status
command analytics
start research local AI assistant
show board
add board task polish Pheonix UI
move task 1 to doing
focus guardian on
train voice open crome to open chrome
plugin marketplace
project map
ask project where is voice handled?
```

Slash examples:

```text
/enhance
/agent2 preview study python
/agent2 run coding
/confirmq list
/notify list
/membrain summary
/index rebuild
/index search gui
/ocr status
/analytics
/macro start coding setup
/macro stop
/recover open chrome
/research start local AI assistant
/board add polish Pheonix UI
/board move 1 doing
/guardian on
/trainvoice add open crome => open chrome
/backup create
/marketplace list
/project ask where is voice handled?
```

The reliability layer stores data in local JSON keys including
`notifications`, `confirmation_queue`, `command_analytics`, `macros`,
`research`, `kanban`, `voice_training`, and `disabled_plugins`.

## System Control

Pack 15 adds guarded local Windows controls.

Examples:

```text
volume up
volume down
mute volume
set volume 50
take screenshot
open wifi settings
open bluetooth settings
open brightness settings
lock pc
scan temp files
shutdown pc confirm
restart pc confirm
cancel shutdown
clean temp files confirm
/control take screenshot
```

Screenshots are saved in `data\screenshots`. Shutdown, restart, and temp
cleanup require explicit confirmation wording. Shutdown and restart are started
with a 60-second Windows timer so they can be cancelled.

## Productivity

Pack 16 adds local productivity tools.

Examples:

```text
add task finish math homework
show tasks
mark task 1 done
delete task 1
plan today revise Python; finish notes; email teacher
add to plan drink water
show plan
start pomodoro 25m
start focus mode 45m
start study mode 1h
remind me on 2026-04-20 at 09:00 to submit assignment
schedule routine study mode in 10m
/task add finish math homework
/tasks
/plan today revise Python; finish notes
/pomodoro 25m
/focusmode 45m
/calendar remind 2026-04-20 09:00 submit assignment
```

Tasks, today's plan, and focus-session history are stored locally in
`data\assistant_data.json`. Pomodoro, focus mode, and study mode use the
existing alarm system, so their countdown appears in the HUD timer area.

## Workspace Awareness

Pack 18 reads the current Windows workspace without using paid services. It can
report the active foreground window, list visible windows with stable numbers
for the moment, and control a numbered window.

Examples:

```text
workspace snapshot
copy workspace snapshot
save workspace as study
show workspace profiles
show workspace study
restore workspace study
delete workspace study
active window
what am I working on
window map
focus window 2
minimize window 2
maximize window 2
restore window 2
close window 2
/workspace
/workspace copy
/workspace save study
/workspace profiles
/workspace show study
/workspace restore study
/workspace active
/workspace windows
/window list
/window focus 2
/window close 2
```

The workspace snapshot includes the active window, a compact numbered window
map, open tasks, today's plan, upcoming reminders, alarms, scheduled operations,
and saved workspace profile names.

Workspace profiles save the visible app/window list as restorable app targets:

```text
save workspace as study
show workspace profiles
show workspace study
restore workspace study
delete workspace study
in 10 minutes restore workspace study
```

Restoring a profile reopens the saved app targets. It does not restore exact
window positions or unsaved documents.

## Smart Memory And Context

Pack 5 stores personal context locally in `data\assistant_data.json`.

Profile examples:

```text
my name is Alex
call me Alex
set my city to Chennai
show profile
what is my city
forget my city
```

Preference examples:

```text
set preference reply style to short
my coding preference is Python
show preferences
what is my reply style preference
forget preference reply style
```

Memory examples:

```text
remember my roll number is 42
update memory roll number to 43
search memories for exam
show memories
what do you remember about me
/context
```

## Data Storage

Local app data is stored in:

```text
data\assistant_data.json
```

Default data keys:

```json
{
  "notes": [],
  "reminders": [],
  "alarms": [],
  "scheduled_operations": [],
  "contacts": {},
  "memories": [],
  "profile": {},
  "preferences": {},
  "custom_apps": {},
  "routines": {},
  "tasks": [],
  "daily_plan": {"date": "", "items": []},
  "focus_sessions": [],
  "workspace_profiles": {},
  "settings": {},
  "speak": false
}
```

## Development Notes

- Add app shortcuts in `src/config.py`.
- Add user-created app shortcuts through `/app <name> <path>` or the natural
  `save app <name> path <path>` command.
- Add slash commands in `src/commands.py`.
- Add email/SMS behavior in `src/communication.py`.
- Add contact behavior in `src/contacts.py`.
- Add local memory behavior in `src/memory.py`.
- Add natural typing behavior in `src/natural.py`.
- Add stored personal features in `src/personal.py`.
- Change Pack 15 guarded Windows controls in `src/system_control.py`.
- Change Pack 16 task, plan, Pomodoro, and focus behavior in `src/productivity.py`.
- Change Pack 18 active-window and workspace snapshot behavior in
  `src/workspace_awareness.py`.
- Change Pack 22 app skill profile behavior in `src/app_skills.py`.
- Add UI behavior in `src/gui.py`.
- Add console behavior in `src/app.py`.
- Add desktop opening behavior in `src/desktop.py`.
- Add voice behavior in `src/voice.py`.
- Update `README.md`, `docs/SETUP.md`, and this file when user-facing behavior
  changes.
- Rebuild `dist\Pheonix.exe` after code changes that should be included
  in the executable.

## Verification Checklist

After code changes, run:

```powershell
.\.venv\Scripts\python.exe -B -m compileall assistant.py src
```

For parser changes, test natural examples with a small Python command or by
running the HUD and typing the examples.

After executable changes, run:

```powershell
.\build_exe.ps1
.\dist\Pheonix.exe
```

## Change Log

### 2026-04-21

- Rebalanced the HUD layout so the chat box is much more visible by shrinking
  the top header, status badges, dashboard tiles, command-center tiles, input
  spacing, and replacing the large top scanner with a compact visual panel.
- Improved sidebar and chat scrolling with eased target scrolling, accumulated
  wheel movement, touchpad-friendly deltas, and Windows/Linux wheel bindings so
  long sidebar panels move smoothly without jumpy steps.
- Added chat focus mode and a command palette: press `F11` or type `chat focus`
  to hide the sidebar/top widgets for a larger chat area, and press `Ctrl+P` or
  type `command palette` to search and run commands quickly.
- Added a restored duration timer option with `/timer <time> <label>`, natural
  commands like `set timer for 10 minutes to stretch`, and a Timer quick button
  in the sidebar that opens a small timer setup window. Timers appear in the
  existing sidebar countdown and timeline panels.
- Added an advanced core feature layer with `/advanced`, `/briefing`, timer
  list/cancel/snooze management, favorite command storage, chat export to
  `data\session_exports`, cleanup of completed/old items, natural command
  aliases, autocomplete entries, quick buttons, and an Advanced Core sidebar
  status panel.
- Extended the advanced core with privacy mode, proactive coach suggestions,
  learning insights from command usage, and live weather/news/stocks shortcuts
  that open real-time web pages.
- Added the human voice upgrade with warmer spoken reply cleanup, natural
  pauses, response variation, voice style presets, speed/volume tuning,
  pronunciation dictionary commands, optional Piper TTS path support, installed
  voice listing, and voice test commands.
- Added `/voice human`, `/voice style`, `/voice speed`, `/voice volume`,
  `/voice pronounce`, `/voice voices`, `/voice settings`, and matching natural
  commands such as `make voice human`, `set voice style calm`, and
  `pronounce Pheonix as Phoenix`.
- Updated console, HUD, reminders, settings window, help, autocomplete, README,
  setup guide, and this instruction file so spoken replies use the saved human
  voice settings.
- Fixed human voice reading so pause tuning no longer injects spoken ellipses
  and old hyphenated pronunciation values such as `Fee-nix`, `Oh-lah-ma`, and
  `Vish-wa` are spoken as complete words.

### 2026-04-20

- Added Packs 49-64 reliability and feature-enhancement layer with
  `src\enhancement_packs.py`.
- Added Pack 49 agent previews and run flow, Pack 50 confirmation queue,
  Pack 51 notification center, Pack 52 memory brain export/import, and
  Pack 53 local search index.
- Added Pack 54 OCR setup helper, Pack 55 command analytics, Pack 56 macro
  recorder, Pack 57 smart error recovery, and Pack 58 research mode.
- Added Pack 59 Kanban board, Pack 60 focus guardian, Pack 61 voice training,
  Pack 62 backup/restore, Pack 63 plugin marketplace, and Pack 64 project Q&A.
- Added notification and Kanban sidebar panels, quick buttons, autocomplete
  suggestions, storage defaults, README/setup docs, and this instruction file
  for Packs 49-64.
- Added a broad UI upgrade on top of UI Packs 6-15: command-center strip,
  assistant state core, dedicated voice HUD, reminder timeline, mode/plugin
  dashboard, screen assistant panel, five-row running-app list, mini assistant
  window, overlay mode, and stored theme presets.
- Added the `ui_theme` setting with `jarvis`, `dragon`, `minimal`, and
  `contrast` palettes. Theme selections are saved in settings and fully apply
  after restarting the HUD.
- Added Packs 34-48 next AI assistant layer with `src\future_packs.py`.
- Added Pack 34 screen assistant commands for screenshot capture, optional OCR
  screen reading, and screen Q&A through the local brain.
- Added Pack 35 agent goals, Pack 36 app setup modes, Pack 37 personality
  presets, Pack 38 knowledge vault folders, and Pack 39 message drafting with
  reusable templates.
- Added Pack 40 maintenance reports, Pack 41 exact-time smart reminders,
  Pack 42 command learning, Pack 43 mini HUD, and Pack 44 overlay mode.
- Added Pack 45 planner, Pack 46 coding helper, Pack 47 document reader, and
  Pack 48 secure status/backup commands.
- Wired smart reminders into both console and HUD due-operation loops, added
  autocomplete/help examples, updated storage defaults, README, setup guide,
  and this instruction file for Packs 34-48.
- Added Packs 23-33 advanced assistant layer with `src\advanced_packs.py` and
  `src\brain.py`.
- Added Pack 23 voice reliability commands: `/voice doctor`, `/voice devices`,
  `/voice calibrate`, plus natural `voice doctor`, `show microphones`, and
  `calibrate voice`.
- Added Pack 24 advanced app control with `/appcontrol`, app status checks,
  open-and-focus, force-close safety previews, expanded app aliases, and natural
  app-control commands.
- Added Pack 26 file commands through `/files` and natural text for creating
  folders/files, writing files, copying/moving matched files, and requesting
  confirmed file deletion.
- Added Pack 27 favorite shortcuts for favorite app, website, and music.
- Added Pack 28 pending safety action flow with `/safety`, `/confirm`,
  `confirm action`, and `cancel action`.
- Added Pack 29 repeating automations with create/list/pause/resume/delete/run
  controls and due-automation checks in both console and HUD loops.
- Added Pack 30 smart dashboard report, Pack 31 JSON plugin system with an
  auto-created starter plugin, Pack 32 context-aware Ollama brain wrapper, and
  Pack 33 error doctor.
- Updated help text, autocomplete suggestions, README, setup guide, storage
  defaults, and this instruction file for Packs 23-33.

### 2026-04-18

- Added Pack 22 app skill profiles with `/skill`, browser tab/search/site
  actions, VS Code terminal/command-palette/run-file actions, Notepad draft
  creation, natural command routing, schedulable app-skill patterns, and
  autocomplete suggestions.
- Added Pack 25 UI polish with top command status lights, dashboard tile lights,
  a COMPACT/EXPAND HUD toggle, HUD notification banners for system events, and
  an animated PX ring that reacts to voice mode, push-to-talk, confirmation, and
  processing states.
- Changed the startup/wake greeting back to a time-aware greeting while keeping
  the name as `Vishwa`.
- Removed the wake transition and restored the normal instant wake behavior:
  the black sleep screen disappears immediately and the HUD keeps its original
  aligned layout.
- Replaced the earlier wake transition with a safer smooth curtain reveal so the
  real HUD widgets stayed grid-aligned while black panels glided outward from
  the center after click, Enter, double clap, or voice wake. This was later
  removed at user request.
- Upgraded Pack 18 with workspace snapshot clipboard copy, saved workspace
  profiles, profile list/show/delete, profile restore, dynamic autocomplete for
  saved profiles, and schedulable workspace restore commands.
- Improved voice diagnostics with an explicit readiness line and added chat
  commands for saving the Vosk model path with `/voice model <folder path>` or
  `set voice model path to <folder path>`.
- Added Pack 18 workspace awareness with active-window detection, workspace
  snapshots, numbered visible-window maps, numbered window focus/minimize/
  maximize/restore/close actions, autocomplete entries, slash commands, natural
  commands, and documentation.
- Added Pack 16 productivity tools with task commands, today's plan, calendar
  reminders, Pomodoro timers, focus mode, study mode, scheduled routine starts,
  autocomplete suggestions, and local storage defaults.
- Added Pack 15 guarded Windows system controls with volume commands,
  screenshot saving, settings shortcuts, PC lock, confirmed shutdown/restart,
  shutdown cancellation, temp scanning, and confirmed user-temp cleanup.
- Updated help text, natural examples, setup docs, README, and this instruction
  file for Pack 15 and Pack 16.
- Added Pack 13 local knowledge brain with `/knowledge search`, `/knowledge ask`,
  `/knowledge summarize`, natural local document search, local-context Q&A with
  Ollama, folder summaries, and `knowledge sources`.
- Added Pack 12 app automation workflows with `/automate`, natural commands for
  browser/YouTube search workflows, Notepad draft creation, VS Code project
  opening, and File Explorer folder opening.
- Added Pack 11 voice command accuracy: spoken-command previews, voice alias
  normalization, correction phrases such as `no I meant Chrome`, a Voice Log
  quick button, `/voice history`, and `voice history`.
- Added Pack 10 wake engine diagnostics: live sidebar microphone level meter,
  wake status messages, a 10-second Wake Test window, and quiet/normal/noisy
  clap sensitivity presets in Pheonix Settings.
- Set the default sleep-screen wake behavior to the requested pair:
  `wake up Pheonix` voice wake and double-clap wake.
- Kept the `Claps needed to wake` setting available, with double clap as the
  default wake gesture.
- Focused voice wake commands for the black screen on `wake up Pheonix`,
  `wakeup Pheonix`, and Phoenix spelling variants, plus `/voice wake`, `/wake`,
  and natural `wake commands` help.
- Repositioned the FAST LINKS HUD readout and compacted the orange dial so the
  right-side widgets no longer overlap on the visual scanner panel.
- Added persistent Vosk model-path support for voice input, including automatic
  checks of common model folders, a `voice status` / `/voice status` diagnostic,
  and a Voice Status button in Pheonix Settings.
- Improved voice error reporting so missing Vosk model setup appears in the HUD
  instead of looking like no response.
- Added Pack 9 voice conversation mode upgrades: wake phrase auto-starts
  hands-free voice mode after the black screen wakes, `Ctrl+Space` and `F9`
  trigger push-to-talk, and risky spoken actions now require yes/no
  confirmation before running.
- Updated the HUD voice dashboard and waveform so push-to-talk and confirmation
  states are visible instead of looking idle.
- Updated help, setup, README, and this instruction file for Pack 9 behavior.

### 2026-04-17

- Added Pack 7 command autocomplete: live suggestion chips under the HUD input,
  Tab completion, up/down command history, and dynamic suggestions for apps,
  routines, contacts, profile fields, preferences, and memories.
- Compact dashboard widgets into a slim single-row strip with smaller text,
  shortened details, and stable tile dimensions so the newly added HUD widgets
  do not dominate the command interface.
- Fixed UI Pack 2/4/5 alignment issues by giving dashboard tiles stable
  dimensions, scaling the central scanner, and moving the voice waveform into a
  separate lower band so widgets no longer overlap.
- Added UI Pack 2, UI Pack 4, and UI Pack 5 together: live HUD dashboard tiles,
  upgraded timestamped chat messages with copy/rerun/show-full actions, long
  output collapse, and an animated voice waveform/status visualizer.
- Updated the main HUD layout so the dashboard sits under the top command
  header while preserving the black-and-blue Jarvis/Friday visual style.
- Added Pack 6 local system diagnostics: full system report, system overview,
  battery/power status, memory/RAM status, storage usage, network/local IP
  status, top memory-heavy processes, and system-report clipboard copy.
- Added Pack 6 slash commands `/system`, `/system copy`, `/battery`,
  `/storage`, `/network`, `/processes`, and `/ram`, plus natural commands such
  as `system status`, `battery status`, and `show top processes`.
- Added a System quick button to the HUD sidebar and documented Pack 6 behavior.
- Added Pack 5 smart memory and personal context: profile fields, preferences,
  context summary, memory search, memory update, profile/preference forgetting,
  and a Context quick button in the HUD sidebar.
- Added Pack 5 slash commands `/profile`, `/preference`, `/context`,
  `/memory search`, `/memory update`, and expanded `/forget` for profile and
  preference entries.
- Updated local data defaults with `profile` and `preferences` dictionaries
  while keeping existing `memories` compatible.
- Added Pack 4 advanced voice mode: continuous hands-free listening after wake,
  `/voice on`, `/voice off`, `start voice mode`, `stop voice mode`, spoken
  command display in the chat, safe sleep integration, and status-bar voice
  mode feedback.
- Improved one-shot and continuous voice listening with Vosk model caching,
  timeout support, and stop-event handling so repeated voice commands respond
  faster and voice mode can shut down cleanly.
- Added Pack 3 full routine automation: create/list/show/run/delete routines,
  add routine steps with multi-word routine names, remove individual steps,
  clear all steps, schedule routine runs, and run routines from slash commands.
- Added Pack 3 safety checks so routine steps use the same built-in assistant
  operation allow-list as scheduled operations, including Pack 2 file and
  clipboard actions.
- Added a Routines quick button to the HUD sidebar and updated Pack 3 help,
  setup, and instruction documentation.
- Added Pack 2 full file assistant features: common-folder file search,
  folder-specific search, matched-file opening, latest screenshot/download/image
  opening, and matched file-path copying to the clipboard.
- Added Pack 2 full clipboard features: show clipboard text, summarize
  clipboard text with Ollama, save clipboard text as a note, search clipboard
  text on Google, open a clipboard website link, and clear clipboard text.
- Added Pack 2 slash commands `/find`, `/openfile`, `/copypath`, `/latest`,
  and expanded `/clipboard` actions.
- Added Pack 2 natural typing examples and quick HUD buttons for latest
  download, latest screenshot, clipboard view, and clipboard note.

### 2026-04-15

- Removed the dragon, phoenix bird, and Pheonix S sigil UI updates.
- Restored the older Jarvis/Friday-style black-and-blue HUD shown in the
  reference screenshot, including the cyan PX orb, face wireframe, central
  scanner, fast links, signal graph, and blue command panels.
- Added broader Windows app control: more built-in app aliases, Start Menu
  shortcut discovery, `/close <app>`, natural `close <app>`, and scheduled app
  close operations.
- Added Pack 1 desktop control: visible running-window listing, focus/switch,
  minimize, maximize, restore, close-current-window, restart-app commands, and
  a running-apps HUD sidebar dashboard with focus/close buttons.
- Made the left HUD sidebar scrollable so newly added panels do not push quick
  commands off-screen.
- Strengthened Windows dark title-bar styling by applying it after the Tk window
  is mapped, targeting both child and parent window handles, and forcing a frame
  redraw so the native controls blend with the Pheonix HUD.
- Replaced plain native scrollbars with HUD-themed cyan scroll rails and added
  smooth scrolling for the left sidebar and chat history.
- Changed the left HUD sidebar so the Pheonix name and PX circle stay fixed
  while only the lower controls and panels scroll.

### 2026-04-24

- Added a real voice visualizer that reacts to microphone audio levels during
  listening modes and shows a live output pulse while Pheonix is speaking.
- Added a full ML-themed HUD layer: prediction stack with confidence heat bars,
  learning-status card, memory priority panel, habit graph, topic clusters,
  context stack, training console, screen-aware ML card, mode chips, and a
  live thinking strip that updates while requests are processed.
- Upgraded the ML stack into an advanced adaptive layer with online learning
  from successful actions, learned aliases, hybrid intent ranking, habit and
  next-action prediction, memory importance scoring, feedback reinforcement,
  and screen/voice context boosts.
- Improved the unsupervised learning layer with topic-mode labels, rising-term
  tracking, and time-band summaries for conversation patterns over time.
- Improved the conversational NLP layer so Ollama replies sound more like a
  thoughtful human assistant: better system prompting, real Ollama generation
  options, warmer small-talk replies, and saved-name-aware greetings.
- Added `src/jarvis_features.py` for the new Jarvis-style feature pack:
  wake-word tuning, microphone calibration, app permissions, authentication,
  mobile sync, and live API integrations.
- Added a fuzzy wake-word engine with configurable wake phrases, strict/fuzzy
  modes, and adjustable wake similarity thresholds.
- Added a microphone calibration wizard in the HUD Settings window that learns
  ambient noise, clap strength, and speech level, then saves recommended wake
  thresholds.
- Added app permission rules with allow, block, and prompt policies for app
  open/close/restart requests.
- Added optional authentication support with voice passphrase unlock, face
  enrollment and verification, and automatic relock after waking the HUD.
- Added mobile companion sync pairing plus export/import bundles under
  `data/mobile_sync`.
- Replaced browser-only live weather/news shortcuts with real Open-Meteo
  weather responses and API or RSS-backed news results.
- Added Settings controls and new help text for wake engine, auth, mobile sync,
  and live API configuration.
- Added `opencv-python` to `requirements-optional.txt` for optional face
  authentication.
- Added `src/ml_integration.py` with a local trainable ML intent model, `/ml`
  commands for training and prediction, and confidence-based ML suggestions for
  unmatched natural requests.
- Added `scikit-learn` to `requirements-optional.txt` for optional local ML
  intent training.
- Added `src/unsupervised_learning.py` with continuous self-learning from all
  chats, automatic topic clustering, vocabulary tracking, similar-conversation
  recall, and `/unsupervised` inspection commands.
- Changed both the console app and HUD so command replies, natural replies,
  desktop replies, and AI replies all feed the self-learning memory.
- Added browser-targeted site opening so commands like `open chatgpt in chrome`
  or `open youtube in edge` open the site directly in the requested browser.
- Hardened `src/storage.py` saves with a write lock, atomic temp-file replace,
  retry handling, and a pending-data fallback file so transient Windows file
  locks do not crash the app logic.
- Fixed browser opening so `open the browser` now resolves to an actual browser
  app instead of incorrectly trying to open `browser.com`.
- Tightened website resolution so unknown one-word app names are not
  automatically treated as `.com` sites.
- Updated `requirements-optional.txt` to include `Pillow` for vision/image UI
  features.
- Updated `build_exe.ps1` to build `dist\Pheonix_updated.exe`, install optional
  runtime dependencies for packaging, and include ML/vision hidden imports for
  PyInstaller.
- Reworked `src/ml_integration.py` and `src/unsupervised_learning.py` to use
  dynamic `importlib` loading for scikit-learn modules, which removes VS Code
  unresolved-import editor warnings while keeping optional ML imports runtime
  safe.
- Added explicit cache typing in `src/ml_integration.py` and
  `src/unsupervised_learning.py` so Pylance no longer reports argument-type
  errors on the scikit-learn import caches.
- Upgraded the ML engine in `src/ml_integration.py` into a more advanced local
  prediction stack with:
  richer seed samples, stronger phrase normalization, sample augmentation,
  blended LogisticRegression plus ComplementNB scoring, TF-IDF word and
  character similarity, latent semantic matching with TruncatedSVD,
  intent/entity parsing, personalized browser/entity boosts, confidence policy,
  failure-pattern tracking, mode/time behavior learning, and ML health
  reporting.
- Added `/ml parse` and `/ml health` support for inspecting parsed intent,
  entities, confidence policy, and model health.
- Normalized learned command labels so the model no longer splits confidence
  between equivalent labels like `open Chrome` and `open chrome`.
- Added family-specific ML confidence thresholds plus `/ml failures` and
  `/ml thresholds` so the assistant can surface common failed phrases and tune
  auto/confirm behavior separately for desktop, search, status, productivity,
  communication, media, and chat predictions.
- Added `/ml doctor` for a recommendation-style ML health review and
  `/ml thresholds reset` to restore default family confidence policy when
  tuning goes too far.
- Updated `src/jarvis_features.py` face-auth cascade loading to use a safer
  OpenCV data-path lookup, which clears the editor error around
  `cv2.data.haarcascades` while preserving runtime behavior.

### 2026-04-14

- Renamed the visible AI application to Pheonix.
- Added Pheonix Settings UI for model override, voice replies, clap sensitivity,
  SMTP, Twilio, and scheduled operation confirmation.
- Added contact book commands and contact-based SMS/email targets.
- Added local memory commands for saving, recalling, and forgetting facts.
- Added custom app shortcut commands.
- Added reminder cancellation and daily/weekly repeating reminders.
- Added optional confirmation before scheduled operations run.
- Added `install_pheonix.ps1` to create Desktop and Start Menu shortcuts.
- Added real email sending through SMTP environment variables.
- Added SMS sending through Twilio environment variables.
- Added SMS draft fallback for phone-number SMS when Twilio is not configured.
- Added an on-screen HUD countdown timer for the nearest reminder, alarm, or
  scheduled operation.
- Changed startup and sleep mode to a completely black screen with no visible
  labels or hints.
- Changed the sleep-screen wake options to `wakeup Pheonix`, double clap, and
  click/Enter.
- Added the spoken wake phrase `wakeup Pheonix` with spacing/spelling alternate
  phrases when Vosk is configured.
- Renamed the PyInstaller build output to `dist\Pheonix.exe` and updated the VS
  Code launch path.
- Added this `APP_INSTRUCTIONS.md` file as the central application detail,
  setup, usage, development, verification, and change-log document.
- Documented the current HUD assistant, Ollama chat, voice features, app/site
  opening, notes, reminders, alarms, and scheduled operations.
- Added the rule that this file must be updated after every future project
  update.
- Upgraded `src/ml_integration.py` with stronger intent accuracy using richer
  seed samples, phrase normalization, sample augmentation, a blended
  LogisticRegression plus ComplementNB classifier, dual semantic matching
  (word and character n-grams), and token-overlap boosting.
- Cleaned ML prediction output labels so the HUD and command responses always
  show plain strings instead of numpy scalar label types.
- Added recent-action memory with `/again`, `/lastaction`, `/actionhistory`,
  plus natural phrases like `do that again` and `what did you do`.
- Added one-step ML correction with `/ml teach <command>` and natural
  `teach that as ...` support to learn from the most recent failed or suggested
  phrase.
- Fixed the repeat-action natural-language flow by importing the desktop
  fallback handler used when replaying a recent action.
- Enhanced favorites so `/fav run <name>` and natural `run favorite <name>`
  execute the saved command directly instead of only showing the text.
- Added reversible local-action undo with `/undo`, `/undo list`, and natural
  `undo that` for favorites, timer cancel/snooze, and cleanup snapshots.
- Added a multi-step chain engine with `/chain run`, `/chain preview`, natural
  `... then ...` execution, and favorite-step previews so saved workflows can
  run semicolon-separated assistant actions end to end.
- Added a GUI Workflow Builder window with step-by-step chain editing, preview,
  run, favorite save/load, and a Quick Commands entry so multi-step workflows
  can be created visually inside Pheonix.
- Added Mission Control with `/mission preview|run|save`, natural `mission
  control`, mission-history tracking, smarter goal-to-plan generation, and a
  dedicated GUI Mission Control window with presets, preview, run, and
  save-to-favorite actions.
- Added Document Intelligence with `/doc load|ask|search|summarize|status`,
  natural `load document ...` and `ask document ...`, persistent current
  document context, and a GUI Document AI window with file browse/load,
  summary, ask, search, and clear controls.
- Added a SuperSystem layer with `/supersystem status|doctor|prime|run|save`,
  natural `god mode` / `master control`, unified health + mission + document +
  voice + security status, coordinated goal planning, and a dedicated
  SuperSystem GUI window in Quick Commands.
