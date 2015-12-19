import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.2
import QtQuick.Dialogs 1.2
import QtQuick.Controls.Styles 1.4

Rectangle{
    
    id: retorno
    property int altura: 1
    property int largura: 1
    width: largura
    height: altura
    color: "#90A4AE"
    
    Image {
        id: retur
        source: "qrc:/../seta_esq.png"
        width : 512*0.07
        height : 512*0.07
        anchors.centerIn: retorno
        //parseInt(escreve suas porrinha aqui)r
    }
    
    
}
