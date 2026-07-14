# Inuktitut Syllabics (Litogram)

Inuktitut syllabics (Unified Canadian Aboriginal Syllabics U+1400–167F) on the Nunavut consonant-key-then-vowel input model: consonant onsets are dead keys, a following vowel selector commits the CV syllable.

Generated from the verified litogram layout definition
(`layouts/iu-CA-design.json`) by keymapper's gen-os-artifacts —
the installable files teach exactly the arrangement
[litogram.org](https://litogram.org) does. Full design rationale:
the layout's page on litogram.org/keyboard-layouts/ and
CUSTOM_LG_LAYOUTS.md in the litogram repository.

## Sources

- Inuit Tapiriit Kanatami / Inuit Cultural Institute — Inuktitut syllabic standard (Nunavut writing system)
- Government of Nunavut Naqittaut keyboard; Pirurvik Centre ProSyllabics — the consonant-then-vowel input convention
- The Unicode Standard — Unified Canadian Aboriginal Syllabics U+1400–167F

## Linux input method (m17n)

The xkb symbols file carries the direct keys only (see its header) —
the full consonant+vowel syllable composition needs an input METHOD.
It ships as an m17n table, `iu-litogram.mim`, usable
with ibus-m17n or fcitx5-m17n:

```sh
# system-wide:
sudo cp iu-litogram.mim /usr/share/m17n/
# or per-user:
mkdir -p ~/.m17n.d && cp iu-litogram.mim ~/.m17n.d/
```

Then add the input source: IBus — Preferences → Input Method → Add →
search "iu (litogram)"; Fcitx5 — Configure → Input
Method → Add → uncheck "Only Show Current Language" → search
"litogram" (needs the m17n addon package, e.g. `fcitx5-m17n`).

Usage: roman consonant + vowel composes the syllable (`ta` → ᑕ,
`tii` → ᑏ); consonant + space commits the a-form fast path;
UPPERCASE consonant = the final (`T` → ᑦ, `NG` → ᖕ); long vowels
by doubling. Unmapped keys pass through for roman names/loanwords.

License: **CC BY 4.0** — https://creativecommons.org/licenses/by/4.0/
Attribution: litogram.org.
