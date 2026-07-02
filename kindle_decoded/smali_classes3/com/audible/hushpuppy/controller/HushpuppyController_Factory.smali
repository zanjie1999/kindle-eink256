.class public final Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;
.super Ljava/lang/Object;
.source "HushpuppyController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/controller/HushpuppyController;",
        ">;"
    }
.end annotation


# instance fields
.field private final audibleDebugHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final audibleServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
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

.field private final modelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;"
        }
    .end annotation
.end field

.field private final positionMarkerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/IPositionMarker;",
            ">;"
        }
    .end annotation
.end field

.field private final priceClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/price/PriceClient;",
            ">;"
        }
    .end annotation
.end field

.field private final readAlongModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IReadAlongModel;",
            ">;"
        }
    .end annotation
.end field

.field private final readerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IReaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private final seekControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/SeekController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IReadAlongModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IReaderManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/SeekController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/IPositionMarker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/price/PriceClient;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;->eventBusProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;->modelProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;->readAlongModelProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;->audibleServiceProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p6, p0, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;->readerManagerProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p7, p0, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;->seekControllerProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p8, p0, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;->positionMarkerProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p9, p0, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;->audibleDebugHelperProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p10, p0, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;->priceClientProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IReadAlongModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IReaderManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/SeekController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/IPositionMarker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/price/PriceClient;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;"
        }
    .end annotation

    .line 112
    new-instance v11, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v11
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/HushpuppyController;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IReadAlongModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/reader/IReaderManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/SeekController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/ui/IPositionMarker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/price/PriceClient;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/HushpuppyController;"
        }
    .end annotation

    .line 86
    new-instance v10, Lcom/audible/hushpuppy/controller/HushpuppyController;

    .line 88
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 89
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lde/greenrobot/event/EventBus;

    .line 90
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 91
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/audible/hushpuppy/model/read/IReadAlongModel;

    .line 92
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 93
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/amazon/kindle/krx/reader/IReaderManager;

    .line 94
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/audible/hushpuppy/controller/SeekController;

    .line 95
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/amazon/kindle/krx/ui/IPositionMarker;

    .line 96
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/audible/hushpuppy/controller/HushpuppyController;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/model/read/IReadAlongModel;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/audible/hushpuppy/controller/SeekController;Lcom/amazon/kindle/krx/ui/IPositionMarker;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V

    .line 97
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient;

    invoke-static {v10, v0}, Lcom/audible/hushpuppy/controller/HushpuppyController_MembersInjector;->injectPriceClient(Lcom/audible/hushpuppy/controller/HushpuppyController;Lcom/audible/hushpuppy/service/upsell/price/PriceClient;)V

    return-object v10
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/controller/HushpuppyController;
    .locals 10

    .line 62
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;->modelProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;->readAlongModelProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;->audibleServiceProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;->readerManagerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;->seekControllerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;->positionMarkerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;->audibleDebugHelperProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;->priceClientProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v9}, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/HushpuppyController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/HushpuppyController_Factory;->get()Lcom/audible/hushpuppy/controller/HushpuppyController;

    move-result-object v0

    return-object v0
.end method
