.class public final Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider_Factory;
.super Ljava/lang/Object;
.source "UpgradeWithAudioCommandItemProvider_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;",
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

.field private final hushpuppyModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
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

.field private final restrictionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final upsellLogicProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/common/UpsellLogic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/common/UpsellLogic;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider_Factory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider_Factory;->hushpuppyModelProvider:Ljavax/inject/Provider;

    .line 36
    iput-object p3, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider_Factory;->restrictionHandlerProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p4, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider_Factory;->upsellLogicProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p5, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider_Factory;->audiobookSwitcherProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p6, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider_Factory;->inBookChromeMetricsReporterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/common/UpsellLogic;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;",
            ">;)",
            "Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider_Factory;"
        }
    .end annotation

    .line 76
    new-instance v7, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/common/UpsellLogic;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;",
            ">;)",
            "Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;"
        }
    .end annotation

    .line 60
    new-instance v7, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;

    .line 61
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 62
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 63
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    .line 64
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/audible/hushpuppy/view/common/UpsellLogic;

    .line 65
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    .line 66
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/audible/hushpuppy/view/common/UpsellLogic;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider_Factory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider_Factory;->hushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider_Factory;->restrictionHandlerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider_Factory;->upsellLogicProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider_Factory;->audiobookSwitcherProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider_Factory;->inBookChromeMetricsReporterProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v5}, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider_Factory;->get()Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;

    move-result-object v0

    return-object v0
.end method
