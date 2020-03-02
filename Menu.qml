// Copyright (c) 2011 - 2019, GS Group, https://github.com/GSGroup
// Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted,
// provided that the above copyright notice and this permission notice appear in all copies.
// THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS.
// IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS,
// WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

import controls.Edit;
import "MenuButton.qml";

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
	    imagePath: "apps/StingrayMeditation/img/rain.png"
		}

      MenuButton {
        label: "Природа";
        imagePath: "apps/StingrayMeditation/img/tree.png"
      }

      MenuButton {
        label: "Камин";
        imagePath: "apps/StingrayMeditation/img/fire.png"
      }

      MenuButton {
        label: "Птицы";
        imagePath: "apps/StingrayMeditation/img/bird.png"
      }

      spacing: 120;

	    }

	    Row {
	      anchors.horizontalCenter: parent.horizontalCenter;

	      MenuButton {
	        label: "Piano";
	        imagePath: "apps/StingrayMeditation/img/piano.png"
	      }

	      MenuButton {
	        label: "Водопад";
	        imagePath: "apps/StingrayMeditation/img/waterfall.png"
	      }

	      MenuButton {
	        label: "Ветер";
	        imagePath: "apps/StingrayMeditation/img/wind.png"
	      }

	      spacing: 120;

	    }
	  }
}
