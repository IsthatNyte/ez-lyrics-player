# EZ Lyrics Player

> Standalone lightweight music player and real-time synchronized lyrics HUD with LiquidGL UI.

EZ Lyrics Player is an ultra-lightweight desktop music player and synchronized lyrics display designed to replace heavy desktop clients. It delivers crystal-clear audio playback, millisecond-accurate time-synced lyrics, and rich visual customization while consuming only 40–50 MB of RAM.

---

## Key Features

- **Zero Spotify Dependency**: Stream music and view lyrics completely standalone with Spotify desktop closed.
- **Instant Playlist & Search Playback**: Play your personal playlists from track 1 with a single click, or search any song and stream it directly.
- **Smart Song Radio & Recommendations**: Skip any searched song to automatically discover and queue similar recommended tracks by related artists.
- **Shuffle & Loop Controls**: Toggle true shuffle queue navigation and single-track repeat directly from player controls.
- **Real-Time Synced Lyrics**: Frame-accurate scrolling lyrics with multi-provider fallback (LRCLIB, NetEase, Musixmatch).
- **Phonetic & Romanization Sub-Lines**: Live phonetic translation sub-lines for international tracks.
- **LiquidGL Frosted Glass UI**: Dynamic album-art-tinted glassmorphism HUD with drag-to-reposition and resize controls.
- **Sub-50ms Cold Launch**: Multi-tier persistent cache store for instantaneous stream and cover retrieval.
- **Ghost Click-Through Mode**: Overlay lyrics seamlessly above games, code editors, or browser windows (`Ctrl+Shift+L`).
- **Discord Rich Presence**: Native IPC integration broadcasting your live playback status.

---

## How It Works

1. **Concurrent Audio Pipeline**: When you search or play a track, the player queries audio stream sources, album artwork, and lyric databases simultaneously in parallel worker threads.
2. **Lyric Synchronization Engine**: Synced lyrics (`.lrc` timestamps) are scraped, normalized, and mapped to playback position with sub-second interpolation.
3. **Atomic State Synchronization**: Metadata, dominant album cover colors, BPM estimation, and audio streams are synchronized atomically through thread-safe locks, preventing visual or acoustic stutter.
4. **Persistent Multi-Tier Disk Cache**: Stream URLs, cover thumbnails, and parsed lyrics are saved in local JSON cache structures, allowing instant replay without network round-trips.
5. **Hardware-Accelerated Webview GUI**: Powered by Python `pywebview` utilizing the native Edge WebView2 engine for zero-overhead rendering without Chromium bloat.

---

## Frequently Asked Questions (FAQ)

### Does EZ Lyrics Player require Spotify to be installed or open?
No. EZ Lyrics Player operates 100% standalone. You can run it with Spotify desktop completely closed.

### How much RAM and CPU does EZ Lyrics Player use?
EZ Lyrics Player uses approximately 40 to 50 MB of RAM and negligible CPU (under 0.5% during active playback). In contrast, standard desktop clients consume 400 to 800 MB of RAM.

### How does the skip recommendation feature work?
When you play a song from search, skipping queries artist radio feeds (via Deezer and iTunes catalog search), queuing top-ranked tracks from the artist and closely related artists automatically.

### How accurate is lyric synchronization?
Lyrics sync to the millisecond using timestamped LRC lines. The player updates line positioning smoothly with hardware-accelerated CSS transitions.

### How do I use the playlist controls?
Clicking the Play button badge on a playlist row plays the playlist from the start. Clicking anywhere else on the row opens the playlist to view the full track list.

---

## Installation & Running from Source

### Prerequisites
- Windows 10 or 11
- Python 3.10+ (if running from source)

### Run from Source
```bash
git clone https://github.com/IsthatNyte/ez-lyrics-player.git
cd ez-lyrics-player
pip install -r requirements.txt
python app.py
```

### Pre-Built Executable
You can download the standalone `EZ Lyrics Player.exe` directly from the Releases tab and run it without installing Python or dependencies.
