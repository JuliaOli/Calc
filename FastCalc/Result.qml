import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.2
import QtQuick.Dialogs 1.2
import QtQuick.Controls.Styles 1.4

Text {
    
    property string resultInt: "0"
    id: result
    text: qsTr(resultInt)
    font.pixelSize: 80
    font.family: "Arial"
    style: Text.Raised
    Layout.alignment: Qt.AlignHCenter
}
