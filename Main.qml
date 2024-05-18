import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Timer")

    property int counter: 1000

    Timer {
        id: timer
        repeat: true
        running: true
        onTriggered: {
            counter--
        }
    }

    Column {
        anchors.centerIn: parent

        Text {
            id: counterText
            text: counter
            font.pointSize: 24
        }

        Button {
            id: controlButton
            text: "Stop"
            onClicked: {
                if (timer.running) {
                    timer.stop()
                    controlButton.text = "Start"
                } else {
                    timer.start()
                    controlButton.text = "Stop"
                }
            }
        }
    }
}
