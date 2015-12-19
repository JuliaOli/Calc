import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.2

Rectangle{
    
    id: icon
    property color onColor: "#BDBDBD"
    property color pressColor: "#424242"
    property int altura: 5
    property int largura: 5
    property int raio: 30
    Layout.preferredWidth : largura
    Layout.preferredHeight : altura
    Layout.alignment: Qt.AlignHCenter
    radius: raio
    border.color: "#000000"
    border.width: 5

}
