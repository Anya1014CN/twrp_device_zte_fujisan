#!/bin/bash
set -euo pipefail

cd ~/twrp-8.1/bootable/recovery

python3 - <<'PY'
from pathlib import Path

replacements = {
    "gui/blanktimer.cpp": [
        (
            'bool blanktimer::isScreenOff() {\n\treturn state >= kOff;\n}\n',
            'bool blanktimer::isScreenOff() {\n\treturn state >= kOff;\n}\n\n'
            'static const char* blank_state_name(int state) {\n'
            '\tswitch (state) {\n'
            '\t\tcase 0: return "kOn";\n'
            '\t\tcase 1: return "kDim";\n'
            '\t\tcase 2: return "kOff";\n'
            '\t\tcase 3: return "kBlanked";\n'
            '\t\tdefault: return "unknown";\n'
            '\t}\n'
            '}\n'
        ),
        (
            '\tclock_gettime(CLOCK_MONOTONIC, &curTime);\n',
            '\tclock_gettime(CLOCK_MONOTONIC, &curTime);\n'
            '\tLOGINFO("blanktimer::checkForTimeout state=%s timer=%d\\n", blank_state_name(state), sleepTimer);\n'
        ),
        (
            'void blanktimer::resetTimerAndUnblank(void) {\n',
            'void blanktimer::resetTimerAndUnblank(void) {\n'
            '\tLOGINFO("blanktimer::resetTimerAndUnblank state=%s\\n", blank_state_name(state));\n'
        ),
        (
            'void blanktimer::blank(void) {\n',
            'void blanktimer::blank(void) {\n'
            '\tLOGINFO("blanktimer::blank state=%s\\n", blank_state_name(state));\n'
        ),
        (
            'void blanktimer::toggleBlank(void) {\n',
            'void blanktimer::toggleBlank(void) {\n'
            '\tLOGINFO("blanktimer::toggleBlank state=%s\\n", blank_state_name(state));\n'
        ),
    ],
    "gui/pages.cpp": [
        (
            'int PageManager::ChangePage(std::string name)\n{\n',
            'int PageManager::ChangePage(std::string name)\n{\n'
            '\tLOGINFO("PageManager::ChangePage current=%s target=%s\\n", GetCurrentPage().c_str(), name.c_str());\n'
        ),
        (
            'int PageManager::ChangeOverlay(std::string name)\n{\n',
            'int PageManager::ChangeOverlay(std::string name)\n{\n'
            '\tLOGINFO("PageManager::ChangeOverlay target=%s\\n", name.c_str());\n'
        ),
    ],
    "minuitwrp/graphics.cpp": [
        (
            'void gr_fb_blank(bool blank)\n{\n',
            'void gr_fb_blank(bool blank)\n{\n'
            '    LOGINFO("gr_fb_blank blank=%d\\n", blank ? 1 : 0);\n'
        ),
    ],
}

for rel, rules in replacements.items():
    path = Path(rel)
    text = path.read_text()
    original = text
    for old, new in rules:
        if old in text and new not in text:
            text = text.replace(old, new, 1)
    if text != original:
        path.write_text(text)
        print(f"patched {rel}")
    else:
        print(f"unchanged {rel}")
PY

git diff -- gui/blanktimer.cpp gui/pages.cpp minuitwrp/graphics.cpp
