/*Disable RFP, detected by Netflix and others*/
user_pref("privacy.resistFingerprinting", false);
user_pref("privacy.spoof_english", 0);
user_pref("privacy.fingerprintingProtection", false);

/*Enable WebGL*/
user_pref("webgl.disabled", false);

/*Improve privacy by hoping big brother doesnt track you (you are fingerprintable anyways)*/
user_pref("privacy.donottrackheader.enabled", true);

/*Allow all referrers. 1 for "only if URLs match", 2 for "only if hosts match" */
user_pref("network.http.referer.XOriginPolicy", 0);

/*Enable Captive portals for login in public wifis*/
user_pref("network.captive-portal-service.enabled", true);
user_pref("captivedetect.canonicalURL", "http://connectivitycheck.grapheneos.org");

/*Canvas Tracking (way too often used for in-browser rendering of images)*/
user_pref("gfx.canvas.accelerated", true);
user_pref("webgl.use-canvas-render-thread", true);
user_pref("privacy.resistFingerprinting.randomDataOnCanvasExtract", false);
user_pref("privacy.resistFingerprinting.autoDeclineNoUserInputCanvasPrompts", false);
