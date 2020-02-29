import controls.Player;

import "js/constants.js" as constants;

Player {
    id: iviPlayer;

    focus: true;

    isFullscreen: true;

    function playVideoById(id) {
        log("start loading!");
        iviPlayer.abort();
	log("aborted")
        iviPlayer.playUrl("http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4");
	log("playUrl completed")
	iviPlayer.setFocus();
	log("plaVideoById completed")
    }
}
