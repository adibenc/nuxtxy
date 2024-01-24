export default defineAppConfig({
	title: 'Hello Nuxt',
	theme: {
		dark: true,
		colors: {
			primary: '#ff0000'
		}
	},
	notifications: {
		// Show toasts at the top right of the screen for desktop
		position: 'lg:top-0 lg:justify-start'
	}
})
