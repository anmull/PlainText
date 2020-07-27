# PlainText.app

This is a clone of [TextEd](https://github.com/jeena/TextEd.app) by [Jeena Paradies](https://github.com/jeena).

Jeena stripped down TextEdit.app to remove iCloud and rich text support, but it needed to be updated and didn't work properly as an editor for `git`.

PlainText.app can open any file from the command line into a small dark mode GUI. The app primarily intended to be used as the editor in `~/.gitconfig`.

<p align="center"><img width="800" height="615" src="https://github.com/anmull/PlainText.app/blob/master/Screenshot.png"></p>

## Why?

For writing commits I generally prefer to use a GUI over a console app like vi and I prefer the window be large enough, but not too large.

I've used TextMate, CotEditor, and Sublime Text and there's always an issue. I've seen performance issues with CotEditor and TextMate. Sublime Text's dimensions are set for my normal development so the size is not ideal. They are also large applications so startup time is slower.

I wanted a small window, in dark mode, that has fast startup and does one thing really well, accept text input and save it.

I don't have interest in learning Objective-C and Swift would be too bulky for this, so I edited Jeena's app.

## What about using...?

This app is about 192 KB. I covered 3 alternatives above and they are much larger.

Electron: Too heavy weight for something so simple.

Swift: Apple's "Developing A Document Based App" is very similar, but with Swift's libraries the app becomes ~11 MB.

## Modifications

The following modifications were made:
  * Automatic spell correction disabled.
  * Smart quotes and smart dashes disabled.
  * Disabled touch bar completion and character picker.
  * Removed tests because they didn't test anything.
  * Uses `FiraCode-Light` as the font family.
  * Brings the application to the foreground over all other apps.
  * Moves the cursor to the start of the file.
  * Uses a dark background with light font.
  * Added a new icon made by [Freepik](http://www.freepik.com/) from [www.flaticon.com](https://www.flaticon.com/)
  * Renamed to PlainText to avoid overlap with TextEdit and TextMate in apps like Alfred.

## Installation

Install [Fira Code](https://github.com/tonsky/FiraCode) font.

Open project in Xcode, build the app, and move the app to /Applications.

## Command Line Usage

`/Applications/PlainText.app/Contents/MacOS/PlainText filename.txt`
