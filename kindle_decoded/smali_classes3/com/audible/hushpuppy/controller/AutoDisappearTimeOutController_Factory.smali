.class public final Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController_Factory;
.super Ljava/lang/Object;
.source "AutoDisappearTimeOutController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;",
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

.field private final hushpuppyModelCallBackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;"
        }
    .end annotation
.end field

.field private final upsellModelManagerCallBackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
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
            "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController_Factory;->upsellModelManagerCallBackProvider:Ljavax/inject/Provider;

    .line 23
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController_Factory;->hushpuppyModelCallBackProvider:Ljavax/inject/Provider;

    .line 24
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController_Factory;->eventBusProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController_Factory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;

    .line 38
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;

    .line 39
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 40
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lde/greenrobot/event/EventBus;

    invoke-direct {v0, p0, p1, p2}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;-><init>(Lcom/audible/hushpuppy/model/write/IUpsellWritableModel;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController_Factory;->upsellModelManagerCallBackProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController_Factory;->hushpuppyModelCallBackProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController_Factory;->eventBusProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController_Factory;->get()Lcom/audible/hushpuppy/controller/AutoDisappearTimeOutController;

    move-result-object v0

    return-object v0
.end method
