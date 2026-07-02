.class public final Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;
.super Ljava/lang/Object;
.source "LibraryLeftNavProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final hushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

.field private final isEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final panelsCollection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/panels/IPanelRow;",
            ">;"
        }
    .end annotation
.end field

.field private final paymentFlowsFeatureToggler:Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;

.field private final restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

.field private weekReferenceOfMatchmakerPanelRow:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/audible/hushpuppy/view/leftnav/MatchmakerPanelRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;)V
    .locals 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->isEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    iput-object p1, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 107
    iput-object p2, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->eventBus:Lde/greenrobot/event/EventBus;

    .line 108
    iput-object p5, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    .line 109
    iput-object p3, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->hushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    .line 110
    iput-object p4, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    .line 111
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->panelsCollection:Ljava/util/List;

    .line 112
    iput-object p6, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->paymentFlowsFeatureToggler:Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method private addMatchmakerPanelRow(Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;)V
    .locals 1

    .line 189
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider$2;->$SwitchMap$com$amazon$kindle$krx$providers$ILibraryLeftNavProviderV2$LeftNavSection:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->panelsCollection:Ljava/util/List;

    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->getMatchmakerPanelRow()Lcom/audible/hushpuppy/view/leftnav/MatchmakerPanelRow;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private hasUpgradableEBook()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->hushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    invoke-interface {v0}, Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;->countUpgradeableEBooks()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private refreshLibraryLeftNav()V
    .locals 2

    .line 175
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 176
    new-instance v1, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider$1;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider$1;-><init>(Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public disable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 145
    iget-object p1, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 146
    iget-object p1, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->isEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 147
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->refreshLibraryLeftNav()V

    return-void
.end method

.method public enable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 136
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->registerLibraryLeftNavProvider(Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2;)V

    .line 137
    iget-object p1, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 138
    iget-object p1, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->isEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 139
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->refreshLibraryLeftNav()V

    return-void
.end method

.method public getLeftNavPanelRows(Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;",
            "Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/panels/IPanelRow;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object p1, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->panelsCollection:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 121
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->shouldShowMatchmaker()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    invoke-direct {p0, p2}, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->addMatchmakerPanelRow(Lcom/amazon/kindle/krx/providers/ILibraryLeftNavProviderV2$LeftNavSection;)V

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->panelsCollection:Ljava/util/List;

    return-object p1
.end method

.method getMatchmakerPanelRow()Lcom/audible/hushpuppy/view/leftnav/MatchmakerPanelRow;
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->weekReferenceOfMatchmakerPanelRow:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Lcom/audible/hushpuppy/view/leftnav/MatchmakerPanelRow;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v3, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    invoke-direct {v1, v2, v3}, Lcom/audible/hushpuppy/view/leftnav/MatchmakerPanelRow;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;)V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->weekReferenceOfMatchmakerPanelRow:Ljava/lang/ref/WeakReference;

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->weekReferenceOfMatchmakerPanelRow:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/view/leftnav/MatchmakerPanelRow;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 130
    sget-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->MATCHMAKER_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->intValue()I

    move-result v0

    return v0
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/relationship/CompanionMappingModificationPersistedEvent;)V
    .locals 1

    .line 157
    sget-object p1, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Got companion mapping modification; refreshed library leftnav"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->refreshLibraryLeftNav()V

    return-void
.end method

.method shouldShowMatchmaker()Z
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->isEnable:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;->isAudiobookStoreEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 216
    :cond_1
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->hasUpgradableEBook()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->paymentFlowsFeatureToggler:Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;

    invoke-interface {v0}, Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;->shouldUsePaymentFlows()Z

    move-result v0

    if-nez v0, :cond_3

    .line 221
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Suppressing Matchmaker because payment flows are disabled"

    invoke-interface {v0, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method
