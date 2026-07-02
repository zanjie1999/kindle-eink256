.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvideFullPlayerProviderFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;",
        ">;"
    }
.end annotation


# instance fields
.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
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

.field private final mainPlayerDecorationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

.field private final persistentPlayerDecorationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;",
            ">;"
        }
    .end annotation
.end field

.field private final playerViewManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private final upsellControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ActionBarUpsellController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/LocationSeekerController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ActionBarUpsellController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    .line 48
    iput-object p2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;->hushpuppyModelProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;->eventBusProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p4, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;->locationSeekerControllerProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p5, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;->upsellControllerProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p6, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;->mainPlayerDecorationProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p7, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;->persistentPlayerDecorationProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p8, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;->playerViewManagerProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p9, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/LocationSeekerController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ActionBarUpsellController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;)",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;"
        }
    .end annotation

    .line 104
    new-instance v10, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/LocationSeekerController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ActionBarUpsellController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;)",
            "Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;"
        }
    .end annotation

    .line 84
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 85
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/greenrobot/event/EventBus;

    .line 86
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/hushpuppy/controller/LocationSeekerController;

    .line 87
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/audible/hushpuppy/controller/ActionBarUpsellController;

    .line 88
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;

    .line 89
    invoke-interface {p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;

    .line 90
    invoke-interface {p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    .line 91
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-object p1, v0

    move-object p2, v1

    move-object p3, v2

    move-object p4, v3

    move-object p5, v4

    move-object p6, v5

    move-object p7, v6

    move-object/from16 p8, v7

    .line 82
    invoke-static/range {p0 .. p8}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;->proxyProvideFullPlayerProvider(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lcom/audible/hushpuppy/controller/ActionBarUpsellController;Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideFullPlayerProvider(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lcom/audible/hushpuppy/controller/ActionBarUpsellController;Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;
    .locals 0

    .line 127
    invoke-virtual/range {p0 .. p8}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->provideFullPlayerProvider(Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lcom/audible/hushpuppy/controller/ActionBarUpsellController;Lcom/audible/hushpuppy/view/player/decoration/MainFullPlayerDecoration;Lcom/audible/hushpuppy/view/player/decoration/PersistentFullPlayerDecoration;Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 126
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;
    .locals 9

    .line 60
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;->hushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;->locationSeekerControllerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;->upsellControllerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;->mainPlayerDecorationProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;->persistentPlayerDecorationProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;->playerViewManagerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v8}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideFullPlayerProviderFactory;->get()Lcom/audible/hushpuppy/view/player/provider/FullPlayerProvider;

    move-result-object v0

    return-object v0
.end method
