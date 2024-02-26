export function video() {
    const player = new Plyr('#plyr-video', {
        controls: ['play-large', 'play', 'progress', 'current-time', 'mute', 'volume', 'fullscreen'],
        tooltips: { controls: true, seek: true },
        keyboard: { focused: true, global: true },
        iconUrl: 'https://cdn.plyr.io/3.6.2/plyr.svg',
    });
}