# universetraveller's Homebrew tap

Homebrew casks for software by [universetraveller](https://github.com/universetraveller).
Each application has its own recipe in `Casks/`; additional applications can be
added alongside the existing casks.

## Available casks

| Cask | Application | Description |
| --- | --- | --- |
| `macam` | [Macam — Mac Audio Mirror](https://github.com/universetraveller/macam) | Mirror system or application audio into a stereo input while preserving normal playback. |

Check each application's documentation and cask notes for its supported hardware,
macOS version, license, permissions, and signing status.

## Install

Install an application using its fully qualified cask name. For example:

```sh
brew install --cask universetraveller/tap/macam
```

`universetraveller/tap` refers to this `homebrew-tap` repository; the final component
selects the application. Homebrew adds the tap when needed. Applications are
installed in Applications unless a different app directory is specified.

If an existing manual installation conflicts, quit the application and move that
copy aside before installing through Homebrew.

## Upgrade or uninstall

Run `brew update`, then upgrade a selected application. For example:

```sh
brew update
brew upgrade --cask universetraveller/tap/macam
```

To remove that application:

```sh
brew uninstall --cask universetraveller/tap/macam
```

Use the corresponding cask name for other applications. Quit applications before
upgrading and review their individual uninstall and preference-retention notes.

## Application notes

### Macam

Requires Apple Silicon and macOS 14.2 or later. Open Macam manually, click Start,
and allow System Audio Recording. Select **Macam Audio** in the receiving app.

Macam is **ad-hoc signed and not notarized**. If macOS blocks its first launch,
try opening it once, then use **System Settings → Privacy & Security → Open Anyway**
if you trust the download. See [Apple's instructions](https://support.apple.com/en-us/102445).
The cask preserves quarantine and performs no security override.

Its uninstall action asks only Macam to quit; normal shutdown removes its temporary
audio input. Preferences are retained. See Macam's
[installation documentation](https://github.com/universetraveller/macam#install).

## Maintaining the tap

- Add each application as a separate `Casks/<cask-name>.rb` recipe and list it above.
- Pin recipes to public, versioned upstream downloads with the actual SHA-256.
- Declare each application's own architecture and OS requirements, installation
  artifacts, and relevant launch or permission instructions.
- Verify the download and installation before publishing a new or updated cask.
- Preserve published release assets and macOS security protections.

For Macam, copy the exact published release's generated `macam.rb` asset into
`Casks/macam.rb`. See its
[release guide](https://github.com/universetraveller/macam/blob/main/docs/releasing.md)
and [Homebrew guide](https://github.com/universetraveller/macam/blob/main/docs/homebrew.md).

This is a third-party tap maintained by universetraveller, independent of
Homebrew's official cask repository.

## License

This repository's cask definitions are licensed under **GPL-3.0-only**; see
[LICENSE](LICENSE). Refer to each application's project for its license and code
provenance. The Macam recipe is LLM-generated under human direction.
