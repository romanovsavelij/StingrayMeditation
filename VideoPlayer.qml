import controls.Player;

import "js/constants.js" as constants;

Player {
    id: meditationPlayer;
    focus: true;
    isFullscreen: true;

    function playVideoById(videoId) {
        log("start loading!");
        meditationPlayer.abort();
        log("aborted");
        log(constants.videos[videoId].url);
        meditationPlayer.playUrl(constants.videos[videoId].url);
        log("playUrl completed");
        meditationPlayer.setFocus();
        log("plaVideoById completed");
    }
}
