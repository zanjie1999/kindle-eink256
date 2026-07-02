.class public final Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;
.super Ljava/lang/Object;
.source "HushpuppyDaggerModule_ProvideUpsellHelperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/controller/IUpsellHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final audibleServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;"
        }
    .end annotation
.end field

.field private final audioDelayPurchaseRequestHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/IDelayRequestHandler<",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/hushpuppy/PurchaseAudioModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final buyAudioClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;",
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

.field private final module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

.field private final toaRedeemClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;",
            ">;"
        }
    .end annotation
.end field

.field private final upsellAutoDisappearTimeOutControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;",
            ">;"
        }
    .end annotation
.end field

.field private final upsellModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/IDelayRequestHandler<",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/hushpuppy/PurchaseAudioModel;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    .line 57
    iput-object p2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->hushpuppyModelProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p4, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->upsellModelProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p5, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->eventBusProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p6, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->audioDelayPurchaseRequestHandlerProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p7, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->audibleServiceProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p8, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->buyAudioClientProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p9, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->upsellAutoDisappearTimeOutControllerProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p10, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->toaRedeemClientProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/IDelayRequestHandler<",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/hushpuppy/PurchaseAudioModel;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;",
            ">;)",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;"
        }
    .end annotation

    .line 121
    new-instance v11, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;

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

    invoke-direct/range {v0 .. v10}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;-><init>(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v11
.end method

.method public static provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/IUpsellHelper;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/IDelayRequestHandler<",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/hushpuppy/PurchaseAudioModel;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/IUpsellHelper;"
        }
    .end annotation

    .line 98
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 99
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 100
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    .line 101
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/greenrobot/event/EventBus;

    .line 102
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/audible/hushpuppy/controller/IDelayRequestHandler;

    .line 103
    invoke-interface {p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 104
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;

    .line 105
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;

    .line 106
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;

    move-object p1, v0

    move-object p2, v1

    move-object p3, v2

    move-object p4, v3

    move-object p5, v4

    move-object p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    .line 96
    invoke-static/range {p0 .. p9}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->proxyProvideUpsellHelper(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/IDelayRequestHandler;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;)Lcom/audible/hushpuppy/controller/IUpsellHelper;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideUpsellHelper(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/IDelayRequestHandler;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;)Lcom/audible/hushpuppy/controller/IUpsellHelper;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
            "Lde/greenrobot/event/EventBus;",
            "Lcom/audible/hushpuppy/controller/IDelayRequestHandler<",
            "Lcom/audible/mobile/domain/Asin;",
            "Lcom/audible/hushpuppy/PurchaseAudioModel;",
            ">;",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            "Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;",
            "Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;",
            "Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;",
            ")",
            "Lcom/audible/hushpuppy/controller/IUpsellHelper;"
        }
    .end annotation

    .line 146
    invoke-virtual/range {p0 .. p9}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;->provideUpsellHelper(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/IDelayRequestHandler;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;)Lcom/audible/hushpuppy/controller/IUpsellHelper;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 145
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/audible/hushpuppy/controller/IUpsellHelper;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/controller/IUpsellHelper;
    .locals 10

    .line 71
    iget-object v0, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->module:Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;

    iget-object v1, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->hushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->upsellModelProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->audioDelayPurchaseRequestHandlerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->audibleServiceProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->buyAudioClientProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->upsellAutoDisappearTimeOutControllerProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->toaRedeemClientProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v9}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->provideInstance(Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/IUpsellHelper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/audible/hushpuppy/dagger/HushpuppyDaggerModule_ProvideUpsellHelperFactory;->get()Lcom/audible/hushpuppy/controller/IUpsellHelper;

    move-result-object v0

    return-object v0
.end method
