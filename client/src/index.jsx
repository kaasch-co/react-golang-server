import React from 'react';
import { createRoot } from 'react-dom/client';
import App from './app.tsx'
import './style.css'

document.body.innerHTML = '<div id="root"></div>';

const root = createRoot(document.getElementById('root'));
root.render(
	<React.StrictMode>
		<App/>
	</React.StrictMode>
);

