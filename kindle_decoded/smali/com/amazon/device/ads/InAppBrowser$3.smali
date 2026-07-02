.class Lcom/amazon/device/ads/InAppBrowser$3;
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


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/InAppBrowser;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/amazon/device/ads/InAppBrowser$3;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 245
    iget-object p1, p0, Lcom/amazon/device/ads/InAppBrowser$3;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {p1}, Lcom/amazon/device/ads/InAppBrowser;->access$400(Lcom/amazon/device/ads/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 247
    iget-object p1, p0, Lcom/amazon/device/ads/InAppBrowser$3;->this$0:Lcom/amazon/device/ads/InAppBrowser;

    invoke-static {p1}, Lcom/amazon/device/ads/InAppBrowser;->access$400(Lcom/amazon/device/ads/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    return-void
.end method
