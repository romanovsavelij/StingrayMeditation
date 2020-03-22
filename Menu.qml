import controls.Edit;
import "MenuButton.qml";
import "VideoPlayer.qml";

Item{
    height:650;
    width:1250;
    focus: true;
    Image {
        id: background;
        anchors.horizontalCenter: safeArea.horizontalCenter;
        anchors.verticalCenter: safeArea.verticalCenter;
        source: "apps/StingrayMeditation/img/MenuBackground.png";
    }

    Column {
        anchors.centerIn: parent;
        spacing: 100;
        
        Row {

            anchors.horizontalCenter: parent.horizontalCenter;
          
            MenuButton {
                label: "Дождь";
                imagePath: "apps/StingrayMeditation/img/rain.png";
                onSelectPressed: {
                    meditationPlayer.playVideoById(constants.rainVideoId);
                }
            }

            MenuButton {
                label: "Природа";
                imagePath: "apps/StingrayMeditation/img/tree.png";
                onSelectPressed: {
                    meditationPlayer.playVideoById(constants.natureVideoId);
                }
            }

            MenuButton {
                label: "Камин";
                imagePath: "apps/StingrayMeditation/img/fire.png";
                onSelectPressed: {
                    meditationPlayer.playVideoById(constants.fireVideoId);
                }
            }

            MenuButton {
                label: "Птицы";
                imagePath: "apps/StingrayMeditation/img/bird.png";
                onSelectPressed: {
                    meditationPlayer.playVideoById(constants.birdsVideoId);
                }
            }

        spacing: 120;

        }

        Row {
            anchors.horizontalCenter: parent.horizontalCenter;

            MenuButton {
                label: "Piano";
                imagePath: "apps/StingrayMeditation/img/piano.png";
                onSelectPressed: {
                    meditationPlayer.playVideoById(constants.pianoVideoId);
                }
            }

            MenuButton {
                label: "Водопад";
                imagePath: "apps/StingrayMeditation/img/waterfall.png";
                onSelectPressed: {
                    meditationPlayer.playVideoById(constants.waterfallVideoId);
                }
            }

            MenuButton {
                label: "Ветер";
                imagePath: "apps/StingrayMeditation/img/wind.png";
                onSelectPressed: {
                    meditationPlayer.playVideoById(constants.windVideoId);
                }
            }

            spacing: 120;

        }
    }
    Edit{
	height:70;
	width:800;
	//anchors.leftMargin: 400;
	showBackground: false;
	anchors.horizontalCenter: safeArea.horizontalCenter;
   	BodyText {
        	text: "Выберите пятиминутное видео";
       		anchors.horizontalCenter: parent.horizontalCenter;
		anchors.verticalCenter: parent.verticalCenter;
   	}
    }
    VideoPlayer {
        id: meditationPlayer;
        anchors.fill: mainWindow;
        visible: false;

        onBackPressed: {
            log("player abort");
            meditationPlayer.abort();
            meditationPlayer.visible = false;
            log("player was hide!")
        }
    }

    onVisibleChanged: {
        meditationPlayer.abort();
        meditationPlayer.visible = false;
        log("onVisibleChanged: player was hide!");
    }
}
