# Renamer

A set of lightweight Windows command-line utilities for adding a timestamp to a filename (either as a suffix or as a prefix).

## Utilities Overview

| Utility | Version | Behavior | Example |
| :--- | :--- | :--- | :--- |
| **`renamer.exe`** | `ver_2025/11/15_2249` | Appends timestamp **before the extension** (suffix) | `t.txt` -> `t_2015.12.28_11#25#00.txt` |
| **`renamer2.exe`** | `ver_2025.11.15` | Prepends timestamp **to the beginning** of the filename (prefix) | `t.txt` -> `2025.08.28_11#25#00_t.txt` |

## Rules & Requirements

* **Timestamp format:** `YYYY.MM.DD_HH24#MI#SS` (fixed and cannot be changed directly; use `date_reformatter.exe` if you need to change the date format).
* **Dot requirement:** The target filename **must contain a dot (`.`)** (i.e., have an extension), otherwise the utilities will not work.

## Usage

Run either utility from the Windows Command Prompt (`cmd`) or a batch script (`.cmd` / `.bat`):

```cmd
renamer <file_name>
renamer2 <file_name>
```

### Examples

1. **Add timestamp to the end (`renamer.exe`):**
   ```cmd
   renamer report.txt
   ```
   Result: `report_2026.11.22_09#30#00.txt`

2. **Add timestamp to the beginning (`renamer2.exe`):**
   ```cmd
   renamer2 report.txt
   ```
   Result: `2026.11.22_09#30#00_report.txt`

## Author

* **Email:** puff@mail.ru
