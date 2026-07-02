.class final Lcom/amazon/falkor/webview/WebViewCacheManagerImpl$cleanUpDiscards$$inlined$forEach$lambda$1;
.super Ljava/lang/Object;
.source "WebViewCacheManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;->cleanUpDiscards(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Lcom/amazon/falkor/webview/RoundedWebview;

.field final synthetic $sdk$inlined:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field final synthetic this$0:Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/webview/RoundedWebview;Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/webview/WebViewCacheManagerImpl$cleanUpDiscards$$inlined$forEach$lambda$1;->$it:Lcom/amazon/falkor/webview/RoundedWebview;

    iput-object p2, p0, Lcom/amazon/falkor/webview/WebViewCacheManagerImpl$cleanUpDiscards$$inlined$forEach$lambda$1;->this$0:Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;

    iput-object p3, p0, Lcom/amazon/falkor/webview/WebViewCacheManagerImpl$cleanUpDiscards$$inlined$forEach$lambda$1;->$sdk$inlined:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 95
    :try_start_0
    sget-object v0, Lcom/amazon/falkor/webview/FalkorWebViewUtils;->INSTANCE:Lcom/amazon/falkor/webview/FalkorWebViewUtils;

    iget-object v1, p0, Lcom/amazon/falkor/webview/WebViewCacheManagerImpl$cleanUpDiscards$$inlined$forEach$lambda$1;->$it:Lcom/amazon/falkor/webview/RoundedWebview;

    invoke-virtual {v0, v1}, Lcom/amazon/falkor/webview/FalkorWebViewUtils;->cleanUpWebView(Landroid/webkit/WebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 97
    iget-object v1, p0, Lcom/amazon/falkor/webview/WebViewCacheManagerImpl$cleanUpDiscards$$inlined$forEach$lambda$1;->$sdk$inlined:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/falkor/webview/WebViewCacheManagerImpl$cleanUpDiscards$$inlined$forEach$lambda$1;->this$0:Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;

    invoke-static {v2}, Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;->access$getTAG$p(Lcom/amazon/falkor/webview/WebViewCacheManagerImpl;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught when trying to clean up discarded webviews: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
