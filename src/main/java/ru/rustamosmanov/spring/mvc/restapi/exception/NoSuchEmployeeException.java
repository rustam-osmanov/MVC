package ru.rustamosmanov.spring.mvc.restapi.exception;

public class NoSuchEmployeeException extends RuntimeException {
    public NoSuchEmployeeException(String message) {
        super(message);
    }
}
