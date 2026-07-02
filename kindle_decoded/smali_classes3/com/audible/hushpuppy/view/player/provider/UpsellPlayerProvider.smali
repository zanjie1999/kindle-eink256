.class public final Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;
.super Ljava/lang/Object;
.source "UpsellPlayerProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IActionBarDecoration;
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/ui/IActionBarDecoration;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Lcom/amazon/kindle/krx/ui/IActionBarDecoration;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# static fields
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
.field protected eventBus:Lde/greenrobot/event/EventBus;

.field private final handler:Landroid/os/Handler;

.field protected hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field protected kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private playerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/audible/hushpuppy/view/player/view/RefreshableView;",
            ">;"
        }
    .end annotation
.end field

.field protected playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

.field protected restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

.field protected upsellController:Lcom/audible/hushpuppy/controller/ActionBarUpsellController;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    .line 53
    sget-object v0, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->CURRENT_RELATIONSHIP:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->DOWNLOAD_INFO_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->UPSELL_STATE:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->AUDIBLE_INTERFACE_VISIBILITY:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->EBOOK_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->MAXIMUM_PLAYABLE_AUDIO_POSITION:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->PROPERTIES:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->playerView:Ljava/lang/ref/WeakReference;

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->handler:Landroid/os/Handler;

    return-void
.end method

.method private isEnabled()Z
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_0

    .line 181
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "upsell view disabled (reader eBook is missing)"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v1

    if-nez v1, :cond_1

    .line 185
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "upsell view disabled (current relationship is missing)"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    invoke-interface {v2}, Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;->isAudiobookPlaybackEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 188
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "upsell view disabled (playback disabled by restriction apis)"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_2
    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasAudiobook()Z

    move-result v2

    if-nez v2, :cond_3

    .line 190
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "upsell view disabled (missing relationship audiobook)"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_3
    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasEBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 192
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "upsell view disabled (mismatched relationship ebook)"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return v0

    .line 194
    :cond_4
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "upsell view enabled"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method private refreshUpsellPlayerView()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider$1;

    invoke-direct {v1, p0}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider$1;-><init>(Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public disable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public enable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 120
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerActionBarDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    .line 121
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->eventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {p1, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    return-void
.end method

.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionBarDecoration;
    .locals 1

    .line 141
    sget-object p1, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Return upsell sample player widget"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionBarDecoration;

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDecoration(Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;)Lcom/amazon/kindle/krx/ui/ColorCodedView;
    .locals 2

    .line 148
    sget-object v0, Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;->CENTER:Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;

    if-eq p1, v0, :cond_0

    .line 149
    sget-object p1, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "getDecoration is null (actionBarDecorationPosition not CENTER)"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 152
    sget-object p1, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "getDecoration is null (player not enabled)"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->playerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_0

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isPlayerToggledOn()Z

    move-result p1

    if-nez p1, :cond_2

    .line 155
    sget-object p1, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "getDecoration is null (Persistent player not Toggled On)"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->playerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_0

    .line 158
    :cond_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->playerViewManager:Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/view/player/view/manager/PlayerViewManager;->getPlayerViewForReader(Landroid/content/Context;)Lcom/audible/hushpuppy/view/player/view/RefreshableView;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->playerView:Ljava/lang/ref/WeakReference;

    .line 159
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    .line 160
    sget-object p1, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "getDecoration is null (no player view)"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_3
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->hasSampleAudiobook()Z

    move-result p1

    if-nez p1, :cond_4

    .line 162
    sget-object p1, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "getDecoration is null (not sample view)"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->playerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_0

    .line 166
    :cond_4
    sget-object p1, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->playerView:Ljava/lang/ref/WeakReference;

    const-string v1, "getDecoration is %s"

    invoke-interface {p1, v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->playerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/hushpuppy/view/player/view/RefreshableView;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/view/player/view/RefreshableView;->refresh()V

    .line 171
    :goto_0
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->playerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/ui/ColorCodedView;

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getProviderPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 40
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;)V
    .locals 3

    .line 217
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->PROPERTIES:Ljava/util/EnumSet;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->isPropertyOneOf(Ljava/util/EnumSet;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->playerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 219
    sget-object p1, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "upsell view is null, ignore the model change event"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->hasSampleAudiobook()Z

    move-result v0

    .line 226
    sget-object v1, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;->CURRENT_RELATIONSHIP:Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent;->getProperty()Lcom/audible/hushpuppy/common/event/model/ModelChangedEvent$Property;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 228
    sget-object p1, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "not sample view, ignore the model change event"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getOverlayVisibilityManager()Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IOverlayVisibilityManager;->areOverlaysVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 233
    sget-object p1, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "upsell view is not visible or gone, ignore the model change event"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-void

    .line 237
    :cond_3
    sget-object v0, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "overlay upsell is visible, Received %s, calling refreshActionbarDecoration"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/player/provider/UpsellPlayerProvider;->refreshUpsellPlayerView()V

    :cond_4
    return-void
.end method
