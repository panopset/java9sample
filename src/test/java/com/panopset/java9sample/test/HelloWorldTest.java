package com.panopset.java9sample.test;

import static org.junit.jupiter.api.Assertions.*;

import com.panopset.java9sample.HelloWorld;
import org.junit.jupiter.api.Test;

class HelloWorldTest {

  @Test
  void testGetMessage() {
    assertEquals("Hello World!", new HelloWorld().getMessage());
  }

}
