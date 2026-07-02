.class Lcom/amazon/device/ads/InAppBrowser$1;
.super Landroid/webkit/WebViewClient;
.source "InAppBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/InAppBrowser;->initializeWebView(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/InAppBrowser;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/InAppBrowser;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser$1;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 204
    iget-object p1, p0, Lcom/amazon/device/ads/InAppBrowser$1;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {p1}, Lcom/amazon/device/ads/InAppBrowser;->access$000(Lcom/amazon/device/ads/InAppBrowser;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p3, p2, p4

    const-string p3, "InApp Browser error: %s"

    invoke-virtual {p1, p3, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 210
    invoke-static {p2}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/amazon/device/ads/InAppBrowser$1;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {p1}, Lcom/amazon/device/ads/InAppBrowser;->access$100(Lcom/amazon/device/ads/InAppBrowser;)Lcom/amazon/device/ads/WebUtils2;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/WebUtils2;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "http"

    .line 215
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 220
    :cond_1
    iget-object p1, p0, Lcom/amazon/device/ads/InAppBrowser$1;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {p1}, Lcom/amazon/device/ads/InAppBrowser;->access$100(Lcom/amazon/device/ads/InAppBrowser;)Lcom/amazon/device/ads/WebUtils2;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$1;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v0}, Lcom/amazon/device/ads/InAppBrowser;->access$200(Lcom/amazon/device/ads/InAppBrowser;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/amazon/device/ads/WebUtils2;->launchActivityForIntentLink(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method
