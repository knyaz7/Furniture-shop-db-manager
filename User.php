<?php
include "AUser.php";

class User extends AUser {
    protected $login, $password, $email;

    public function __construct($login = '', $email = '', $password = '') {
        if (!($login && $email && $password )) {
            throw new Exception("Отсутствует email, логин или пароль", 423);
        }
        $this->login = $login;
        $this->email = $email;
        $this->password = $password;
    }   

    public function __clone() {
        $this->login = "guest";
        $this->email = "guest@mail.ru";
        $this->password = "qwerty";
    }

    public function getPasswrord() {
        return $this->password;
    }

    public function getLogin() {
        return $this->login;
    }

    public function getEmail() {
        return $this->email;
    }

    public function setPassword($password) {
        $this->password = $password;
    }

    public function setLogin($login) {
        $this->login = $login;
    }

    public function setEmail($email) {
        $this->email = $email;
    }

    public function showInfo() {
        return "Login: {$this->login}; E-mail: {$this->email}; Пароль: {$this->password}";
    }
}

?>