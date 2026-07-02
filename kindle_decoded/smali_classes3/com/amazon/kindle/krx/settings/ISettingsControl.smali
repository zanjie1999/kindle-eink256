.class public interface abstract Lcom/amazon/kindle/krx/settings/ISettingsControl;
.super Ljava/lang/Object;
.source "ISettingsControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract deserialize(Ljava/lang/String;)V
.end method

.method public abstract getCategoryId()I
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getSubTitle()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSubTitleId()I
.end method

.method public abstract getTitle()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getTitleId()I
.end method

.method public abstract getType()Lcom/amazon/kindle/krx/settings/ISettingsControl$SettingsControlType;
.end method

.method public abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract isUserSpecific()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract serialize()Ljava/lang/String;
.end method
