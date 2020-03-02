import controls.Player;

import "js/constants.js" as constants;

Player {
    id: meditationPlayer;

    focus: true;

    isFullscreen: true;

    function playVideoByName(videoName) {
        log("start loading!");
        meditationPlayer.abort();
	log("aborted")
        meditationPlayer.playUrl(constants.videos[videoName]);
	log("playUrl completed")
	meditationPlayer.setFocus();
	log("plaVideoById completed")
    }
}
