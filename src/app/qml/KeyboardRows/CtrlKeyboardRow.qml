import QtQuick 2.0
import Ubuntu.Components 1.1

KeyboardRow {
    id: functionKeyBars
    keyWidth: units.gu(9)

    actions: [
        Action {text: "CTRL+R"; onTriggered: simulateKey(Qt.Key_R, Qt.ControlModifier);},
        Action {text: "CTRL+C"; onTriggered: simulateKey(Qt.Key_C, Qt.ControlModifier);},
        Action {text: "CTRL+Z"; onTriggered: simulateKey(Qt.Key_Z, Qt.ControlModifier);},
        Action {text: "CTRL+A"; onTriggered: simulateKey(Qt.Key_A, Qt.ControlModifier);},
        Action {text: "CTRL+D"; onTriggered: simulateKey(Qt.Key_D, Qt.ControlModifier);}
    ]
}