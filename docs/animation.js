const frameCount = 7;
const frameDelay = 1000;

function buildFrames(folder) {
    return Array.from({ length: frameCount }, (_, i) => `animation/${folder}/${i}.webp`);
}

function startAnimation(imageId, folder) {
    const img = document.getElementById(imageId);
    if (!img) return;

    const frames = buildFrames(folder);
    let current = 0;

    function step() {
        img.src = frames[current];
        current = (current + 1) % frames.length;
        setTimeout(step, frameDelay);
    }

    step();
}

startAnimation('anim-activation', 'activation');
startAnimation('anim-range', 'range');
startAnimation('anim-speed', 'speed');