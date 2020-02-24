import controls.Button;
import controls.Edit;
Application {
	id: fuckyou;
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
   		}
	
  	}
  	onStarted: { pressMeButton.setFocus(); }
}
