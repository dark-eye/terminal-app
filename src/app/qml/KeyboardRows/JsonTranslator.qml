import QtQuick 2.4
import Ubuntu.Components 1.3

Item {

    // Enum for translation types
    readonly property int name: 0
    readonly property int shortName: 1
    readonly property int modifier: 2
    readonly property int key: 3

    // The first parameter has to be one of the readonly properties above
    function getTranslatedNameById(type, id) {
        switch(type) {
        case name:
            if (id === "ctrl_keys") {
                // TRANSLATORS: This a keyboard layout name
                return i18n.tr("Control Keys");
            } else if (id === "fn_keys") {
                // TRANSLATORS: This a keyboard layout name
                return i18n.tr("Function Keys");
            } else if (id === "scroll_keys") {
                // TRANSLATORS: This a keyboard layout name
                return i18n.tr("Scroll Keys");
            } else if (id === "simple_cmds") {
                // TRANSLATORS: This a keyboard layout name
                return i18n.tr("Command Keys");
            }

            return "";
        case shortName:
            var translation = "";
            if (id === "ctrl_keys") {
                // TRANSLATORS: This the short display name of a keyboard layout. It should be no longer than 4 characters!
                translation = i18n.tr("CTRL");
            } else if (id === "fn_keys") {
                // TRANSLATORS: This the short display name of a keyboard layout. It should be no longer than 4 characters!
                translation = i18n.tr("FNS");
            } else if (id === "scroll_keys") {
                // TRANSLATORS: This the short display name of a keyboard layout. It should be no longer than 4 characters!
                translation = i18n.tr("SCR");
            } else if (id === "simple_cmds") {
                // TRANSLATORS: This the short display name of a keyboard layout. It should be no longer than 4 characters!
                translation = i18n.tr("CMD");
            }

            if (translation !== "") {
                // Shorten the string if the translation is longer than 4 characters
                if (translation.length <= 4) {
                    return translation;
                } else {
                    return translation.substring(0, 4);
                }
            }

            return "";
        case modifier:
            var translation = "";
            if (id === "Control") {
                // TRANSLATORS: This is the name of the Control key. All letters should be uppercase!
                translation = i18n.tr("CTRL");
            } else if (id === "Alt") {
                // TRANSLATORS: This is the name of the Alt key. All letters should be uppercase!
                translation = i18n.tr("ALT");
            } else if (id === "Shift") {
                // TRANSLATORS: This is the name of the Shift key. All letters should be uppercase!
                translation = i18n.tr("SHIFT");
            }

            if (translation !== "") {
                // Always return the translation in uppercase letters
                return translation.toUpperCase();
            }

            return id;
        case key:
            var translation = "";
            if (id === "esc_key") {
                // TRANSLATORS: This is the name of the Escape key. All letters should be uppercase!
                translation = i18n.tr("ESC");
            } else if (id === "pg_up_key") {
                // TRANSLATORS: This is the name of the Page Up key. All letters should be uppercase!
                translation = i18n.tr("PG_UP");
            } else if (id === "pg_dn_key") {
                // TRANSLATORS: This is the name of the Page Down key. All letters should be uppercase!
                translation = i18n.tr("PG_DN");
            } else if (id === "del_key") {
                // TRANSLATORS: This is the name of the Delete key. All letters should be uppercase!
                translation = i18n.tr("DEL");
            } else if (id === "home_key") {
                // TRANSLATORS: This is the name of the Home key. All letters should be uppercase!
                translation = i18n.tr("HOME");
            } else if (id === "end_key") {
                // TRANSLATORS: This is the name of the End key. All letters should be uppercase!
                translation = i18n.tr("END");
            } else if (id === "tab_key") {
                // TRANSLATORS: This is the name of the Tab key. All letters should be uppercase!
                translation = i18n.tr("TAB");
            } else if (id === "enter_key") {
                // TRANSLATORS: This is the name of the Enter key. All letters should be uppercase!
                translation = i18n.tr("ENTER");
            }

            if (translation !== "") {
                // Always return the translation in uppercase letters
                return translation.toUpperCase();
            }

            return id;
        default:
            return "";
        }
    }

}
