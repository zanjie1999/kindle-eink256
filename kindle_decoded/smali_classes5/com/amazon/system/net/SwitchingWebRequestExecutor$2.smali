.class final Lcom/amazon/system/net/SwitchingWebRequestExecutor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SwitchingWebRequestExecutor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/system/net/SwitchingWebRequestExecutor;-><init>(Ldagger/Lazy;Ldagger/Lazy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/webservices/IWebRequestExecutor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $krlForDownloadFacade:Ldagger/Lazy;

.field final synthetic $okHttpClientProvider:Ldagger/Lazy;


# direct methods
.method constructor <init>(Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/system/net/SwitchingWebRequestExecutor$2;->$krlForDownloadFacade:Ldagger/Lazy;

    iput-object p2, p0, Lcom/amazon/system/net/SwitchingWebRequestExecutor$2;->$okHttpClientProvider:Ldagger/Lazy;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/webservices/IWebRequestExecutor;
    .locals 10

    .line 29
    iget-object v0, p0, Lcom/amazon/system/net/SwitchingWebRequestExecutor$2;->$krlForDownloadFacade:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    .line 30
    invoke-static {}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->isHttp2Enabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    sget-object v1, Lokhttp3/Protocol;->HTTP_2:Lokhttp3/Protocol;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    move-object v9, v1

    .line 35
    new-instance v1, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;

    iget-object v2, p0, Lcom/amazon/system/net/SwitchingWebRequestExecutor$2;->$okHttpClientProvider:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lokhttp3/OkHttpClient;

    const-string v2, "krlFacade"

    .line 36
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v4

    const-string v2, "krlFacade.authenticationManager"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v5

    const-string v2, "krlFacade.networkService"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v6

    const-string v2, "krlFacade.metricsManager"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getLocaleManager()Lcom/amazon/kindle/services/locale/ILocaleManager;

    move-result-object v7

    const-string v2, "krlFacade.localeManager"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v0, "krlFacade.context"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    .line 35
    invoke-direct/range {v2 .. v9}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;-><init>(Lokhttp3/OkHttpClient;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/services/locale/ILocaleManager;Landroid/content/Context;Ljava/util/Collection;)V

    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/amazon/system/net/SwitchingWebRequestExecutor$2;->invoke()Lcom/amazon/kindle/webservices/IWebRequestExecutor;

    move-result-object v0

    return-object v0
.end method
