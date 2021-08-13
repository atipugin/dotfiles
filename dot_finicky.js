module.exports = {
  defaultBrowser: "Safari",
  handlers: [
    {
      match: "*.zoom.us/j/*",
      browser: "us.zoom.xos",
    },
    {
      match: "open.spotify.com/track/*",
      browser: "Spotify",
    },
  ],
};
