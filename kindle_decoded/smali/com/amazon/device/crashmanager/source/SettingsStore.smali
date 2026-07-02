.class public interface abstract Lcom/amazon/device/crashmanager/source/SettingsStore;
.super Ljava/lang/Object;
.source "SettingsStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;
    }
.end annotation


# virtual methods
.method public abstract getLong(Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;J)J
.end method

.method public abstract getString(Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract saveLong(Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;J)V
.end method

.method public abstract saveString(Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;Ljava/lang/String;)V
.end method
