.class Lcom/amazon/device/ads/AAXParameter$GDPRParameter;
.super Lcom/amazon/device/ads/AAXParameter$JSONObjectParameter;
.source "AAXParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AAXParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GDPRParameter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const-string v0, "gdpr"

    const-string v1, "debug.gdpr"

    .line 474
    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AAXParameter$JSONObjectParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Ljava/lang/Object;
    .locals 0

    .line 469
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AAXParameter$GDPRParameter;->getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected getDerivedValue(Lcom/amazon/device/ads/AAXParameter$ParameterData;)Lorg/json/JSONObject;
    .locals 1

    .line 480
    invoke-static {}, Lcom/amazon/device/ads/ApplicationDefaultPreferences;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    if-nez p1, :cond_0

    .line 482
    const-class p1, Lcom/amazon/device/ads/AAXParameter$GDPRParameter;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->getLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    const-string v0, "Shared preferences were not set"

    .line 483
    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 487
    :cond_0
    new-instance v0, Lcom/amazon/device/ads/GDPRInfo;

    invoke-direct {v0, p1}, Lcom/amazon/device/ads/GDPRInfo;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v0}, Lcom/amazon/device/ads/GDPRInfo;->toJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
