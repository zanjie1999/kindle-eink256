.class Lcom/amazon/kcp/redding/WebViewActivity$1;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/redding/WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/redding/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/redding/WebViewActivity;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/amazon/kcp/redding/WebViewActivity$1;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/amazon/kcp/redding/WebViewActivity$1;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-static {p1}, Lcom/amazon/kcp/redding/WebViewActivity;->access$200(Lcom/amazon/kcp/redding/WebViewActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/redding/WebViewActivity$1;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-static {v0}, Lcom/amazon/kcp/redding/WebViewActivity;->access$000(Lcom/amazon/kcp/redding/WebViewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 97
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v3, p0, Lcom/amazon/kcp/redding/WebViewActivity$1;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-static {v3}, Lcom/amazon/kcp/redding/WebViewActivity;->access$000(Lcom/amazon/kcp/redding/WebViewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 100
    :catch_0
    invoke-static {}, Lcom/amazon/kcp/redding/WebViewActivity;->access$100()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed URL given to web view activity: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kcp/redding/WebViewActivity$1;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-static {v3}, Lcom/amazon/kcp/redding/WebViewActivity;->access$000(Lcom/amazon/kcp/redding/WebViewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    .line 108
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/redding/WebViewActivity;->access$100()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WebViewActivity redirecting to external browser: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    iget-object p1, p0, Lcom/amazon/kcp/redding/WebViewActivity$1;->this$0:Lcom/amazon/kcp/redding/WebViewActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kcp/application/IKindleApplicationController;->openUrl(Ljava/lang/String;)V

    :goto_2
    return v2
.end method
