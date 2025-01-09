import { defineTextStyles } from "@chakra-ui/react"

export const textStyles = defineTextStyles({
  customStyle: {
    description: "カスタムテキストスタイル",
    value: {
      fontFamily: "Meiryo, sans-serif",
      fontWeight: "500",
      fontSize: "16px",
      lineHeight: "24",
      letterSpacing: "0",
      textDecoration: "None",
      textTransform: "None",
    },
  },
})

export default { textStyles }
