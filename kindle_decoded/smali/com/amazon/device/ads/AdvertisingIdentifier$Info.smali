.class Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
.super Ljava/lang/Object;
.source "AdvertisingIdentifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdvertisingIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Info"
.end annotation


# instance fields
.field private advertisingIdentifier:Ljava/lang/String;

.field private canDo:Z

.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private limitAdTrackingEnabled:Z

.field private sisDeviceIdentifier:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/amazon/device/ads/DebugProperties;)V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const/4 p1, 0x1

    .line 243
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->canDo:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/AdvertisingIdentifier$1;)V
    .locals 0

    .line 232
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;-><init>(Lcom/amazon/device/ads/DebugProperties;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;Z)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 0

    .line 232
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->setCanDo(Z)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;Ljava/lang/String;)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 0

    .line 232
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->setAdvertisingIdentifier(Ljava/lang/String;)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/device/ads/AdvertisingIdentifier$Info;Z)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 0

    .line 232
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->setLimitAdTrackingEnabled(Z)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;

    return-object p0
.end method

.method private setAdvertisingIdentifier(Ljava/lang/String;)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->advertisingIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method private setCanDo(Z)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 0

    .line 256
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->canDo:Z

    return-object p0
.end method

.method private setLimitAdTrackingEnabled(Z)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 0

    .line 306
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->limitAdTrackingEnabled:Z

    return-object p0
.end method


# virtual methods
.method canDo()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->canDo:Z

    return v0
.end method

.method getAdvertisingIdentifier()Ljava/lang/String;
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    iget-object v1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->advertisingIdentifier:Ljava/lang/String;

    const-string v2, "debug.idfa"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSISDeviceIdentifier()Ljava/lang/String;
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    iget-object v1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->sisDeviceIdentifier:Ljava/lang/String;

    const-string v2, "debug.adid"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasAdvertisingIdentifier()Z
    .locals 1

    .line 286
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->getAdvertisingIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method hasSISDeviceIdentifier()Z
    .locals 1

    .line 322
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->getSISDeviceIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isLimitAdTrackingEnabled()Z
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    iget-boolean v1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->limitAdTrackingEnabled:Z

    .line 297
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "debug.optOut"

    .line 295
    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method setSISDeviceIdentifier(Ljava/lang/String;)Lcom/amazon/device/ads/AdvertisingIdentifier$Info;
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/amazon/device/ads/AdvertisingIdentifier$Info;->sisDeviceIdentifier:Ljava/lang/String;

    return-object p0
.end method
