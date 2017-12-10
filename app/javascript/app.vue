<template lang='slm'>
  #app
    p
      | {{ message}}
    img (
      v-for="localId in localIds"
      :src="localId"
    )
    div (
      @click="choose_img"
    )
      | choose
</template>

<script>
export default {
  data: function () {
    return {
      message: "Hello Vue!",
      localIds: null
    }
  },
  methods: {
    choose_img () {
      console.log("choose")
      wx.chooseImage({
        sizeType: ['original', 'compressed'], // 可以指定是原图还是压缩图，默认二者都有
        sourceType: ['album', 'camera'], // 可以指定来源是相册还是相机，默认二者都有
        success: function (res) {
          console.log("success")
          this.localIds = res.localIds; // 返回选定照片的本地ID列表，localId可以作为img标签的src属性显示图片
        },
        fail: function() {
          console.log("failed")
        }
      })
    },
    preview_img () {

    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}

img {
  width: 50%;
}
</style>
