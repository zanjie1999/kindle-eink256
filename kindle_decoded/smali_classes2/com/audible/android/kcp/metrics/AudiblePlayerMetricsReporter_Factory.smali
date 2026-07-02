.class public final Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter_Factory;
.super Ljava/lang/Object;
.source "AudiblePlayerMetricsReporter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;",
        ">;"
    }
.end annotation


# instance fields
.field private final metricsHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final playerStateContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;",
            ">;"
        }
    .end annotation
.end field

.field private final readerStateContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter_Factory;->metricsHelperProvider:Ljavax/inject/Provider;

    .line 22
    iput-object p2, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter_Factory;->readerStateContextProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p3, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter_Factory;->playerStateContextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;",
            ">;)",
            "Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter_Factory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;",
            ">;)",
            "Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    .line 37
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;

    .line 38
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    .line 39
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;

    invoke-direct {v0, p0, p1, p2}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;-><init>(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;Lcom/audible/hushpuppy/model/write/playerstate/IPlayerStateContext;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;
    .locals 3

    .line 28
    iget-object v0, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter_Factory;->metricsHelperProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter_Factory;->readerStateContextProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter_Factory;->playerStateContextProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter_Factory;->get()Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    move-result-object v0

    return-object v0
.end method
