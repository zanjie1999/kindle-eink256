.class public final Lcom/amazon/kcp/application/SharedBindingsModule_GetContentOpenMetricsManagerFactory;
.super Ljava/lang/Object;
.source "SharedBindingsModule_GetContentOpenMetricsManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final metricsManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/metrics/internal/MetricsManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/metrics/internal/MetricsManager;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazon/kcp/application/SharedBindingsModule_GetContentOpenMetricsManagerFactory;->metricsManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/amazon/kcp/application/SharedBindingsModule_GetContentOpenMetricsManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/metrics/internal/MetricsManager;",
            ">;)",
            "Lcom/amazon/kcp/application/SharedBindingsModule_GetContentOpenMetricsManagerFactory;"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/amazon/kcp/application/SharedBindingsModule_GetContentOpenMetricsManagerFactory;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/SharedBindingsModule_GetContentOpenMetricsManagerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kcp/application/metrics/internal/MetricsManager;",
            ">;)",
            "Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;"
        }
    .end annotation

    .line 26
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    invoke-static {p0}, Lcom/amazon/kcp/application/SharedBindingsModule_GetContentOpenMetricsManagerFactory;->proxyGetContentOpenMetricsManager(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;)Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object p0

    return-object p0
.end method

.method public static proxyGetContentOpenMetricsManager(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;)Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;
    .locals 1

    .line 37
    invoke-static {p0}, Lcom/amazon/kcp/application/SharedBindingsModule;->getContentOpenMetricsManager(Lcom/amazon/kcp/application/metrics/internal/MetricsManager;)Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 36
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kcp/application/SharedBindingsModule_GetContentOpenMetricsManagerFactory;->metricsManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/amazon/kcp/application/SharedBindingsModule_GetContentOpenMetricsManagerFactory;->provideInstance(Ljavax/inject/Provider;)Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/amazon/kcp/application/SharedBindingsModule_GetContentOpenMetricsManagerFactory;->get()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v0

    return-object v0
.end method
