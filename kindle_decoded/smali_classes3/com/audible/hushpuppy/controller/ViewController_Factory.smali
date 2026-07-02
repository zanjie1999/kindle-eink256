.class public final Lcom/audible/hushpuppy/controller/ViewController_Factory;
.super Ljava/lang/Object;
.source "ViewController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/controller/ViewController;",
        ">;"
    }
.end annotation


# instance fields
.field private final debugHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
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

.field private final kindleReaderSdkProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
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

.field private final upsellModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
            ">;"
        }
    .end annotation
.end field

.field private final userModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IUserModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IUserModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/price/PriceClient;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ViewController_Factory;->upsellModelProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/ViewController_Factory;->eventBusProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/ViewController_Factory;->hushpuppyModelProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/ViewController_Factory;->userModelProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/ViewController_Factory;->debugHelperProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p6, p0, Lcom/audible/hushpuppy/controller/ViewController_Factory;->kindleReaderSdkProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p7, p0, Lcom/audible/hushpuppy/controller/ViewController_Factory;->priceClientProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/ViewController_Factory;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IUserModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/price/PriceClient;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/ViewController_Factory;"
        }
    .end annotation

    .line 86
    new-instance v8, Lcom/audible/hushpuppy/controller/ViewController_Factory;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/audible/hushpuppy/controller/ViewController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v8
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/ViewController;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IUserModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/service/upsell/price/PriceClient;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/ViewController;"
        }
    .end annotation

    .line 66
    new-instance v6, Lcom/audible/hushpuppy/controller/ViewController;

    .line 68
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    .line 69
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lde/greenrobot/event/EventBus;

    .line 70
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 71
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/audible/hushpuppy/model/read/IUserModel;

    .line 72
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/audible/hushpuppy/controller/ViewController;-><init>(Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/model/read/IUserModel;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V

    .line 73
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v6, p0}, Lcom/audible/hushpuppy/controller/ViewController_MembersInjector;->injectKindleReaderSdk(Lcom/audible/hushpuppy/controller/ViewController;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 74
    invoke-interface {p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/service/upsell/price/PriceClient;

    invoke-static {v6, p0}, Lcom/audible/hushpuppy/controller/ViewController_MembersInjector;->injectPriceClient(Lcom/audible/hushpuppy/controller/ViewController;Lcom/audible/hushpuppy/service/upsell/price/PriceClient;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/controller/ViewController;
    .locals 7

    .line 48
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ViewController_Factory;->upsellModelProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ViewController_Factory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/ViewController_Factory;->hushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/controller/ViewController_Factory;->userModelProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lcom/audible/hushpuppy/controller/ViewController_Factory;->debugHelperProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lcom/audible/hushpuppy/controller/ViewController_Factory;->kindleReaderSdkProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lcom/audible/hushpuppy/controller/ViewController_Factory;->priceClientProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v6}, Lcom/audible/hushpuppy/controller/ViewController_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/ViewController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/ViewController_Factory;->get()Lcom/audible/hushpuppy/controller/ViewController;

    move-result-object v0

    return-object v0
.end method
