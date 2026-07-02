.class public abstract Lcom/amazon/falkor/bottomsheet/CachedWebViewFragment;
.super Lcom/amazon/falkor/BaseWebViewFragment;
.source "WebViewFragments.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "fragmentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, p1}, Lcom/amazon/falkor/BaseWebViewFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getWebView()Landroid/webkit/WebView;
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcom/amazon/falkor/BaseWebViewFragment;->requireURL()Ljava/lang/String;

    move-result-object v0

    .line 121
    sget-object v1, Lcom/amazon/falkor/webview/WebViewCacheManager;->Companion:Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;

    invoke-virtual {v1}, Lcom/amazon/falkor/webview/WebViewCacheManager$Companion;->getInstance()Lcom/amazon/falkor/webview/WebViewCacheManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/falkor/webview/WebViewCacheManager;->getWebView(Ljava/lang/String;)Lcom/amazon/falkor/webview/RoundedWebview;

    move-result-object v0

    return-object v0
.end method
