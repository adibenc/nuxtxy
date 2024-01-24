<script setup>
const links = [{
		label: 'index',
		icon: 'i-heroicons-home',
		to: '/'
	}, {
		label: 'UI - overlays',
		icon: 'i-heroicons-chart-bar',
		to: '/ui-overlays'
	}, {
		label: 'UI - elements',
		icon: 'i-heroicons-chart-bar',
		to: '/ui-els'
	}, {
		label: 'About',
		icon: 'i-heroicons-command-line',
		to: '/about'
	},{
		label: 'Login',
		icon: 'i-heroicons-command-line',
		to: '/login'
}]
</script>
<template>
	<div>
		<UContainer
		class="flex flex-row">
		<div class="basis-1/4">
			<UVerticalNavigation :links="links" />
		</div>
		<div class="basis-3/4">
			<UContainer>
				<div>
					<slot name="content"></slot>
				</div>
			</UContainer>
		</div>
	</UContainer>
	</div>
</template>