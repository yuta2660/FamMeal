import { Box, Text, Highlight } from "@chakra-ui/react"
import Header from "../components/Header"

const Home = () => {
  return (
    <>
      <Header />
      <Box
        backgroundImage={`
          linear-gradient(to right, 
          rgba(255, 255, 255, 0.9) 0%, 
          rgba(255, 255, 255, 0.5) 35%, 
            rgba(255, 255, 255, 0) 40%
          ), 
          url('../images/top2 (3).jpeg')
        `}
        backgroundPosition="center"
        backgroundRepeat="no-repeat"
        backgroundSize="cover"
        height="92vh"
        width="100%"
      >
        <Box w="30%" p="12">
          <Text textStyle="7xl"
            fontWeight="bold"
            color="#C84C05"
          >
            <Highlight query="Meal" styles={{ color: "Black" }}>
              FamMeal
            </Highlight>
          </Text>
          <Box>
            <Text textStyle="1xl"
              fontWeight="light"
              color="black"
            >
              家族とご飯の予定を決めましょう
            </Text>
          </Box>
        </Box>
      </Box>
    </>
  )
}

export default Home;