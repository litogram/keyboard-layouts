# Litogram keyboard layouts

Installable keyboard layouts for scripts and orthographies no OS
ships — designed for, and generated from, the
[litogram.org](https://litogram.org) typing platform. What you
practice there is byte-for-byte what these files install: every
artifact is emitted from the same verified layout definitions the
app resolves keystrokes with, and round-trip-checked against them.

| Layout | Windows | macOS | Linux | Story & diagrams |
|---|---|---|---|---|
| Moldovan Cyrillic (Litogram) | `.klc` / CI installer | `.keylayout` | xkb + script | [ro-cyrl-md](https://ro-cyrl.litogram.org/keyboard-layouts/ro-cyrl-md/) |
| Taiwanese Hokkien POJ (Litogram) | `.klc` / CI installer | `.keylayout` | stock xkb `tw` | [nan-tw](https://nan.litogram.org/keyboard-layouts/nan-tw/) |
| Assamese InScript (Litogram) | native | native | xkb + script | [as-in](https://as.litogram.org/keyboard-layouts/as-in/) |
| Odia InScript (Litogram) | native | native | xkb + script | [or-in](https://or.litogram.org/keyboard-layouts/or-in/) |

Windows installers are built by the GitHub Actions workflow in
this repository (MSKLC on `windows-latest`) and published as
release artifacts.

## License

**CC BY 4.0** — https://creativecommons.org/licenses/by/4.0/
Attribution: [litogram.org](https://litogram.org). Each layout's
README carries its design rationale; the full registry lives in
the litogram repository's `layouts/CUSTOM_LG_LAYOUTS.md`.
