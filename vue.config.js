module.exports = {
    css: {
      loaderOptions: {
        scss: {
          additionalData: '@import "./src/assets/sass/prepends.scss";'
        }
      }
    }
  };