.class public final Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;
.super Landroid/widget/FrameLayout;
.source "StartActionsWidget.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;


# static fields
.field private static final HANDLER_DEBOUNCER:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

.field private static final PROPERTIES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private fragmentHolder:Lcom/audible/hushpuppy/view/common/FragmentHolder;

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final viewController:Lcom/audible/hushpuppy/controller/ViewController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 47
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->UPSELL_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->CURRENT_RELATIONSHIP:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->PRICE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->PROPERTIES:Ljava/util/EnumSet;

    .line 51
    new-instance v0, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    invoke-direct {v0}, Lcom/audible/hushpuppy/common/system/HandlerDebouncer;-><init>()V

    sput-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->HANDLER_DEBOUNCER:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/ViewController;)V
    .locals 1

    .line 79
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 80
    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 81
    iput-object p2, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->eventBus:Lde/greenrobot/event/EventBus;

    .line 82
    iput-object p3, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->viewController:Lcom/audible/hushpuppy/controller/ViewController;

    .line 84
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/hushpuppy/plugin/R$layout;->start_actions_widget:I

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;)Lcom/audible/hushpuppy/view/common/FragmentHolder;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->fragmentHolder:Lcom/audible/hushpuppy/view/common/FragmentHolder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;)Lcom/audible/hushpuppy/controller/ViewController;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->viewController:Lcom/audible/hushpuppy/controller/ViewController;

    return-object p0
.end method

.method static synthetic access$200()Lcom/audible/hushpuppy/common/logging/ILogger;
    .locals 1

    .line 41
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method private refresh()V
    .locals 2

    .line 123
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->HANDLER_DEBOUNCER:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    new-instance v1, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$1;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$1;-><init>(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;)V

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/system/AbstractDebouncer;->post(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 90
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 91
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 93
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$id;->start_actions_upsell_fragment_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/view/common/FragmentHolder;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->fragmentHolder:Lcom/audible/hushpuppy/view/common/FragmentHolder;

    .line 95
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->refresh()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 101
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 103
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->fragmentHolder:Lcom/audible/hushpuppy/view/common/FragmentHolder;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/audible/hushpuppy/view/common/FragmentHolder;->clearFragment()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->fragmentHolder:Lcom/audible/hushpuppy/view/common/FragmentHolder;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;)V
    .locals 3

    .line 193
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->PROPERTIES:Ljava/util/EnumSet;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->isPropertyOneOf(Ljava/util/EnumSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getProperty()Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    move-result-object v1

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getValue()Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Receiving %s, %s"

    invoke-interface {v0, v2, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->refresh()V

    :cond_0
    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/startaction/StartActionCancelState;)V
    .locals 2

    .line 207
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Received StartActionCancelState event"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->fragmentHolder:Lcom/audible/hushpuppy/view/common/FragmentHolder;

    if-nez v0, :cond_0

    .line 210
    sget-object p1, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Fragment holder is NULL, So No fragment is attached "

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    .line 213
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$3;->$SwitchMap$com$audible$hushpuppy$common$event$startaction$StartActionCancelState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    return-void

    .line 225
    :cond_1
    sget-object p1, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Return from cancel flow in Start action. Changing start action fragment to reflect current upsell state "

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->refresh()V

    return-void

    .line 215
    :cond_2
    sget-object p1, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Purchase cancelled from Start action. Changing start action fragment to Cancel fragment "

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 216
    sget-object p1, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;->HANDLER_DEBOUNCER:Lcom/audible/hushpuppy/common/system/HandlerDebouncer;

    new-instance v0, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$2;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/view/startactions/StartActionsWidget$2;-><init>(Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;)V

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/common/system/AbstractDebouncer;->post(Ljava/lang/Runnable;)V

    return-void
.end method
