<template lang='slm'>
  #app
    p
      | {{ message}}
    div (
      @click="upload_img_handler"
    )
      | click me
</template>

<script>
export default {
  data: function () {
    return {
      message: "Hello Vue!"
    }
  },
  methods: {
    upload_img_handler () {
      alert("e")
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
