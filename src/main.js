import './assets/app.scss'
import './assets/Block.scss'
import App from './App.svelte'
import { mount } from 'svelte';

const app = mount(App, {
	target: document.querySelector('#app'),
});

export default app
