import { _$LE, html, render } from 'lit';

import '@ircam/sc-components';
import resumeAudioContext from './resume-audio-context.js';


//import * as lin from 'linear-algebra';

//console.log(lin);
//var linearAlgebra = require('linear-algebra')(),     // initialise it
//    Vector = linearAlgebra.Vector;


const audioContext = new AudioContext({ sampleRate: 44100 });
await resumeAudioContext(audioContext);
await audioContext.audioWorklet.addModule('../src/StringProcessor.js');

let impulseWidth = 0.01;

let oscillatorNode = new OscillatorNode(audioContext);
const string = new AudioWorkletNode(audioContext, 'string-processor');
const inGainNode = new GainNode(audioContext);
inGainNode.gain.value = 0.1;
const outGainNode = new GainNode(audioContext);
//oscillatorNode.connect(inGainNode).connect(string).connect(outGainNode).connect(audioContext.destination);
inGainNode.connect(string).connect(outGainNode).connect(audioContext.destination);
//oscillatorNode.start();

function impulseSource() {
  const N = impulseWidth * audioContext.sampleRate;
  const buffer = audioContext.createBuffer(1, N, audioContext.sampleRate);
  // Fill with half a sine wave
  for (let i = 0; i < N; i++) {
    buffer.getChannelData(0)[i] = Math.sin(i / N * Math.PI);
  }
  const bufferSource = audioContext.createBufferSource();
  bufferSource.buffer = buffer;
  bufferSource.connect(inGainNode);
  bufferSource.start();
}

function startOscillator() {
  oscillatorNode = new OscillatorNode(audioContext);
  oscillatorNode.connect(inGainNode);
  oscillatorNode.start();
}

render(html`
  <h1>String geom</h1>
  <div>
    <sc-toggle
      ?checked=${1}
      @change=${function(e){
        if (e.target.checked) {
          startOscillator();
        } else {
          oscillatorNode.disconnect();
        }
      }}
    >Oscillator on</sc-toggle>
    <sc-text> Input frequency </sc-text>
    <sc-slider
      min = "50"
      max="1000"
      number-box
      value=${oscillatorNode.frequency.value}
      @input=${function(e){
        oscillatorNode.frequency.setValueAtTime(e.detail.value, audioContext.currentTime, 0.02);
      }}
      ></sc-slider>
    <sc-text> Input gain </sc-text>
    <sc-slider
      min = "0"
      max="10"
      number-box
      value=${inGainNode.gain.value}
      @input=${function(e){
        inGainNode.gain.setValueAtTime(e.detail.value, audioContext.currentTime, 0.02);
      }}
      ></sc-slider>
    <sc-text> Output gain </sc-text>
    <sc-slider
      min = "0"
      max = 1
      number-box
      value=${outGainNode.gain.value}
      @input=${function(e){
        outGainNode.gain.setValueAtTime(e.detail.value, audioContext.currentTime, 0.02);
      }}
      ></sc-slider>
      <sc-button @click=${impulseSource}>Impulse</sc-button>
      <sc-slider
        min = "0.1"
        max = "10"
        number-box
        value=${impulseWidth}
        @input=${function(e){
          impulseWidth = e.detail.value / 1000;
        }}
      ></sc-slider>
  </div>
`, document.body);


