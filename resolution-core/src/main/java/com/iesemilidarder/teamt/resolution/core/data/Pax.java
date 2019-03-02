package com.iesemilidarder.teamt.resolution.core.data;

import java.util.UUID;

public class Pax {

    public Pax() {

    }

    private UUID id = UUID.randomUUID();

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCash() {
        return cash;
    }

    public void setCash(int cash) {
        this.cash = cash;
    }

    public int getIncash() {
        return incash;
    }

    public void setIncash(int incash) {
        this.incash = incash;
    }

    public int getOutcash() {
        return outcash;
    }

    public void setOutcash(int outcash) {
        this.outcash = outcash;
    }

    public int getExcash() {
        return excash;
    }

    public void setExcash(int excash) {
        this.excash = excash;
    }

    public int getPaxpax() {
        return paxpax;
    }

    public void setPaxpax(int paxpax) {
        this.paxpax = paxpax;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public String getPaxacc() {
        return paxacc;
    }

    public void setPaxacc(String paxacc) {
        this.paxacc = paxacc;
    }

    public String name;
    public int cash,incash,outcash,excash,paxpax;
    public int age;
    public String from;
    public String to;
    public String paxacc;

    /**
     * This entyre class is for the End-Users Only.
     */
    public Pax getPaxById (UUID id) {
        int age = 0;
        String name = "Master01";
        int cash= 0;
        Pax one = new Pax();
        one.setAge(age);
        one.setName(name);
        one.setCash(cash);
        return one;
    }



} /*  this is the end */
