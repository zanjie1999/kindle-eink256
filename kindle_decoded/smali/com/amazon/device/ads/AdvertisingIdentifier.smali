.class Lcom/amazon/device/ads/AdvertisingIdentifier;
.super Ljava/lang/Object;
.source "AdvertisingIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    }
.end annotation


# static fields
.field private static final GPS_ADVERTISING_IDENTIFIER_SETTING:Ljava/lang/String; = "gpsAdId"

.field private static final LOGTAG:Ljava/lang/String; = "AdvertisingIdentifier"

.field private static final TRANSITION_MIGRATE:Ljava/lang/String; = "migrate"

.field private static final TRANSITION_RESET:Ljava/lang/String; = "reset"

.field private static final TRANSITION_REVERT:Ljava/lang/String; = "revert"

.field private static final TRANSITION_SETTING:Ljava/lang/String; = "adIdTransistion"

.field private static lastKnownIdfa:Ljava/lang/String; = null

.field private static lastKnownIdfaDefined:Z = false


# instance fields
.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private gpsAdvertisingInfo:Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

.field private final infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final settings:Lcom/amazon/device/ads/Settings;

.field private shouldSetCurrentAdvertisingIdentifier:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 38
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v1

    new-instance v2, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v2}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    .line 41
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v3

    .line 38
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazon/device/ads/AdvertisingIdentifier;-><init>(Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/DebugProperties;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/Settings;Lcom/amazon/device/ads/MobileAdsInfoStore;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/DebugProperties;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier;->shouldSetCurrentAdvertisingIdentifier:Z

    .line 48
    iput-object p1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier;->settings:Lcom/amazon/device/ads/Settings;

    .line 49
    iput-object p2, p0, Lcom/amazon/device/ads/AdvertisingIdentifier;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    .line 50
    sget-object p1, Lcom/amazon/device/ads/AdvertisingIdentifier;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 51
    iput-object p4, p0, Lcom/amazon/device/ads/AdvertisingIdentifier;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 52
    sget-boolean p1, Lcom/amazon/device/ads/AdvertisingIdentifier;->lastKnownIdfaDefined:Z

    if-nez p1, :cond_0

    .line 53
    sput-boolean v0, Lcom/amazon/device/ads/AdvertisingIdentifier;->lastKnownIdfaDefined:Z

    .line 54
    invoke-direct {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getCurrentGPSAID()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/amazon/device/ads/AdvertisingIdentifier;->lastKnownIdfa:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private determineTransition()V
    .locals 2

    .line 131
    invoke-direct {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->isTransitionMigrated()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "migrate"

    goto :goto_0

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->isTransitionReset()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "reset"

    goto :goto_0

    .line 139
    :cond_1
    invoke-direct {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->isTransitionReverted()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "revert"

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 146
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->setTransition(Ljava/lang/String;)V

    goto :goto_1

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "No transition detected."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private getCurrentGPSAID()Ljava/lang/String;
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier;->settings:Lcom/amazon/device/ads/Settings;

    const-string v1, "gpsAdId"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastKnownIdfa()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/device/ads/AdvertisingIdentifier;->lastKnownIdfa:Ljava/lang/String;

    return-object v0
.end method

.method private hasCurrentGPSAID()Z
    .locals 1

    .line 226
    invoke-direct {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getCurrentGPSAID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isTransitionMigrated()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/amazon/device/ads/RegistrationInfo;->hasAdId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Lcom/amazon/device/ads/RegistrationInfo;->isAdIdOriginatedFromNonAdvertisingIdentifier()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->hasCurrentGPSAID()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getGPSAdvertisingInfo()Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->hasAdvertisingIdentifier()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTransitionReset()Z
    .locals 2

    .line 194
    invoke-direct {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->hasCurrentGPSAID()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getGPSAdvertisingInfo()Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->hasAdvertisingIdentifier()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getCurrentGPSAID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getGPSAdvertisingInfo()Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->getAdvertisingIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTransitionReverted()Z
    .locals 1

    .line 205
    invoke-direct {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->hasCurrentGPSAID()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getGPSAdvertisingInfo()Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->hasAdvertisingIdentifier()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setCurrentGPSAID(Ljava/lang/String;)V
    .locals 2

    .line 209
    sput-object p1, Lcom/amazon/device/ads/AdvertisingIdentifier;->lastKnownIdfa:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier;->settings:Lcom/amazon/device/ads/Settings;

    const-string v1, "gpsAdId"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/device/ads/Settings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setTransition(Ljava/lang/String;)V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Transition: %s"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier;->settings:Lcom/amazon/device/ads/Settings;

    const-string v1, "adIdTransistion"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/device/ads/Settings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected fetchGooglePlayServicesAdvertisingIdentifierInfo()V
    .locals 1

    .line 163
    new-instance v0, Lcom/amazon/device/ads/GooglePlayServices;

    invoke-direct {v0}, Lcom/amazon/device/ads/GooglePlayServices;-><init>()V

    .line 164
    invoke-virtual {v0}, Lcom/amazon/device/ads/GooglePlayServices;->getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier;->gpsAdvertisingInfo:Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    return-void
.end method

.method getAdvertisingIdentifierInfo()Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 3

    .line 83
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->isOnMainThread()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "You must obtain the advertising indentifier information on a background thread."

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    iget-object v2, p0, Lcom/amazon/device/ads/AdvertisingIdentifier;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    invoke-direct {v0, v2, v1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;-><init>(Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/AdvertisingIdentifier$1;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->access$100(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;Z)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->fetchGooglePlayServicesAdvertisingIdentifierInfo()V

    .line 90
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier;->shouldSetCurrentAdvertisingIdentifier:Z

    if-eqz v0, :cond_1

    .line 92
    invoke-direct {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->determineTransition()V

    .line 95
    :cond_1
    new-instance v0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    iget-object v2, p0, Lcom/amazon/device/ads/AdvertisingIdentifier;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    invoke-direct {v0, v2, v1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;-><init>(Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/AdvertisingIdentifier$1;)V

    .line 97
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getGPSAdvertisingInfo()Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->hasAdvertisingIdentifier()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getGPSAdvertisingInfo()Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->getAdvertisingIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->access$200(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;Ljava/lang/String;)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    .line 100
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getGPSAdvertisingInfo()Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->isLimitAdTrackingEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->access$300(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;Z)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    .line 101
    iget-boolean v1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier;->shouldSetCurrentAdvertisingIdentifier:Z

    if-eqz v1, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->getGPSAdvertisingInfo()Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;->getAdvertisingIdentifier()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 104
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 105
    invoke-direct {p0, v1}, Lcom/amazon/device/ads/AdvertisingIdentifier;->setCurrentGPSAID(Ljava/lang/String;)V

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier;->infoStore:Lcom/amazon/device/ads/MobileAdsInfoStore;

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v1

    .line 113
    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/RegistrationInfo;->isAdIdCurrent(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    invoke-virtual {v1}, Lcom/amazon/device/ads/RegistrationInfo;->getAdId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->setSISDeviceIdentifier(Ljava/lang/String;)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {v1}, Lcom/amazon/device/ads/RegistrationInfo;->requestNewSISDeviceIdentifier()V

    :goto_0
    return-object v0
.end method

.method getAndClearTransition()Ljava/lang/String;
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier;->settings:Lcom/amazon/device/ads/Settings;

    const-string v1, "adIdTransistion"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v2, p0, Lcom/amazon/device/ads/AdvertisingIdentifier;->settings:Lcom/amazon/device/ads/Settings;

    invoke-virtual {v2, v1}, Lcom/amazon/device/ads/Settings;->remove(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getGPSAdvertisingInfo()Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier;->gpsAdvertisingInfo:Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier;->fetchGooglePlayServicesAdvertisingIdentifierInfo()V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier;->gpsAdvertisingInfo:Lcom/amazon/device/ads/GooglePlayServices$AdvertisingInfo;

    return-object v0
.end method

.method setShouldSetCurrentAdvertisingIdentifier(Z)Lcom/amazon/device/ads/AdvertisingIdentifier;
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier;->shouldSetCurrentAdvertisingIdentifier:Z

    return-object p0
.end method
