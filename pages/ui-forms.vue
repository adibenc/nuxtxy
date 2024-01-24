<script setup>
import { z } from 'zod'

//
const people = ['Wade Cooper', 'Arlene Mccoy', 'Devon Webb', 'Tom Cook', 'Tanya Fox', 'Hellen Schmidt', 'Caroline Schultz', 'Mason Heaney', 'Claudie Smitham', 'Emil Schaefer']
const selected = ref(people[0])

const options = [
  { id: 1, name: 'Wade Cooper', colors: ['red', 'yellow'] },
  { id: 2, name: 'Arlene Mccoy', colors: ['blue', 'yellow'] },
  { id: 3, name: 'Devon Webb', colors: ['green', 'blue'] },
  { id: 4, name: 'Tom Cook', colors: ['blue', 'red'] },
  { id: 5, name: 'Tanya Fox', colors: ['green', 'red'] },
  { id: 5, name: 'Hellen Schmidt', colors: ['green', 'yellow'] }
]

const utv = ref(true)
const rv = ref(50)
const email = ref(null)

const schema = z.object({
	username: z.string().min(10, 'Must be at least 10 characters')
})

const state = reactive({
	username: undefined
})

</script>

<template>
	<t-1>
		<template #content>
			<div class="space-x-2 space-y-2">
				<div class="space-x-2 space-y-2">
					<label> std input </label>
					<UInput color="primary" variant="outline" placeholder="Search..." />
					<UInput
						loading
						icon="i-heroicons-magnifying-glass-20-solid"
						placeholder="Searching..."
					/>
				</div>
				<div class="space-x-2 space-y-2">
					<label> Input menu </label>
					<UInputMenu v-model="selected" :options="people" />
					<UInputMenu
						v-model="selected"
						:options="options"
						placeholder="Select a person"
						by="id"
						option-attribute="name"
						:search-attributes="['name', 'colors']"
					>
						<template #option="{ option: person }">
						<span v-for="color in person.colors" :key="color.id" class="h-2 w-2 rounded-full" :class="`bg-${color}-500 dark:bg-${color}-400`" />
						<span class="truncate">{{ person.name }}</span>
						</template>
					</UInputMenu>
				</div>
				<div class="space-x-2 space-y-2">
					<label> Text area </label>
					<UTextarea v-model="value" />
				</div>
				<div>
					<label> Select </label>
					<USelect
						loading
						icon="i-heroicons-magnifying-glass-20-solid"
						color="white"
						size="sm"
						:options="['United States', 'Canada', 'Mexico']"
						placeholder="Search..."
					/>
				</div>
				<div>
					<label> Check box / Toggle</label>
					<UCheckbox label="Label" help="Please check this box" :model-value="false" />
					<UToggle
						on-icon="i-heroicons-check-20-solid"
						off-icon="i-heroicons-x-mark-20-solid"
						v-model="utv"
					/>
				</div>
				<div>
					<label> Range</label>
					<URange v-model="rv" name="range" />
				</div>
				<div>
					<UFormGroup label="Email" 
						hint="Optional"
						:error="!email && 'You must enter an email'"
						>
						<UInput 
							v-model="email"
							placeholder="you@example.com" 
							icon="i-heroicons-envelope" />
					</UFormGroup>
				</div>
				<div>
					<UForm :schema="schema" :state="state" class="space-y-4">
						<UFormGroup label="Username" name="username" eager-validation>
						<UInput v-model="state.username" placeholder="Choose Username" />
						</UFormGroup>
					</UForm>
				</div>
				<UDivider label="-" block/>
				<div>
					<up/>
				</div>
			</div>
		</template>
	</t-1>
</template>

