<script setup>
const lorem = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed neque elit, tristique placerat feugiat ac, facilisis vitae arcu. Proin eget egestas augue. Praesent ut sem nec arcu pellentesque aliquet. Duis dapibus diam vel metus tempus vulputate.'
const items = [{
	label: 'Getting Started',
	icon: 'i-heroicons-information-circle',
	defaultOpen: true,
	content: lorem
	}, {
	label: 'Installation',
	icon: 'i-heroicons-arrow-down-tray',
	disabled: true,
	content: lorem
	}, {
	label: 'Theming',
	icon: 'i-heroicons-eye-dropper',
	content: lorem
	}, {
	label: 'Layouts',
	icon: 'i-heroicons-rectangle-group',
	content: lorem
	}, {
	label: 'Components',
	icon: 'i-heroicons-square-3-stack-3d',
	content: lorem
	}, {
	label: 'Utilities',
	icon: 'i-heroicons-wrench-screwdriver',
	content: lorem
}]

const optItem = [
	[{
		label: 'Profile',
		avatar: {
		src: 'https://avatars.githubusercontent.com/u/739984?v=4'
		}
	}], [{
		label: 'Edit',
		icon: 'i-heroicons-pencil-square-20-solid',
		shortcuts: ['E'],
		click: () => {
		console.log('Edit')
		}
	}, {
		label: 'Duplicate',
		icon: 'i-heroicons-document-duplicate-20-solid',
		shortcuts: ['D'],
		disabled: true
	}], [{
		label: 'Archive',
		icon: 'i-heroicons-archive-box-20-solid'
	}, {
		label: 'Move',
		icon: 'i-heroicons-arrow-right-circle-20-solid'
	}], [{
		label: 'Delete',
		icon: 'i-heroicons-trash-20-solid',
		shortcuts: ['⌘', 'D']
	}]
]

</script>

<template>
	<t-1>
		<template #content>
			<div id="acc" class="p-2">
				<UAccordion :items="items" />
			</div>
			<div id="alert" class="space-x-2 space-y-2">
				<UAvatar
					chip-color="primary"
					chip-text=""
					chip-position="top-right"
					size="sm"
					src="https://avatars.githubusercontent.com/u/739984?v=4"
					alt="Avatar"
				/>
				<UAlert
					icon="i-heroicons-command-line"
					color="primary"
					variant="solid"
					title="Heads up!"
					description="You can add components to your app using the cli."
				/>
				<UBadge color="primary" variant="solid">Badge</UBadge>
				<UButton color="primary" variant="solid">Button</UButton>
				<UButton
					icon="i-heroicons-pencil-square"
					size="sm"
					color="primary"
					variant="solid"
					label="Button"
					:trailing="false"
				/>
				<UDivider label="-" block/>
				<UDropdown :items="optItem" :popper="{
					placement: 'bottom-start'
					}">
					<UButton color="white" label="Options" trailing-icon="i-heroicons-chevron-down-20-solid" />
				</UDropdown>
				<UChip>
					<UButton icon="i-heroicons-inbox" color="gray" />
				</UChip>
				<UIcon name="i-heroicons-light-bulb" />
				<UKbd>K</UKbd>
				<UDivider label="-" block/>
				<UProgress :value="70" />
				<UMeter icon="i-heroicons-server" :value="86" label="Disk usage" />
				<UDivider label="-" block/>
			</div>
		</template>
	</t-1>
</template>

