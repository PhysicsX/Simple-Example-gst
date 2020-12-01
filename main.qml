import QtQuick 2.2
import QtQuick.Window 2.2
import QtMultimedia 5.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        width: 800
        height: 600
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
