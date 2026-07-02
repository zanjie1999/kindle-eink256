.class public final Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;
.super Ljava/lang/Object;
.source "PlaySelectionProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Lcom/amazon/kindle/krx/ui/IButton<",
        "Lcom/amazon/kindle/krx/content/IContentSelection;",
        ">;",
        "Lcom/amazon/kindle/krx/content/IContentSelection;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final playSelectionButton:Lcom/amazon/kindle/krx/ui/IButton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/LocationSeekerController;Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 68
    iput-object p2, p0, Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 70
    iput-object p4, p0, Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;->eventBus:Lde/greenrobot/event/EventBus;

    .line 72
    new-instance p4, Lcom/audible/hushpuppy/view/selection/PlaySelectionButton;

    .line 73
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p4, p1, p2, p3}, Lcom/audible/hushpuppy/view/selection/PlaySelectionButton;-><init>(Landroid/content/Context;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/controller/LocationSeekerController;)V

    iput-object p4, p0, Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;->playSelectionButton:Lcom/amazon/kindle/krx/ui/IButton;

    return-void
.end method


# virtual methods
.method public disable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public enable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 78
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerSelectionPlayButtonProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    .line 79
    iget-object p1, p0, Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    return-void
.end method

.method public get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/IButton;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ")",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IContentSelection;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object p1, p0, Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;->playSelectionButton:Lcom/amazon/kindle/krx/ui/IButton;

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;->get(Lcom/amazon/kindle/krx/content/IContentSelection;)Lcom/amazon/kindle/krx/ui/IButton;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->hasFullAudiobook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object p1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->FULL_AUDIOBOOK_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->intValue()I

    move-result p1

    return p1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isContentSelectionPlayable(Lcom/amazon/kindle/krx/content/IContentSelection;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 111
    sget-object p1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->PLAYABLE_LOCATION_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->intValue()I

    move-result p1

    return p1

    .line 115
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->MIN_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->intValue()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/selection/PlaySelectionProvider;->getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I

    move-result p1

    return p1
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;)V
    .locals 0

    return-void
.end method
