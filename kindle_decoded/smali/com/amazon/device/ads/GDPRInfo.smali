.class public Lcom/amazon/device/ads/GDPRInfo;
.super Ljava/lang/Object;
.source "GDPRInfo.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "GDPRInfo"


# instance fields
.field private logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/device/ads/GDPRInfo;->prefs:Landroid/content/SharedPreferences;

    .line 19
    new-instance p1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {p1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v0, Lcom/amazon/device/ads/GDPRInfo;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/GDPRInfo;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method


# virtual methods
.method public toJsonObject()Lorg/json/JSONObject;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/device/ads/GDPRInfo;->prefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/GDPRInfo;->toJsonObject(Landroid/content/SharedPreferences;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public toJsonObject(Landroid/content/SharedPreferences;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "IABConsent_SubjectToGDPR"

    .line 35
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "aps_gdpr_pub_pref_li"

    .line 36
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IABConsent_ConsentString"

    .line 37
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 43
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "c"

    .line 44
    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    if-eqz v1, :cond_2

    .line 50
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    if-nez v3, :cond_1

    .line 52
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v1

    :cond_1
    const-string v1, "e"

    .line 54
    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    if-eqz v2, :cond_4

    .line 61
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    if-nez v3, :cond_3

    .line 64
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :cond_3
    const-string v1, "i"

    .line 66
    invoke-virtual {v3, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 71
    :catch_0
    iget-object p1, p0, Lcom/amazon/device/ads/GDPRInfo;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "INVALID JSON formed for GDPR clause"

    invoke-virtual {p1, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_1
    move-object v0, v3

    :goto_2
    return-object v0
.end method
