.class public Lcom/amazon/kcp/store/StoreFragment$StoreWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "StoreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/StoreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StoreWebChromeClient"
.end annotation


# instance fields
.field private javascriptBridge:Lcom/amazon/kcp/store/KCPJSBridge;

.field final synthetic this$0:Lcom/amazon/kcp/store/StoreFragment;


# direct methods
.method protected constructor <init>(Lcom/amazon/kcp/store/StoreFragment;)V
    .locals 1

    .line 448
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebChromeClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 449
    new-instance p1, Lcom/amazon/kcp/store/KCPJSBridge$Builder;

    invoke-direct {p1}, Lcom/amazon/kcp/store/KCPJSBridge$Builder;-><init>()V

    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/store/KCPJSBridge$Builder;->setTag(Ljava/lang/String;)Lcom/amazon/kcp/store/KCPJSBridge$Builder;

    invoke-virtual {p1}, Lcom/amazon/kcp/store/KCPJSBridge$Builder;->build()Lcom/amazon/kcp/store/KCPJSBridge;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebChromeClient;->javascriptBridge:Lcom/amazon/kcp/store/KCPJSBridge;

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 5

    .line 453
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 454
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x2

    .line 455
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "%s[%d] %s"

    .line 454
    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return v1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebChromeClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {v0}, Lcom/amazon/kcp/store/StoreFragment;->access$400(Lcom/amazon/kcp/store/StoreFragment;)Lcom/amazon/kcp/store/BrowserHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/store/BrowserHost;->getJavascriptPrefix()Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebChromeClient;->javascriptBridge:Lcom/amazon/kcp/store/KCPJSBridge;

    iget-object p2, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebChromeClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    .line 476
    invoke-static {p2}, Lcom/amazon/kcp/store/StoreFragment;->access$400(Lcom/amazon/kcp/store/StoreFragment;)Lcom/amazon/kcp/store/BrowserHost;

    move-result-object p2

    .line 475
    invoke-virtual {p1, v0, p2, p3, p5}, Lcom/amazon/kcp/store/KCPJSBridge;->handleJavascriptCall(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1

    .line 478
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 463
    invoke-static {}, Lcom/amazon/kcp/store/StoreFragment;->access$200()Ljava/lang/String;

    .line 465
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebChromeClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {p1}, Lcom/amazon/kcp/store/StoreFragment;->access$300(Lcom/amazon/kcp/store/StoreFragment;)Lcom/amazon/kcp/store/StoreProgressBarController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 466
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreFragment$StoreWebChromeClient;->this$0:Lcom/amazon/kcp/store/StoreFragment;

    invoke-static {p1}, Lcom/amazon/kcp/store/StoreFragment;->access$300(Lcom/amazon/kcp/store/StoreFragment;)Lcom/amazon/kcp/store/StoreProgressBarController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/store/StoreProgressBarController;->onProgressChanged(I)V

    :cond_1
    return-void
.end method
