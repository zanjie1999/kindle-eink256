.class Lcom/amazon/device/ads/ResponseReader;
.super Ljava/lang/Object;
.source "ResponseReader.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "ResponseReader"


# instance fields
.field private enableLog:Z

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final stream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/ResponseReader;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/ResponseReader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/amazon/device/ads/ResponseReader;->enableLog:Z

    .line 27
    iput-object p1, p0, Lcom/amazon/device/ads/ResponseReader;->stream:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public enableLog(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/amazon/device/ads/ResponseReader;->enableLog:Z

    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/device/ads/ResponseReader;->stream:Ljava/io/InputStream;

    return-object v0
.end method

.method public readAsJSON()Lorg/json/JSONObject;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/amazon/device/ads/ResponseReader;->readAsString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/JSONUtils;->getJSONObjectFromString(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public readAsString()Ljava/lang/String;
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/amazon/device/ads/ResponseReader;->stream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/amazon/device/ads/StringUtils;->readStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-boolean v1, p0, Lcom/amazon/device/ads/ResponseReader;->enableLog:Z

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/amazon/device/ads/ResponseReader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "Response Body: %s"

    invoke-virtual {v1, v3, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public setExternalLogTag(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/amazon/device/ads/ResponseReader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    sget-object v0, Lcom/amazon/device/ads/ResponseReader;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/ResponseReader;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/amazon/device/ads/ResponseReader;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MobileAdsLogger;->withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    :goto_0
    return-void
.end method
