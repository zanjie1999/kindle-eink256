.class public Lcom/amazon/reader/notifications/DeviceAttributes;
.super Ljava/lang/Object;
.source "DeviceAttributes.java"


# instance fields
.field private appVersion:Ljava/lang/String;

.field private deviceLocale:Ljava/lang/String;

.field private deviceType:Ljava/lang/String;

.field private directedId:Ljava/lang/String;

.field private dsn:Ljava/lang/String;

.field private optInSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private osVersion:Ljava/lang/String;

.field private timestamp:J

.field private timezone:Ljava/lang/String;

.field private userEnabled:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->optInSettings:Ljava/util/Map;

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->timestamp:J

    return-void
.end method


# virtual methods
.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceLocale()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->deviceLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectedId()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->directedId:Ljava/lang/String;

    return-object v0
.end method

.method public getDsn()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->dsn:Ljava/lang/String;

    return-object v0
.end method

.method public getOptInSetting(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->optInSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public getOptInSettings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->optInSettings:Ljava/util/Map;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 214
    iget-wide v0, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->timestamp:J

    return-wide v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->timezone:Ljava/lang/String;

    return-object v0
.end method

.method public isUserEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->userEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setDeviceLocale(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->deviceLocale:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->deviceType:Ljava/lang/String;

    return-void
.end method

.method public setDirectedId(Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->directedId:Ljava/lang/String;

    return-void
.end method

.method public setDsn(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->dsn:Ljava/lang/String;

    return-void
.end method

.method public setOptInSetting(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 1

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->optInSettings:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    .line 133
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Opt-in setting key can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOptInSettings(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->optInSettings:Ljava/util/Map;

    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->osVersion:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 222
    iput-wide p1, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->timestamp:J

    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->timezone:Ljava/lang/String;

    return-void
.end method

.method public setUserEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/amazon/reader/notifications/DeviceAttributes;->userEnabled:Ljava/lang/Boolean;

    return-void
.end method
