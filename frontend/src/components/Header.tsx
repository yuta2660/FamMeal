import React from "react";
import { Link as RouterLink } from "react-router-dom";
import { Heading, Text, HStack, Spacer, Button, ButtonProps } from "@chakra-ui/react";

type LinkButtonProps = ButtonProps & { to: string };

const LinkButton: React.FC<LinkButtonProps> = (props) => (
  <Button as={RouterLink} {...props} />
);

const Header = () => {
  return (
    <Heading bg="#638C6D" p="3">
      <HStack>
        <LinkButton to="/" bg="#638C6D" fontSize="3xl" fontWeight="bold">
          FamMeal
        </LinkButton>
        <Spacer />
        <LinkButton to="/about" bg="#4B6542" fontSize="1rem" fontWeight="semibold" mr="3" >
          このアプリについて
        </LinkButton>
        <LinkButton to="/login" bg="#4B6542" fontSize="1rem" fontWeight="semibold" mr="3" >
          ログイン
        </LinkButton>
        <LinkButton to="/signup" bg="#4B6542" fontSize="1rem" fontWeight="semibold" mr="3">
          新規登録
        </LinkButton>
      </HStack>
    </Heading>
  );
};

export default Header;
