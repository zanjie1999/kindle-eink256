.class public final Lcom/audible/hushpuppy/view/startactions/StartActionsWidget_Factory;
.super Ljava/lang/Object;
.source "StartActionsWidget_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;",
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

.field private final kindleReaderSdkProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ">;"
        }
    .end annotation
.end field

.field private final viewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/controller/ViewController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lcom/audible/hushpuppy/controller/ViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget_Factory;->kindleReaderSdkProvider:Ljavax/inject/Provider;

    .line 26
    iput-object p2, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget_Factory;->eventBusProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget_Factory;->viewControllerProvider:Ljavax/inject/Provider;

    .line 28
    iput-object p4, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget_Factory;->audibleDebugHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/startactions/StartActionsWidget_Factory;
    .locals 1
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
            "Lcom/audible/hushpuppy/controller/ViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;)",
            "Lcom/audible/hushpuppy/view/startactions/StartActionsWidget_Factory;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;
    .locals 1
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
            "Lcom/audible/hushpuppy/controller/ViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;",
            ">;)",
            "Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    .line 47
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/greenrobot/event/EventBus;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/audible/hushpuppy/controller/ViewController;

    invoke-direct {v0, p0, p1, p2}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/ViewController;)V

    .line 49
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    .line 48
    invoke-static {v0, p0}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget_MembersInjector;->injectAudibleDebugHelper(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget_Factory;->kindleReaderSdkProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget_Factory;->eventBusProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget_Factory;->viewControllerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget_Factory;->audibleDebugHelperProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2, v3}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget_Factory;->get()Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    move-result-object v0

    return-object v0
.end method
