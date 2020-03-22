import controls.Button;
import controls.FocusablePanel;


Item {
    id: mainMenu;
    focus: true;
        
    Image {
        id: background;
        anchors.horizontalCenter: safeArea.horizontalCenter;
        anchors.verticalCenter: safeArea.verticalCenter;
        source: "apps/StingrayMeditation/img/HomeBackground.png";
    }

    signal MenuEvent();

    //BodyText {
    //  text: "Stingray Meditation";
    //  color: "#fff";
    //  anchors.horizontalCenter: safeArea.horizontalCenter;
    //}

    FocusablePanel {
        id: menuButton;
        anchors.horizontalCenter: safeArea.horizontalCenter;
        anchors.verticalCenter: safeArea.verticalCenter;
        width: 180;
        height: 180;
        color: active ? "#ddddff" : colorTheme.focusablePanelColor;
        radius: 90;

        Image {
            id: txt;
            source: "apps/StingrayMeditation/img/play.png";
            width: 180;
            height: 180;
            anchors.horizontalCenter: safeArea.horizontalCenter;
            anchors.verticalCenter: safeArea.verticalCenter;
        }
        onSelectPressed: {
            log("MenuButton PRESSED!");
            parent.MenuEvent();
        }
    }   
}