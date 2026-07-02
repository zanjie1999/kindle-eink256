.class Lcom/amazon/kindle/map/MAPWebViewActivity$StandaloneMAPWebViewClient;
.super Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;
.source "MAPWebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/map/MAPWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StandaloneMAPWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/map/MAPWebViewActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/map/MAPWebViewActivity;Landroid/app/Activity;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/amazon/kindle/map/MAPWebViewActivity$StandaloneMAPWebViewClient;->this$0:Lcom/amazon/kindle/map/MAPWebViewActivity;

    .line 134
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 157
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/amazon/kindle/map/MAPWebViewActivity$StandaloneMAPWebViewClient;->this$0:Lcom/amazon/kindle/map/MAPWebViewActivity;

    invoke-static {p1}, Lcom/amazon/kindle/map/MAPWebViewActivity;->access$000(Lcom/amazon/kindle/map/MAPWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 152
    iget-object p1, p0, Lcom/amazon/kindle/map/MAPWebViewActivity$StandaloneMAPWebViewClient;->this$0:Lcom/amazon/kindle/map/MAPWebViewActivity;

    invoke-static {p1}, Lcom/amazon/kindle/map/MAPWebViewActivity;->access$000(Lcom/amazon/kindle/map/MAPWebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "https://www.amazon.cn/ap/signin"

    .line 142
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://www.amazon.cn/gp/aw/mycoupon"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/map/MAPWebViewActivity$StandaloneMAPWebViewClient;->this$0:Lcom/amazon/kindle/map/MAPWebViewActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->safeOpenUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 143
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/amazon/identity/auth/device/api/MAPAndroidWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
