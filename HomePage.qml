// Copyright (c) 2011 - 2019, GS Group, https://github.com/GSGroup
// Permission to use, copy, modify, and/or distribute this software for any purpose with or without fee is hereby granted,
// provided that the above copyright notice and this permission notice appear in all copies.
// THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS.
// IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS,
// WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

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

		FocusablePanel {

			id: menuButton;
			anchors.horizontalCenter: safeArea.horizontalCenter;
			anchors.verticalCenter: safeArea.verticalCenter;
			width: 250;
			height: 50;
			BodyText {
				id: txt;
				anchors.horizontalCenter: safeArea.horizontalCenter;
				anchors.verticalCenter: safeArea.verticalCenter;
				color: "#581B18";
				text:"Help1 me pls";
			}
			onSelectPressed: {
				log("MenuButton PRESSED!");
				parent.MenuEvent();
			}
		}
}

