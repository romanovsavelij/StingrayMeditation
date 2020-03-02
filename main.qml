import controls.Button;
import controls.Edit;
import "VideoPlayer.qml";

Application {
	id: meditation;
	Image {
		id: background;
		anchors.horizontalCenter: safeArea.horizontalCenter;
		anchors.verticalCenter: safeArea.verticalCenter;
		source: "apps/StingrayMeditation/background.png";	
	}
  	Button {
    		id: pressMeButton;
    		property int counter;

   		anchors.centerIn: parent;
    		text: "PRESS ME";
    		onSelectPressed: {
      			pressMeButton.counter = pressMeButton.counter + 1;
        		error("Counter: " + pressMeButton.counter);
			meditationPlayer.visible = true;
			log("start watching!")
			log(constants.rainVideoId);
			meditationPlayer.playVideoById(constants.rainVideoId);	
   		}
	
  	}
  	onStarted: { pressMeButton.setFocus(); }
	
	VideoPlayer {
        	id: meditationPlayer;

        	anchors.fill: safeArea;

        	visible: false;

		onBackPressed: {
			log("player abort");
			meditationPlayer.abort();
			meditationPlayer.visible = false;
			background.visible = true;
			pressMeButton.visible = true;
			pressMeButton.setFocus();
			log("player was hide!")		
		}

        }
	
	onVisibleChanged: {
	        meditationPlayer.abort();
                meditationPlayer.visible = false;
		log("onVisibleChanged: player was hide!");
		pressMeButton.visible = true;
		pressMeButton.setFocus();		
	}
}

