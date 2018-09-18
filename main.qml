import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.2

Window {
    visible: true
    width: 1024
    height: 768
    title: qsTr("Client Management")
    color: "#ffffff"
//    Text {
//        id: message
//        anchors.centerIn: parent
//        font.pixelSize: 44
//        text: masterController.ui_welcomeMessage
//        color: "#008000"
//    }

    StackView {
        id: contentFrame
        clip: true
        anchors {
            top: parent.top
            bottom: parent.bottom
            right: parent.right
            left: navigationBar.right
        }
        initialItem: Qt.resolvedUrl("qrc:/SplashView.qml")
    }

    Component.onCompleted:
    contentFrame.replace("qrc:/DashboardView.qml");

    Button {
        onClicked: contentFrame.replace("qrc:/CreateClientView.qml")
    }

    Connections {
        target: masterController.ui_navigationController
            onGoCreateClientView: contentFrame.replace("qrc:/CreateClientView.qml")
            onGoDashboardView: contentFrame.replace("qrc:/DashboardView.qml")
            onGoEditClientView: contentFrame.replace("qrc:/EditClientView.qml", {selectedClient:client})
            onGoFindClientView: contentFrame.replace("qrc:/FindClientView.qml")
    }

    Rectangle {
        id: navigationBar
        anchors {
            top: parent.top
            bottom: parent.bottom
            left: parent.left
        }
        width: 100
        color: "#000000"

        Column {
            Button {
                text: "Dashboard"
                onClicked: masterController.ui_navigationController.goDashboardView()
            }

           Button {
               text: "New Client"
               onClicked: masterController.ui_navigationController.goCreateClientView()
            }

           Button {
                text: "Find Client"
                onClicked: masterController.ui_navigationController.goFindClientView()
            }
        }
    }
}

