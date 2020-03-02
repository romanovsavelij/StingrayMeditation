import controls.Button;
import controls.Edit;
import "VideoPlayer.qml";
import "Menu.qml";
import "HomePage.qml";

Application {
		id: meditation;
	
		PageStack {

			id: pageStack;
	
			HomePage {
				onMenuEvent: {
					log("onMenuEvent");
					pageStack.currentIndex=1;
				}
			}

			Menu {
				id: menu;
				onBackPressed: {
					pageStack.currentIndex = 0;
				}
			}
		}
}

