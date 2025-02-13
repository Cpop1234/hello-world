package com.example;

import org.junit.Before;
import org.junit.Test;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.Matchers.greaterThan;
import static org.hamcrest.Matchers.containsString;
import static org.junit.Assert.assertThat;

/**
 * Unit tests for the {@code Greeter} class.
 */
public class TestGreeter {

  private Greeter greeter;

  /**
   * Initializes the Greeter instance before each test.
   */
  @Before
  public void setup() {
    greeter = new Greeter();
  }

  /**
   * Test to check if the greeting contains the name of the person being greeted.
   */
  @Test
  public void greetShouldIncludeTheOneBeingGreeted() {
    String someone = "World";
    assertThat(greeter.greet(someone), containsString(someone));
  }

  /**
   * Test to check if the greeting message is longer than just the name.
   */
  @Test
  public void greetShouldIncludeGreetingPhrase() {
    String someone = "World";
    assertThat(greeter.greet(someone).length(), is(greaterThan(someone.length())));
  }
}
