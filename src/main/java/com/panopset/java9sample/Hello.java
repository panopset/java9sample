package com.panopset.java9sample;

import java.util.logging.Logger;

public class Hello {
  
  private final static Logger LOG = 
      Logger.getLogger(Hello.class.getName());

  public static void main(String[] args) {
    LOG.info(new HelloWorld().getMessage());
  }

}
