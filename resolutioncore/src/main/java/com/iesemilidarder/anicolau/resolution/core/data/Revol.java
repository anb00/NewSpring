package com.iesemilidarder.anicolau.resolution.core.data;

//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

import java.applet.Applet;
import java.applet.AppletContext;
import java.awt.Button;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.net.MalformedURLException;
import java.net.URL;

public class Revol extends Applet implements Runnable, ActionListener {
    String[] pageTitle = new String[6];
    URL[] pageLink = new URL[6];
    int current = 0;
    Thread runner;

    public Revol() {
    }

    public void init() {
        Color var1 = new Color(255, 255, 204);
        this.setBackground(var1);
        this.pageTitle[0] = "JavaSoft";
        this.pageLink[0] = this.getURL("http://java.sun.com");
        this.pageTitle[1] = "Gamelan";
        this.pageLink[1] = this.getURL("http://www.gamelan.com");
        this.pageTitle[2] = "JavaWorld";
        this.pageLink[2] = this.getURL("http://www.javaworld.com");
        this.pageTitle[3] = "Java 1.1 Programming in 24 Hours";
        this.pageLink[3] = this.getURL("http://www.prefect.com/java24");
        this.pageTitle[4] = "Sams.net Developers' Resource Center";
        this.pageLink[4] = this.getURL("http://www.mcp.com/sams");
        this.pageTitle[5] = "Java Applet Rating Service";
        this.pageLink[5] = this.getURL("http://www.jars.com");
        Button var2 = new Button("Go");
        var2.addActionListener(this);
        this.add(var2);
    }

    URL getURL(String var1) {
        URL var2 = null;

        try {
            var2 = new URL(this.getDocumentBase(), var1);
        } catch (MalformedURLException var4) {
            ;
        }

        return var2;
    }

    public void paint(Graphics var1) {
        var1.drawString(this.pageTitle[this.current], 5, 60);
       // var1.drawString(this.pageLink[this.current],5,80);
    }

    public void start() {
        if (this.runner == null) {
            this.runner = new Thread(this);
            this.runner.start();
        }

    }

    public void run() {
        while(true) {
            this.repaint();
            ++this.current;
            if (this.current > 5) {
                this.current = 0;
            }

            try {
                Thread.sleep(10000L);
            } catch (InterruptedException var2) {
                ;
            }
        }
    }

    public void stop() {
        if (this.runner != null) {
            this.runner.stop();
            this.runner = null;
        }

    }

    public void actionPerformed(ActionEvent var1) {
        this.runner.stop();
        AppletContext var2 = this.getAppletContext();
        if (this.pageLink[this.current] != null) {
            var2.showDocument(this.pageLink[this.current]);
        }

    }
}