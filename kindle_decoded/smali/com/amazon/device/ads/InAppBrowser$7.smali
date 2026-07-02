.class Lcom/amazon/device/ads/InAppBrowser$7;
.super Ljava/lang/Object;
.source "InAppBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/InAppBrowser;->initializeButtons(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/InAppBrowser;

.field final synthetic val$originalUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/InAppBrowser;Ljava/lang/String;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser$7;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    iput-object p2, p0, Lcom/amazon/device/ads/InAppBrowser$7;->val$originalUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 288
    iget-object p1, p0, Lcom/amazon/device/ads/InAppBrowser$7;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {p1}, Lcom/amazon/device/ads/InAppBrowser;->access$400(Lcom/amazon/device/ads/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 292
    iget-object p1, p0, Lcom/amazon/device/ads/InAppBrowser$7;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {p1}, Lcom/amazon/device/ads/InAppBrowser;->access$000(Lcom/amazon/device/ads/InAppBrowser;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    const-string v0, "The current URL is null. Reverting to the original URL for external browser."

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    .line 293
    iget-object p1, p0, Lcom/amazon/device/ads/InAppBrowser$7;->val$originalUrl:Ljava/lang/String;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$7;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v0}, Lcom/amazon/device/ads/InAppBrowser;->access$100(Lcom/amazon/device/ads/InAppBrowser;)Lcom/amazon/device/ads/WebUtils2;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/InAppBrowser$7;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v1}, Lcom/amazon/device/ads/InAppBrowser;->access$400(Lcom/amazon/device/ads/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/device/ads/WebUtils2;->launchActivityForIntentLink(Ljava/lang/String;Landroid/content/Context;)Z

    return-void
.end method
