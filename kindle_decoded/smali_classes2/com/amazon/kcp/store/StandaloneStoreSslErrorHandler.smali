.class public final Lcom/amazon/kcp/store/StandaloneStoreSslErrorHandler;
.super Ljava/lang/Object;
.source "StandaloneStoreSslErrorHandler.kt"

# interfaces
.implements Lcom/amazon/kcp/store/StoreSslErrorHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;Lcom/amazon/kcp/application/WebViewSSLErrorHandler;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "webViewHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-static {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/store/StoreSslErrorHandler$DefaultImpls;->handle(Lcom/amazon/kcp/store/StoreSslErrorHandler;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;Lcom/amazon/kcp/application/WebViewSSLErrorHandler;)V

    return-void
.end method
