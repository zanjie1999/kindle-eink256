.class Lcom/amazon/device/ads/InAppBrowser$2;
.super Landroid/webkit/WebChromeClient;
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

    .line 225
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser$2;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$2;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v0}, Lcom/amazon/device/ads/InAppBrowser;->access$200(Lcom/amazon/device/ads/InAppBrowser;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/amazon/device/ads/InAppBrowser$2;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {v0}, Lcom/amazon/device/ads/InAppBrowser;->access$200(Lcom/amazon/device/ads/InAppBrowser;)Landroid/app/Activity;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setProgress(I)V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 232
    iget-object p2, p0, Lcom/amazon/device/ads/InAppBrowser$2;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {p2}, Lcom/amazon/device/ads/InAppBrowser;->access$200(Lcom/amazon/device/ads/InAppBrowser;)Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 234
    :cond_0
    iget-object p2, p0, Lcom/amazon/device/ads/InAppBrowser$2;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {p2, p1}, Lcom/amazon/device/ads/InAppBrowser;->access$300(Lcom/amazon/device/ads/InAppBrowser;Landroid/webkit/WebView;)V

    return-void
.end method
