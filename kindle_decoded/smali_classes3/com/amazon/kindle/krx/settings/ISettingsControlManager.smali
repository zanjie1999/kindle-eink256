.class public interface abstract Lcom/amazon/kindle/krx/settings/ISettingsControlManager;
.super Ljava/lang/Object;
.source "ISettingsControlManager.java"


# virtual methods
.method public abstract getSettings(Ljava/lang/String;)Lcom/amazon/kindle/krx/settings/ISettingsControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/krx/settings/ISettingsControl<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract getSettings(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/settings/ISettingsControl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/krx/settings/ISettingsControl<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract registerSettingsControl(Lcom/amazon/kindle/krx/settings/ISettingsControl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/settings/ISettingsControl<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract registerSettingsControl(Ljava/lang/String;Lcom/amazon/kindle/krx/settings/ISettingsControl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/settings/ISettingsControl<",
            "*>;)V"
        }
    .end annotation
.end method
