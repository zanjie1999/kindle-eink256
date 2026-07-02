.class abstract Lcom/audible/hushpuppy/model/write/AbstractModel;
.super Ljava/lang/Object;
.source "AbstractModel.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field protected final eventBus:Lde/greenrobot/event/EventBus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/model/write/AbstractModel;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/model/write/AbstractModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method protected constructor <init>(Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/AbstractModel;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method


# virtual methods
.method protected final stateChanged(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractModel;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;

    invoke-direct {v1, p1, p2}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;-><init>(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/audible/hushpuppy/model/write/AbstractModel;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Model change: %s -> %s"

    invoke-interface {v0, v1, p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
