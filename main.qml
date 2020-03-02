import controls.Button;
import controls.Edit;
import "VideoPlayer.qml";

Application {
	id: meditation;
	Image {
		id: background;
		anchors.horizontalCenter: safeArea.horizontalCenter;
		anchors.verticalCenter: safeArea.verticalCenter;
		source: "apps/hello_world/background.png";
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
			meditationPlayer.playVideoByName("Rain");	
   		}
	
  	}
  	onStarted: { pressMeButton.setFocus(); }
	
	VideoPlayer {
        	id: meditationPlayer;

        	anchors.fill: safeArea;

        	visible: false;

        }

}

