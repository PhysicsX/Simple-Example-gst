import QtQuick 2.2
import QtQuick.Window 2.2
import QtMultimedia 5.2

Window {
    visible: true
    width: parent.width
    height: parent.height
    title: qsTr("Hello World")

    Rectangle {
        width: parent.width
        height: parent.height
        color: "black"

        MediaPlayer {
            id: player
            source: "gst-pipeline: nvarguscamerasrc ! autovideoconvert ! qtvideosink"



            autoPlay: true
        }

        VideoOutput {
            id: videoOutput
            source: player
            anchors.fill: parent
        }
    }
}
