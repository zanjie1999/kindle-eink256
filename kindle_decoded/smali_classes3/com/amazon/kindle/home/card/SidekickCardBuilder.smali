.class public interface abstract Lcom/amazon/kindle/home/card/SidekickCardBuilder;
.super Ljava/lang/Object;
.source "SidekickCardBuilder.kt"


# virtual methods
.method public abstract build(Landroid/content/Context;Lcom/amazon/kindle/home/model/CardData;)Lcom/amazon/kindle/home/card/HomeCard;
.end method

.method public abstract getTemplateId()Ljava/lang/String;
.end method

.method public abstract getWeblabName()Ljava/lang/String;
.end method

.method public abstract isEnabled(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;)Z
.end method

.method public abstract reset()V
.end method
