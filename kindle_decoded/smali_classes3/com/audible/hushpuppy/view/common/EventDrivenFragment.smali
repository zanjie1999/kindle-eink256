.class public abstract Lcom/audible/hushpuppy/view/common/EventDrivenFragment;
.super Landroid/app/Fragment;
.source "EventDrivenFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MODE",
        "L:Ljava/lang/Object;",
        "CONTRO",
        "LLER:Ljava/lang/Object;",
        ">",
        "Landroid/app/Fragment;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field protected final controller:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCONTRO",
            "LLER;"
        }
    .end annotation
.end field

.field protected final eventBus:Lde/greenrobot/event/EventBus;

.field private final handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

.field protected final model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMODE",
            "L;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/common/EventDrivenFragment;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/common/EventDrivenFragment;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lde/greenrobot/event/EventBus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMODE",
            "L;",
            "TCONTRO",
            "LLER;",
            "Lde/greenrobot/event/EventBus;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 39
    new-instance v0, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    invoke-direct {v0}, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;-><init>()V

    iput-object v0, p0, Lcom/audible/hushpuppy/view/common/EventDrivenFragment;->handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    .line 48
    iput-object p1, p0, Lcom/audible/hushpuppy/view/common/EventDrivenFragment;->model:Ljava/lang/Object;

    .line 49
    iput-object p2, p0, Lcom/audible/hushpuppy/view/common/EventDrivenFragment;->controller:Ljava/lang/Object;

    .line 50
    iput-object p3, p0, Lcom/audible/hushpuppy/view/common/EventDrivenFragment;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method


# virtual methods
.method protected abstract getProperties()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;",
            ">;"
        }
    .end annotation
.end method

.method public final onEventAsync(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;)V
    .locals 2

    .line 98
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/common/EventDrivenFragment;->getProperties()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->isPropertyOneOf(Ljava/util/EnumSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/audible/hushpuppy/view/common/EventDrivenFragment;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received %s"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    iget-object p1, p0, Lcom/audible/hushpuppy/view/common/EventDrivenFragment;->handlerDebouncer:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    new-instance v0, Lcom/audible/hushpuppy/view/common/EventDrivenFragment$1;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/view/common/EventDrivenFragment$1;-><init>(Lcom/audible/hushpuppy/view/common/EventDrivenFragment;)V

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/common/system/AbstractDebouncer;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    .line 60
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 61
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/common/EventDrivenFragment;->refresh()V

    .line 62
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/EventDrivenFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 72
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 73
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/EventDrivenFragment;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract refresh()V
.end method
