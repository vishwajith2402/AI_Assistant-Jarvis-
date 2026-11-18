# Pheonix Local AI Assistant

A free Windows desktop AI assistant named Pheonix that you can build in VS Code. It has a
futuristic black-and-blue Jarvis/Friday-style HUD interface, can chat with a
local Ollama model, open desktop apps and websites, save notes, manage
reminders, run scheduled operations, speak replies, show an on-screen reminder
timer, save contacts, remember local facts, use custom app shortcuts, send
email/SMS when configured, close running apps, discover Start Menu apps, and
control visible app windows. Pack 2 adds file search/opening, latest-file
opening, file-path copying, and clipboard show/summarize/save/search/link/clear
actions. Pack 3 adds named routines that can store and run multiple safe
assistant operations. Pack 4 adds continuous hands-free voice mode after wake,
with spoken commands shown in the chat and clean stop/sleep handling. Pack 5
adds smarter local profile, preferences, memory search, and context summaries.
Pack 6 adds local system diagnostics for battery, storage, memory, network,
top processes, and system reports.
Pack 7 adds command autocomplete with live suggestion chips, Tab completion,
and up/down command history.
Pack 9 adds voice conversation upgrades: voice wake commands can start
hands-free voice mode, `Ctrl+Space` and `F9` work as push-to-talk hotkeys, and
risky spoken actions ask for yes/no confirmation before running.
Pack 10 adds a wake engine panel with a live microphone meter, wake status,
quiet/normal/noisy clap sensitivity presets, and a Wake Test window for tuning
double clap and voice wake.
Pack 11 adds voice command accuracy tools: spoken-command previews, common
voice aliases, correction phrases like `no I meant Chrome`, and a voice history
window.
Pack 12 adds app automation workflows for browser searches, YouTube searches,
Notepad drafts, VS Code project opening, and File Explorer folders.
Pack 13 adds a local knowledge brain for searching readable files, asking
questions with local file context, and summarizing local folders.
Pack 15 adds guarded Windows system controls for volume, screenshots, settings
pages, PC lock, confirmed shutdown/restart, and confirmed temp cleanup.
Pack 16 adds productivity tools for tasks, today's plan, calendar-style
reminders, Pomodoro timers, focus mode, study mode, and scheduled routine starts.
Duration timers can be set with `/timer 10m stretch`, `timer 5 minutes tea break`,
or the Timer quick button in the sidebar.
Pack 18 adds workspace awareness for active-window detection, workspace
snapshots, snapshot copy, saved workspace profiles, profile restore, numbered
window maps, and numbered window control.
Pack 22 adds app skill profiles for browser tabs/search/site opening, VS Code
terminal/command palette/run-file helpers, and Notepad draft creation.
Pack 25 adds UI polish: command status lights, dashboard tile lights,
compact/expanded HUD mode, notification banners, and a more active PX
listening/processing ring.
Packs 23-33 add the advanced assistant layer: voice doctor and microphone
device checks, stronger app control, create/write/copy/move/safe-delete file
operations, personal favorite shortcuts, confirmation guards for risky actions,
repeating automations, a smart dashboard report, JSON plugin commands, smarter
Ollama replies with local context, and a full error doctor.
Packs 34-48 add the next AI layer: screen capture/OCR helpers, agent goals,
app setup modes, voice personality presets, a knowledge vault, message drafting,
PC maintenance reports, exact-time smart reminders, command learning, mini HUD,
overlay mode, AI planner, coding helper, document reader, and local data backup.
Packs 49-64 add the reliability layer: agent previews, confirmation queue,
notification center, memory export/import, local search index, OCR setup helper,
command analytics, macro recording, smart error recovery, research mode, Kanban
board, focus guardian, voice training, backup/restore, plugin marketplace, and
project Q&A.
The advanced core layer adds daily briefings, timer management, favorite
commands, chat export, cleanup tools, privacy mode, proactive coaching,
real-time web shortcuts, learning insights, and a sidebar Advanced Core panel.
The latest Jarvis pack adds a fuzzy wake-word engine with custom wake phrases,
a microphone calibration wizard, app permission rules, optional voice/face
authentication, mobile companion sync export/import, and live weather/news
responses from Open-Meteo plus API/RSS-backed news sources.
There is now also a local ML intent layer: you can train a small command
prediction model with `scikit-learn`, add your own examples, and get command
suggestions when a request does not match a built-in rule.
That ML layer now also learns online from successful actions, builds command
aliases from your usage, ranks predictions with hybrid classifier plus semantic
matching, tracks habit sequences for next-action suggestions, scores important
memories, and uses screen/voice context when available.
Pheonix now also has a continuous unsupervised self-learning layer that builds
local topic clusters from your chats, tracks your recurring vocabulary, and can
recall similar previous conversations automatically over time, including topic
mode labels and rising-interest terms.
The conversational NLP layer is also tuned to feel more human: warmer
small-talk replies, better use of saved name/context, and a stronger Ollama
prompt that keeps answers natural instead of robotic.
The human voice upgrade adds warmer spoken replies, voice style presets,
speed/volume tuning, short response variation, natural pauses, pronunciation
rules, and voice test commands while keeping the free offline `pyttsx3` engine.
The latest UI pass adds a command-center strip, assistant state core, dedicated
voice HUD, reminder timeline, mode/plugin dashboard, screen assistant panel,
larger running-app control list, mini assistant window, overlay mode, and saved
theme presets.
The HUD now also includes a dedicated ML interface layer: prediction stack with
confidence bars, learning-status panel, memory priority view, habit graph,
topic cluster panel, context stack, training console, screen-aware ML card, and
a live thinking strip with mode chips.
The voice HUD and main voice bus now react to real speaking levels from the
microphone while listening, and show a live output pulse while Pheonix is
speaking.
The HUD now includes live dashboard tiles, timestamped chat actions, collapsed
long outputs, copy/rerun controls, and an animated voice waveform. The left HUD
keeps the Pheonix name and PX circle fixed while the lower controls scroll, the
native Windows title bar uses a dark HUD-matching style, the scrollbars use a
sci-fi cyan rail with smooth mouse-wheel movement, and optional offline voice
input is available when configured. Voice setup can be checked with
`voice status` or `/voice status`, and the Vosk model folder can be saved in
Pheonix Settings so the executable can recognize speech after double-click
launching.
Press `F11` for chat focus mode and `Ctrl+P` for the command palette.

## Project Structure

```text
AI Assistant/
  assistant.py                  Main file you run
  APP_INSTRUCTIONS.md           Full Pheonix details and required update log
  requirements-optional.txt     Optional voice packages
  README.md                     Quick project overview
  .vscode/
    launch.json                 VS Code run/debug button
    settings.json               VS Code Python settings
  data/
    assistant_data.json         Created automatically for notes/reminders/schedules
  docs/
    SETUP.md                    Full installation guide
  src/
    advanced_packs.py           Packs 23-33 advanced commands and plugin loader
    advanced_core.py            Briefing, timers, favorites, chat export, cleanup
    app.py                      Main assistant loop
    app_automation.py           Pack 12 app workflow automation
    app_skills.py               Pack 22 app-specific skill profiles
    autocomplete.py             Command suggestions and Tab completion
    brain.py                    Pack 32 context-aware Ollama brain wrapper
    commands.py                 Slash commands
    clipboard_tools.py          Clipboard assistant helpers
    communication.py            Email and SMS sending helpers
    contacts.py                 Saved contacts
    config.py                   Model, paths, app aliases, help text
    desktop.py                  Opens/closes apps, websites, and Start Menu shortcuts
    file_tools.py               File search/open/latest/path-copy helpers
    future_packs.py             Packs 34-48 screen, agent, vault, planner helpers
    enhancement_packs.py        Packs 49-64 reliability, search, backup, project tools
    gui.py                      Desktop HUD interface
    jarvis_features.py          Wake engine, auth, permissions, sync, live APIs
    knowledge.py                Pack 13 local file knowledge search and Q&A
    ollama_client.py            Talks to Ollama
    personal.py                 Notes, reminders, alarms, schedules
    productivity.py             Pack 16 tasks, daily plan, and focus timers
    routines.py                 Named routine automation helpers
    memory.py                   Local remembered facts
    storage.py                  Local JSON data storage
    system_control.py           Pack 15 guarded Windows system controls
    system_tools.py             Local system diagnostics
    voice.py                    Voice input and output
    workspace_awareness.py      Pack 18 active-window, snapshots, and profiles
```

## Fast Start

```powershell
ollama pull llama3.2
python assistant.py
```

The HUD window opens by default. Inside the assistant, type:

```text
what can you do
open notepad
open chatgpt in chrome
open Chrome
open Chrome and search Python projects
open new tab
close current tab
reopen closed tab
open VS Code terminal
run current file in VS Code
create notepad draft meeting notes
voice doctor
show microphones
wake engine status
authentication status
pair mobile
ml status
train model
unsupervised status
learned topics
smart dashboard
error doctor
app status Chrome
open and focus Chrome
create folder Documents\Pheonix Notes
write file Documents\idea.txt: build a local assistant
my favorite app is Chrome
open my favorite app
every 30 minutes open youtube.com
show automations
open pheonix docs
ask brain what should I work on next?
weather in Chennai
news about AI
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
open YouTube and search lo-fi music
open Notepad and write meeting notes
open VS Code project AI Assistant
open File Explorer in downloads
close notepad
show apps
show running apps
system status
battery status
storage status
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
volume up
volume down
mute volume
set volume 50
take screenshot
open wifi settings
lock pc
scan temp files
focus Chrome
minimize Chrome
maximize notepad
restore Chrome
close current window
restart notepad
open youtube.com
search Google for Python projects
find file resume.pdf
search downloads for invoice
open file resume.pdf
open downloads file invoice
copy path of resume.pdf
open latest screenshot
show clipboard
summarize clipboard
save clipboard as note
search clipboard on Google
open clipboard link
clear clipboard
create routine study mode
add to routine study mode open VS Code
add to routine study mode close YouTube
show routine study mode
start routine study mode
remove step 2 from routine study mode
in 5 minutes start routine study mode
play music
play coding tutorials
send email to alex@example.com subject Hello message Testing Pheonix
save contact mom phone 919876543210
send sms to mom message hello from Pheonix
send sms to 919876543210 message hello from Pheonix
in 5 minutes send sms to 919876543210 message meeting starts now
remember my roll number is 42
what is my roll number
my name is Alex
set my city to Chennai
set preference reply style to short
search memories for exam
search my documents for exam timetable
ask my documents about project ideas
summarize project folder
knowledge sources
what do you remember about me
remind me every day to drink water
email alex@example.com subject Hello message Testing my assistant
message 919876543210 saying hello
remember that I need to improve the assistant UI
remind me in 10 minutes to drink water
in 5 minutes open Chrome
in 5 minutes close notepad
schedule open youtube.com in 10 minutes
show scheduled operations
add task finish math homework
show tasks
mark task 1 done
plan today revise Python; finish notes; email teacher
show plan
start pomodoro 25m
start focus mode 45m
remind me on 2026-04-20 at 09:00 to submit assignment
set alarm in 15 minutes to stretch
turn voice on
voice status
wake test
voice history
listen
start voice mode
stop voice mode
go to sleep
/exit
```

Voice Pack 9:

```text
Say wake up Pheonix to wake.
Double clap to wake.
Press Ctrl+Space or F9 for push-to-talk.
Say yes/no when Pheonix asks to confirm a risky spoken action.
Type wake commands or /voice wake to see wake examples.
Type wake test to open the 10-second microphone/clap test.
Say no I meant Chrome to correct the previous spoken command target.
Type voice history to review recent raw voice transcripts.
Type /voice model <folder path> after extracting a Vosk model if voice status
says the microphone is detected but readiness is offline because the model path
is missing.
```

Pack 7 autocomplete:

```text
Type part of a command to see suggestions.
Press Tab to complete the best suggestion.
Press Up or Down to move through command history.
Click a suggestion chip to place it in the input.
```

Pheonix starts on a completely black sleep screen. Wake it by saying
`wake up Pheonix` when Vosk voice recognition is configured, double clapping
near the microphone, clicking the black screen, or pressing Enter. Settings can
still change the clap count, but double clap is the default.

To run the older console-only mode:

```powershell
python assistant.py --cli
```

Read `docs/SETUP.md` for the complete VS Code and installation steps.

Read and update `APP_INSTRUCTIONS.md` whenever the application is changed. It is
the central file for app details, feature notes, run/build steps, and the change
log.

## Build The Executable

```powershell
.\build_exe.ps1
```

The executable is created at:

```text
dist\Pheonix.exe
```

The executable contains the assistant application. Ollama still needs to be
installed on the computer, and the `llama3.2` model still needs to be pulled.

Real email sending needs SMTP environment variables. Automatic SMS sending needs
Twilio environment variables. Without Twilio, Pheonix opens an SMS draft for the
phone number instead.
