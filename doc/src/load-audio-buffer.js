const contexts = new Map();

export default async function loadAudioBuffer(pathname, sampleRate = 48000) {
  if (!contexts.has(sampleRate)) {
    const context = new OfflineAudioContext(1, 1, sampleRate);
    contexts.set(sampleRate, context);
  }

  const response = await fetch(pathname);
  const arrayBuffer = await response.arrayBuffer();

  const context = contexts.get(sampleRate);
  const audioBuffer = await context.decodeAudioData(arrayBuffer);

  return audioBuffer;
}
