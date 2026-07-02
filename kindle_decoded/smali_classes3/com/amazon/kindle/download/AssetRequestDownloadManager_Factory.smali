.class public final Lcom/amazon/kindle/download/AssetRequestDownloadManager_Factory;
.super Ljava/lang/Object;
.source "AssetRequestDownloadManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/download/AssetRequestDownloadManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final downloadNetworkingPolicyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final metricsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/metrics/IMetricsManager;",
            ">;"
        }
    .end annotation
.end field

.field private final networkServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/network/INetworkService;",
            ">;"
        }
    .end annotation
.end field

.field private final requestExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/webservices/IWebRequestExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/webservices/IWebRequestExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/network/INetworkService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/metrics/IMetricsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager_Factory;->requestExecutorProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager_Factory;->networkServiceProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager_Factory;->metricsManagerProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p4, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager_Factory;->downloadNetworkingPolicyProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/AssetRequestDownloadManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/webservices/IWebRequestExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/network/INetworkService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/metrics/IMetricsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;",
            ">;)",
            "Lcom/amazon/kindle/download/AssetRequestDownloadManager_Factory;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/amazon/kindle/download/AssetRequestDownloadManager_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/download/AssetRequestDownloadManager_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/AssetRequestDownloadManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/webservices/IWebRequestExecutor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/network/INetworkService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/metrics/IMetricsManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;",
            ">;)",
            "Lcom/amazon/kindle/download/AssetRequestDownloadManager;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/amazon/kindle/download/AssetRequestDownloadManager;

    .line 46
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/webservices/IWebRequestExecutor;

    .line 47
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/network/INetworkService;

    .line 48
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    .line 49
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/kindle/download/AssetRequestDownloadManager;-><init>(Lcom/amazon/kindle/webservices/IWebRequestExecutor;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/krx/metrics/IMetricsManager;Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/download/AssetRequestDownloadManager;
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager_Factory;->requestExecutorProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager_Factory;->networkServiceProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager_Factory;->metricsManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/amazon/kindle/download/AssetRequestDownloadManager_Factory;->downloadNetworkingPolicyProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kindle/download/AssetRequestDownloadManager_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/amazon/kindle/download/AssetRequestDownloadManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManager_Factory;->get()Lcom/amazon/kindle/download/AssetRequestDownloadManager;

    move-result-object v0

    return-object v0
.end method
