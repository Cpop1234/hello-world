package com.example;

/**
 * The {@code Greeter} class provides a method to generate a greeting message.
 */
public class Greeter {

  /**
   * Constructs a new {@code Greeter} instance.
   */
  public Greeter() {
    // Default constructor
  }

  /**
   * Generates a greeting message for the specified person.
   *
   * @param someone the name of the person to greet
   * @return a formatted greeting message
   */
  public String greet(String someone) {
    return String.format("Hello, %s!", someone);
  }
}
