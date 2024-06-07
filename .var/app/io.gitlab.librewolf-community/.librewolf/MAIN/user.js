// enable UserChrome.css
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);

// save tabs and session, also applies to SimpleTabGroups
user_pref("privacy.clearOnShutdown.sessions", false);
user_pref("services.sync.prefs.sync-seen.privacy.clearOnShutdown.sessions", true);
user_pref("browser.sessionstore.restore_hidden_tabs", true);
user_pref("browser.sessionstore.restore_pinned_tabs_on_demand", true);
