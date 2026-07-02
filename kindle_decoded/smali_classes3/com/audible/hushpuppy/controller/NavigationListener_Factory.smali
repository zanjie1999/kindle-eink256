.class public final Lcom/audible/hushpuppy/controller/NavigationListener_Factory;
.super Ljava/lang/Object;
.source "NavigationListener_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/controller/NavigationListener;",
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

.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
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
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/NavigationListener_Factory;->eventBusProvider:Ljavax/inject/Provider;

    .line 18
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/NavigationListener_Factory;->audibleDebugHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/NavigationListener_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/NavigationListener_Factory;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/audible/hushpuppy/controller/NavigationListener_Factory;

    invoke-direct {v0, p0, p1}, Lcom/audible/hushpuppy/controller/NavigationListener_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/NavigationListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lde/greenrobot/event/EventBus;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;)",
            "Lcom/audible/hushpuppy/controller/NavigationListener;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/audible/hushpuppy/controller/NavigationListener;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lde/greenrobot/event/EventBus;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    invoke-direct {v0, p0, p1}, Lcom/audible/hushpuppy/controller/NavigationListener;-><init>(Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/controller/NavigationListener;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/NavigationListener_Factory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/NavigationListener_Factory;->audibleDebugHelperProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/audible/hushpuppy/controller/NavigationListener_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/controller/NavigationListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/audible/hushpuppy/controller/NavigationListener_Factory;->get()Lcom/audible/hushpuppy/controller/NavigationListener;

    move-result-object v0

    return-object v0
.end method
