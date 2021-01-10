export default {
  server: {
    port: 3001
  },
  root: process.cwd() + "/app/javascript",
  build: {
    manifest: true,
    outDir: "../../public/dist",
    rollupOptions: {
      input: './app/javascript/application.js'
    }
  }
}
