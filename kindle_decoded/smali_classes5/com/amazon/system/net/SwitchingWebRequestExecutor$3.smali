.class final Lcom/amazon/system/net/SwitchingWebRequestExecutor$3;
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


# direct methods
.method constructor <init>(Ldagger/Lazy;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/system/net/SwitchingWebRequestExecutor$3;->$krlForDownloadFacade:Ldagger/Lazy;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/webservices/IWebRequestExecutor;
    .locals 8

    .line 44
    iget-object v0, p0, Lcom/amazon/system/net/SwitchingWebRequestExecutor$3;->$krlForDownloadFacade:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    .line 45
    new-instance v7, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;

    const-string v1, "krlFacade"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    .line 46
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v3

    .line 47
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v4

    .line 48
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getLocaleManager()Lcom/amazon/kindle/services/locale/ILocaleManager;

    move-result-object v5

    .line 49
    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v1, v7

    .line 45
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/webservices/BaseWebRequestExecutor;-><init>(Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/services/locale/ILocaleManager;Landroid/content/Context;)V

    return-object v7
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/amazon/system/net/SwitchingWebRequestExecutor$3;->invoke()Lcom/amazon/kindle/webservices/IWebRequestExecutor;

    move-result-object v0

    return-object v0
.end method
