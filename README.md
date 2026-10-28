# Macam Homebrew tap

Project-maintained Homebrew distribution for [Macam — Mac Audio Mirror](https://github.com/universetraveller/macam).

**Mirror your Mac’s audio.** Capture system or selected-application audio as a
stereo input while preserving normal playback and existing audio settings.

## Install

Requires Homebrew, Apple Silicon, and macOS 14.2 or later:

```sh
brew install --cask universetraveller/tap/macam
```

Open Macam from Applications, click Start, and allow System Audio Recording.
Select **Macam Audio** in the receiving application. Macam starts stopped and
installs no driver or login service.

Macam is **ad-hoc signed and not notarized**. If macOS blocks the first launch,
try opening it once, then use **System Settings → Privacy & Security → Open Anyway**
if you trust the download. See [Apple's instructions](https://support.apple.com/en-us/102445).
The cask preserves quarantine and performs no security override.

If an existing manual installation conflicts, quit Macam and move that copy aside
before installing through Homebrew. Preferences are retained.

## Upgrade or uninstall

Quit Macam before upgrading:

```sh
brew update
brew upgrade --cask universetraveller/tap/macam
```

```sh
brew uninstall --cask universetraveller/tap/macam
```

The cask asks only Macam to quit during uninstall. Its normal shutdown removes
its temporary audio input. Preferences are preserved.

## Maintenance and license

For each published [Macam release](https://github.com/universetraveller/macam/releases),
copy that exact release's generated `macam.rb` asset into `Casks/macam.rb`. Its URL
and SHA-256 must match the published app ZIP. See the project's
[release guide](https://github.com/universetraveller/macam/blob/main/docs/releasing.md)
and [Homebrew guide](https://github.com/universetraveller/macam/blob/main/docs/homebrew.md).

This is a third-party tap maintained by the Macam project. It is independent of
Homebrew's official cask repository. The recipe is LLM-generated under human
direction and licensed under **GPL-3.0-only**; see [LICENSE](LICENSE).
