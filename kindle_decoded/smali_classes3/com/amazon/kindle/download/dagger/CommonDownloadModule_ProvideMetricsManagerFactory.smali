.class public final Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMetricsManagerFactory;
.super Ljava/lang/Object;
.source "CommonDownloadModule_ProvideMetricsManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/krx/metrics/IMetricsManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMetricsManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMetricsManagerFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMetricsManagerFactory;-><init>()V

    sput-object v0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMetricsManagerFactory;->INSTANCE:Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMetricsManagerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMetricsManagerFactory;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMetricsManagerFactory;->INSTANCE:Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMetricsManagerFactory;

    return-object v0
.end method

.method public static provideInstance()Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 1

    .line 19
    invoke-static {}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMetricsManagerFactory;->proxyProvideMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 2

    .line 28
    invoke-static {}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule;->provideMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 27
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/krx/metrics/IMetricsManager;
    .locals 1

    .line 15
    invoke-static {}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMetricsManagerFactory;->provideInstance()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/kindle/download/dagger/CommonDownloadModule_ProvideMetricsManagerFactory;->get()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v0

    return-object v0
.end method
