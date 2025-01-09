import { createSystem, defineConfig, defaultConfig } from "@chakra-ui/react"
import { textStyles } from "./textStyles"

const config = defineConfig({
  theme: {
    textStyles,
  },
})

export default createSystem(defaultConfig, config)
