.class public final Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper_Factory;
.super Ljava/lang/Object;
.source "AudiblePlayerMetricsHelper_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final kindleReaderSDKProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper_Factory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 19
    iput-object p2, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper_Factory;->readerStateContextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;",
            ">;)",
            "Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper_Factory;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper_Factory;

    invoke-direct {v0, p0, p1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;",
            ">;)",
            "Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;

    .line 31
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    invoke-direct {v0, p0, p1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper_Factory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper_Factory;->readerStateContextProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper_Factory;->get()Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;

    move-result-object v0

    return-object v0
.end method
