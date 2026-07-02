.class Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;
.super Ljava/lang/Object;
.source "WebUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/WebUtils2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebUtilsStatic"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/device/ads/WebUtils2$1;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/amazon/device/ads/WebUtils2$WebUtilsStatic;-><init>()V

    return-void
.end method


# virtual methods
.method executeWebRequestInThread(Ljava/lang/String;Z)V
    .locals 0

    .line 125
    invoke-static {p1, p2}, Lcom/amazon/device/ads/WebUtils;->executeWebRequestInThread(Ljava/lang/String;Z)V

    return-void
.end method

.method getScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 115
    invoke-static {p1}, Lcom/amazon/device/ads/WebUtils;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 105
    invoke-static {p1}, Lcom/amazon/device/ads/WebUtils;->getURLEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method launchActivityForIntentLink(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 0

    .line 100
    invoke-static {p1, p2}, Lcom/amazon/device/ads/WebUtils;->launchActivityForIntentLink(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
