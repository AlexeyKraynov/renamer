# Renamer

A lightweight Windows command-line utility for adding a timestamp suffix to a filename.

**Current version:** `ver_2025/11/15_2249`

## How it works

The tool takes a specified file and appends the current (or file) date and time to its name before the extension:

```text
t.txt  --->  t_2015.12.28_11#25#00.txt
```

* **Timestamp format:** `YYYY.MM.DD_HH24#MI#SS` (fixed; use `date_reformatter.exe` if you need to change the date format).
* **Important requirement:** The target filename **must contain a dot (`.`)** (i.e., have an extension), otherwise the utility will not work.

## Usage

Run the tool from the Windows Command Prompt (`cmd`) or a batch script (`.cmd` / `.bat`):

```cmd
renamer <file_name>
```

### Example

```cmd
renamer report.txt
```
Result: `report_2026.11.22_09#27#00.txt`

## Author

* **Email:** puff@mail.ru
