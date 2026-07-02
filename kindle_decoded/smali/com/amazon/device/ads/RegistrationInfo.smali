.class Lcom/amazon/device/ads/RegistrationInfo;
.super Ljava/lang/Object;
.source "RegistrationInfo.java"


# static fields
.field private static final ADID_ORIGIN_PREF_NAME:Ljava/lang/String; = "amzn-ad-id-origin"

.field private static final ADID_PREF_NAME:Ljava/lang/String; = "amzn-ad-id"

.field private static final NEW_SIS_DID_REQUESTED_SETTING:Ljava/lang/String; = "newSISDIDRequested"

.field private static final NON_ADVERTISING_IDENTIFIER_ORIGIN:Ljava/lang/String; = "non-advertising-identifier"

.field private static final THIRD_PARTY_APP_NAME:Ljava/lang/String; = "app"


# instance fields
.field private appKey:Ljava/lang/String;

.field private appName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "app"

    .line 20
    iput-object v0, p0, Lcom/amazon/device/ads/RegistrationInfo;->appName:Ljava/lang/String;

    return-void
.end method

.method public static isAdIdOriginatedFromNonAdvertisingIdentifier()Z
    .locals 3

    .line 91
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-string v1, "amzn-ad-id-origin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "non-advertising-identifier"

    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected static setOrigin(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->hasAdvertisingIdentifier()Z

    move-result v0

    const-string v1, "amzn-ad-id-origin"

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->getAdvertisingIdentifier()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/amazon/device/ads/Settings;->putStringWithNoFlush(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object p0

    const-string/jumbo v0, "non-advertising-identifier"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/device/ads/Settings;->putStringWithNoFlush(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAdId()Ljava/lang/String;
    .locals 4

    .line 36
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v0

    .line 38
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v1

    const-string v2, "amzn-ad-id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "debug.adid"

    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 3

    .line 97
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/RegistrationInfo;->appKey:Ljava/lang/String;

    const-string v2, "debug.appid"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/device/ads/RegistrationInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public hasAdId()Z
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/amazon/device/ads/RegistrationInfo;->getAdId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isAdIdCurrent(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)Z
    .locals 3

    .line 48
    invoke-static {}, Lcom/amazon/device/ads/RegistrationInfo;->isAdIdOriginatedFromNonAdvertisingIdentifier()Z

    move-result v0

    .line 49
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->hasAdvertisingIdentifier()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 57
    :cond_0
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "amzn-ad-id-origin"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->getAdvertisingIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public isRegisteredWithSIS()Z
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/amazon/device/ads/RegistrationInfo;->hasAdId()Z

    move-result v0

    return v0
.end method

.method public putAdId(Ljava/lang/String;Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)V
    .locals 2

    .line 72
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-string v1, "amzn-ad-id"

    .line 73
    invoke-virtual {v0, v1, p1}, Lcom/amazon/device/ads/Settings;->putStringWithNoFlush(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {p2}, Lcom/amazon/device/ads/RegistrationInfo;->setOrigin(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)V

    const-string/jumbo p1, "newSISDIDRequested"

    const/4 p2, 0x0

    .line 75
    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/Settings;->putBooleanWithNoFlush(Ljava/lang/String;Z)V

    .line 76
    invoke-virtual {v0}, Lcom/amazon/device/ads/Settings;->flush()V

    return-void
.end method

.method public putAppKey(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {p1}, Lcom/amazon/device/ads/WebUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/RegistrationInfo;->appKey:Ljava/lang/String;

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Application Key must not be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putAppName(Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-static {p1}, Lcom/amazon/device/ads/WebUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/RegistrationInfo;->appName:Ljava/lang/String;

    return-void
.end method

.method public requestNewSISDeviceIdentifier()V
    .locals 3

    .line 111
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-string/jumbo v1, "newSISDIDRequested"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public shouldGetNewSISDeviceIdentifer()Z
    .locals 3

    .line 115
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    const-string/jumbo v1, "newSISDIDRequested"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public shouldGetNewSISRegistration()Z
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/amazon/device/ads/RegistrationInfo;->isRegisteredWithSIS()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
