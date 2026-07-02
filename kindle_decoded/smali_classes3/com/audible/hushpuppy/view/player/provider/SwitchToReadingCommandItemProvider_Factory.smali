.class public final Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider_Factory;
.super Ljava/lang/Object;
.source "SwitchToReadingCommandItemProvider_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final audiobookSwitcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;",
            ">;"
        }
    .end annotation
.end field

.field private final inBookChromeMetricsReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;",
            ">;"
        }
    .end annotation
.end field

.field private final kindleReaderSDKProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
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
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider_Factory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider_Factory;->audiobookSwitcherProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p3, p0, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider_Factory;->inBookChromeMetricsReporterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;",
            ">;)",
            "Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider_Factory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;",
            ">;)",
            "Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;

    .line 38
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 39
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    .line 40
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

    invoke-direct {v0, p0, p1, p2}, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider_Factory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider_Factory;->audiobookSwitcherProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider_Factory;->inBookChromeMetricsReporterProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider_Factory;->get()Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;

    move-result-object v0

    return-object v0
.end method
