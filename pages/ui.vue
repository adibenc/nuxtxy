<script setup>

const d = ref({
	modal: false,
	overlay: false,
	ctxMenu: false,
})

const toast = useToast()

/* 
import { useMouse } from '@nuxt/ui'
const { x, y } = useMouse()
const { y: windowY } = useWindowScroll()

// const isOpen = ref(false)
// d.ctxMenu
const virtualElement = ref({ getBoundingClientRect: () => ({}) })

function onContextMenu () {
  const top = unref(y) - unref(windowY)
  const left = unref(x)

  virtualElement.value.getBoundingClientRect = () => ({
    width: 0,
    height: 0,
    top,
    left
  })

  d.ctxMenu.value = true
}
<div class="container-lg p-2">
</div>
*/

</script>

<template>
<UContainer>
	<div class="flex flex-row p-2">
		<div class="basis-1/2">
			<div id="modal">
				<UButton label="Open" @click="d.modal = true" />
		
				<UModal v-model="d.modal">
				<UCard :ui="{ ring: '', divide: 'divide-y divide-gray-100 dark:divide-gray-800' }">
					<template #header>
						<UButton color="gray" label="x"
							@click="d.modal = false"
						/>
						<Placeholder class="h-8" />
					</template>
		
					<Placeholder class="h-32" />
		
					<template #footer>
					<Placeholder class="h-8" />
					</template>
				</UCard>
				</UModal>
			</div>
			<div id="overlay">
				<UButton label="Open overlay" @click="d.overlay = true" />
		
				<USlideover v-model="d.overlay">
				<UCard class="flex flex-col flex-1" :ui="{ body: { base: 'flex-1' }, ring: '', divide: 'divide-y divide-gray-100 dark:divide-gray-800' }">
					<template #header>
						<UButton color="gray" label="x"
							@click="d.overlay = false"
						/>
						<Placeholder class="h-8" />
					</template>
		
					<Placeholder class="h-full" />
		
					<template #footer>
					<Placeholder class="h-8" />
					</template>
				</UCard>
				</USlideover>
			</div>
			<UPopover>
				<UButton color="white" label="Open popover" 
					trailing-icon="i-heroicons-chevron-down-20-solid" />
		
				<template #panel>
				<div class="p-4">
					<Placeholder class="h-20 w-48" />
				</div>
				</template>
			</UPopover>
		</div>
		<div class="basis-1/2">
		<div id="popover">
		</div>
		<div>
			<UTooltip text="Tooltip example" :shortcuts="['⌘', 'O']" :popper="{ arrow: true }">
				<UButton color="gray" label="Hover me" />
			</UTooltip>
		</div>
		<!-- <div>
			<div class="w-full" @contextmenu.prevent="onContextMenu">
				<Placeholder class="h-96 select-none w-full flex items-center justify-center">
				Right click here
				</Placeholder>
	
				<UContextMenu v-model="d.ctxMenu" :virtual-element="virtualElement">
				<div class="p-4">
					Menu
				</div>
				</UContextMenu>
			</div>
		</div> -->
		</div>
	</div>
	<div class="flex flex-row p-2">
		<div class="basis-full">
			<div id="notif">
				<UContainer>
					<NuxtPage />
				</UContainer>
				<UNotification
					icon="i-heroicons-check-badge"
					color="green"
					:id="6"
					title="Notification"
					description="This is a notification."
					:timeout="2000"
				/>
				<UButton label="Show toast" @click="toast.add({ title: 'Hello world!' })"/>
			</div>
		</div>
	</div>
</UContainer>
</template>

