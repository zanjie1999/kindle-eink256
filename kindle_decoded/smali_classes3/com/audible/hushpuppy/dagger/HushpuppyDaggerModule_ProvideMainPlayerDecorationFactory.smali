.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;",
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

.field private final kindleReaderSDKProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;"
        }
    .end annotation
.end field

.field private final locationSeekerControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/LocationSeekerController;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

.field private final playerViewManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private final restrictionhandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/LocationSeekerController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    .line 40
    iput-object p2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;->hushpuppyModelProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;->locationSeekerControllerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;->playerViewManagerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p5, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;->restrictionhandlerProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p6, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;->audiobookSwitcherProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p7, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/LocationSeekerController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;)",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;"
        }
    .end annotation

    .line 86
    new-instance v8, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/LocationSeekerController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;)",
            "Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;"
        }
    .end annotation

    .line 70
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 71
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/audible/hushpuppy/controller/LocationSeekerController;

    .line 72
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    .line 73
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    .line 74
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    .line 75
    invoke-interface {p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-object v0, p0

    .line 68
    invoke-static/range {v0 .. v6}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;->proxyProvideMainPlayerDecoration(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideMainPlayerDecoration(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;
    .locals 0

    .line 105
    invoke-virtual/range {p0 .. p6}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->provideMainPlayerDecoration(Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 104
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;
    .locals 7

    .line 50
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;->hushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;->locationSeekerControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;->playerViewManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;->restrictionhandlerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;->audiobookSwitcherProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v6}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideMainPlayerDecorationFactory;->get()Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;

    move-result-object v0

    return-object v0
.end method
