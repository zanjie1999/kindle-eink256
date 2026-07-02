.class public final Lcom/amazon/whispersync/dcp/settings/TestSettingsCache;
.super Ljava/lang/Object;
.source "TestSettingsCache.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    .line 19
    invoke-static {}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getInstance()Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->clear()V

    return-void
.end method

.method public static setValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-static {}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getInstance()Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    move-result-object v0

    .line 26
    invoke-virtual {v0, p0, p1, p2}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->setValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static unsetValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;)V
    .locals 1

    .line 31
    invoke-static {}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->getInstance()Lcom/amazon/whispersync/dcp/settings/SettingsCache;

    move-result-object v0

    .line 32
    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->unsetValue(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;)V

    return-void
.end method
