.class public final Lcom/audible/hushpuppy/controller/SamplePlaybackController;
.super Ljava/lang/Object;
.source "SamplePlaybackController.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderNavigationListenerV2;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

.field private final eventBus:Lde/greenrobot/event/EventBus;

.field private final huspuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/controller/SamplePlaybackController;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/controller/SamplePlaybackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lde/greenrobot/event/EventBus;Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/SamplePlaybackController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    .line 58
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/SamplePlaybackController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 60
    iput-object p2, p0, Lcom/audible/hushpuppy/controller/SamplePlaybackController;->eventBus:Lde/greenrobot/event/EventBus;

    .line 61
    invoke-virtual {p2, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 63
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/SamplePlaybackController;->huspuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    return-void
.end method


# virtual methods
.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 76
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/SamplePlaybackController;->huspuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->hasSampleAudiobook()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 77
    sget-object p1, Lcom/audible/hushpuppy/controller/SamplePlaybackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Book is Closed, stopping sample playback"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/SamplePlaybackController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->stop()V

    :cond_0
    return-void
.end method

.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    return-void
.end method

.method public onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onBeforeNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/common/ReaderActivityForegroundStateChangeEvent;)V
    .locals 3

    .line 124
    sget-object v0, Lcom/audible/hushpuppy/controller/SamplePlaybackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handle ReaderActivityForegroundStateChangeEvent for app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 126
    sget-object v0, Lcom/audible/hushpuppy/common/event/common/ReaderActivityForegroundStateChangeEvent;->BACKGROUND:Lcom/audible/hushpuppy/common/event/common/ReaderActivityForegroundStateChangeEvent;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/SamplePlaybackController;->huspuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->hasSampleAudiobook()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/audible/hushpuppy/controller/SamplePlaybackController;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/hushpuppy/common/system/AndroidSystemUtils;->isOnLockScreen(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 129
    sget-object p1, Lcom/audible/hushpuppy/controller/SamplePlaybackController;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Reader activity is Background and not in lock screen, stopping sample playback "

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/SamplePlaybackController;->audibleService:Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;

    invoke-interface {p1}, Lcom/audible/hushpuppy/controller/audible/service/IAudibleService;->stop()V

    :cond_1
    return-void
.end method

.method public onNavigationFailed(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onPageChange(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    return-void
.end method

.method public onPageFlowChanged(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    return-void
.end method

.method public onPageTurnAborted(Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;)V
    .locals 0

    return-void
.end method
