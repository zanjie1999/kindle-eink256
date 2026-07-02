.class interface abstract Lcom/amazon/whispersync/device/crashmanager/SettingsStore;
.super Ljava/lang/Object;
.source "SettingsStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;
    }
.end annotation


# virtual methods
.method public abstract getLong(Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;J)J
.end method

.method public abstract getString(Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract saveLong(Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;J)V
.end method

.method public abstract saveString(Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;Ljava/lang/String;)V
.end method
