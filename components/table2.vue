<script setup>
const columns = [{
  key: 'id',
  label: 'ID'
}, {
  key: 'name',
  label: 'Name'
}, {
  key: 'title',
  label: 'Title'
}, {
  key: 'email',
  label: 'Email'
}, {
  key: 'role',
  label: 'Role'
}]

const people = [{
  id: 1,
  name: 'Lindsay Walton',
  title: 'Front-end Developer',
  email: 'lindsay.walton@example.com',
  role: 'Member'
}, {
  id: 2,
  name: 'Courtney Henry',
  title: 'Designer',
  email: 'courtney.henry@example.com',
  role: 'Admin'
}, {
  id: 3,
  name: 'Tom Cook',
  title: 'Director of Product',
  email: 'tom.cook@example.com',
  role: 'Member'
}, {
  id: 4,
  name: 'Whitney Francis',
  title: 'Copywriter',
  email: 'whitney.francis@example.com',
  role: 'Admin'
}, {
  id: 5,
  name: 'Leonard Krasner',
  title: 'Senior Designer',
  email: 'leonard.krasner@example.com',
  role: 'Owner'
}, {
  id: 6,
  name: 'Floyd Miles',
  title: 'Principal Designer',
  email: 'floyd.miles@example.com',
  role: 'Member'
}]

const q = ref('')

const filteredRows = computed(() => {
  if (!q.value) {
    return people
  }

  return people.filter((person) => {
    return Object.values(person).some((value) => {
      return String(value).toLowerCase().includes(q.value.toLowerCase())
    })
  })
})

const page = ref(1)
const pageCount = ref(parseInt(people.length/3))
const rows = computed(() => {
	let slc = people.slice((page.value - 1) * pageCount, (page.value) * pageCount)
	filteredRows.value = slc
	return slc
})

</script>

<template>
<div>
	<div class="flex px-3 py-3.5 border-b border-gray-200 dark:border-gray-700">
		<UInput v-model="q" placeholder="Filter people..." />
	</div>

	<!-- :rows="filteredRows"  -->
	<UTable 
		:rows="filteredRows"
	/>
		<!-- :columns="columns" 
		:page-count="pageCount" 
		:total="people.length" -->
	<div class="flex justify-end px-3 py-3.5 border-t border-gray-200 dark:border-gray-700">
		<UPagination v-model="page" :page-count="pageCount" 
		:total="people.length" />
	</div>
</div>
</template>

