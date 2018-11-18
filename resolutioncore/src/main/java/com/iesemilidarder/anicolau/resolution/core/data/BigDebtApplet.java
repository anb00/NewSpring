package com.iesemilidarder.anicolau.resolution.core.data;

import java.awt.*;

public class BigDebtApplet extends java.applet.Applet {
    int debt;

    public void init() {
        debt = 59000000;
        debt = debt / 1440;
    }

    public void paint(Graphics screen) {
        screen.drawString("A minute's worth of debt is $" + debt, 5, 50);
    }
}