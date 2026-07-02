.class public final Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;
.super Ljava/lang/Object;
.source "StartActionsUpsellController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/controller/StartActionsUpsellController;",
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

.field private final audiobookSwitcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;",
            ">;"
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

.field private final huspuppyModelProvider:Ljavax/inject/Provider;
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

.field private final restrictionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final toaRedeemClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;->huspuppyModelProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;->upsellModelProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;->eventBusProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;->buyAudioClientProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p6, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;->restrictionHandlerProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p7, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;->audibleServiceProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p8, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;->audiobookSwitcherProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p9, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;->toaRedeemClientProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;
    .locals 11
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
            "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;"
        }
    .end annotation

    .line 103
    new-instance v10, Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;

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

    invoke-direct/range {v0 .. v9}, Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/StartActionsUpsellController;
    .locals 11
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
            "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/StartActionsUpsellController;"
        }
    .end annotation

    .line 81
    new-instance v10, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;

    .line 82
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 83
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 84
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    .line 85
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lde/greenrobot/event/EventBus;

    .line 86
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;

    .line 87
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    .line 88
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 89
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    .line 90
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/audible/hushpuppy/controller/StartActionsUpsellController;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/service/upsell/purchase/buy/IBuyAudioClient;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/hushpuppy/service/upsell/purchase/toa/IToaRedeemClient;)V

    return-object v10
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/controller/StartActionsUpsellController;
    .locals 9

    .line 59
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;->kindleReaderSDKProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;->huspuppyModelProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;->upsellModelProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;->buyAudioClientProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;->restrictionHandlerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;->audibleServiceProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;->audiobookSwitcherProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;->toaRedeemClientProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v8}, Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/StartActionsUpsellController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/StartActionsUpsellController_Factory;->get()Lcom/audible/hushpuppy/controller/StartActionsUpsellController;

    move-result-object v0

    return-object v0
.end method
