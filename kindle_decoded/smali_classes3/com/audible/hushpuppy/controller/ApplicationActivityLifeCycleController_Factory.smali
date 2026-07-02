.class public final Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController_Factory;
.super Ljava/lang/Object;
.source "ApplicationActivityLifeCycleController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController_Factory;->hushpuppyModelProvider:Ljavax/inject/Provider;

    .line 18
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController_Factory;->eventBusProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController_Factory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController_Factory;

    invoke-direct {v0, p0, p1}, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/model/read/IHushpuppyModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;

    .line 29
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/greenrobot/event/EventBus;

    invoke-direct {v0, p0, p1}, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;-><init>(Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController_Factory;->hushpuppyModelProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController_Factory;->eventBusProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController_Factory;->get()Lcom/audible/hushpuppy/controller/ApplicationActivityLifeCycleController;

    move-result-object v0

    return-object v0
.end method
