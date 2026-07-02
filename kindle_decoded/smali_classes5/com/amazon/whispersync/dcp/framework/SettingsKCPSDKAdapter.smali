.class public Lcom/amazon/whispersync/dcp/framework/SettingsKCPSDKAdapter;
.super Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;
.source "SettingsKCPSDKAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigurationStorage;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 43
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBool(Ljava/lang/String;Z)Z
    .locals 1

    .line 30
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingBoolean;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whispersync/dcp/settings/SettingBoolean;-><init>(Ljava/lang/String;Z)V

    .line 31
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingBoolean;->getValue()Z

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 36
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingLong;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/settings/SettingLong;-><init>(Ljava/lang/String;J)V

    .line 37
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingLong;->getValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public getNum(Ljava/lang/String;I)I
    .locals 1

    .line 23
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    invoke-direct {v0, p1, p2}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;-><init>(Ljava/lang/String;I)V

    .line 24
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result p1

    return p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingString;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispersync/dcp/settings/SettingString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingString;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public processDynamicConfigMessage(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigInvalidException;
        }
    .end annotation

    .line 73
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigInvalidException;
        }
    .end annotation

    .line 49
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setBool(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigInvalidException;
        }
    .end annotation

    .line 55
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setNum(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigInvalidException;
        }
    .end annotation

    .line 61
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/AmazonDevice/Common/DynamicConfigInvalidException;
        }
    .end annotation

    .line 67
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
