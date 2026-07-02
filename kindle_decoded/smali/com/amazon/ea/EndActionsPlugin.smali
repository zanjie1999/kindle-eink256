.class public Lcom/amazon/ea/EndActionsPlugin;
.super Ljava/lang/Object;
.source "EndActionsPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;
.implements Lcom/amazon/readingactions/helpers/IChromeClickHandler;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    minApi = 0xe
    name = "endactions plugin"
    roles = {
        .enum Lcom/amazon/kindle/krx/plugin/Plugin$Role;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$Role;
    }
    scope = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Scope;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Scope;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/EndActionsPlugin$BeforeYouGoPanelProvider;,
        Lcom/amazon/ea/EndActionsPlugin$LibraryListener;,
        Lcom/amazon/ea/EndActionsPlugin$StartupTodoEventHandler;,
        Lcom/amazon/ea/EndActionsPlugin$StartupReaderEventHandler;,
        Lcom/amazon/ea/EndActionsPlugin$StartupPurchaseDownloadProgressListener;,
        Lcom/amazon/ea/EndActionsPlugin$StartupPurchaseLibraryEventListener;
    }
.end annotation


# static fields
.field private static final END_ACTIONS_COMPONENT_NAME:Ljava/lang/String; = "EndActionsComponent"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.EndActionsPlugin"

.field private static currentReadingActionsActivity:Landroid/app/Activity;

.field static final eaPluginContext:Lcom/amazon/ea/EndActionsPluginContext;

.field private static endActionsBottomSheetOpened:Z

.field static endActionsOpenedAutomatically:Z

.field private static volatile endActionsStartTime:J

.field private static erlProvider:Lcom/amazon/ea/ERLProvider;

.field public static final genreMetadataProvider:Lcom/amazon/startactions/plugin/StartActionsGenreMetadataProvider;

.field public static final isLayoutModelBottomSheet:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final layoutModel:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/amazon/ea/model/layout/LayoutModel;",
            ">;"
        }
    .end annotation
.end field

.field public static sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private static final uiThreadHandler:Landroid/os/Handler;


# instance fields
.field private accountChangeListener:Lcom/amazon/startactions/plugin/receiver/AccountChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/amazon/ea/EndActionsPlugin;->layoutModel:Ljava/util/concurrent/atomic/AtomicReference;

    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/amazon/ea/EndActionsPlugin;->isLayoutModelBottomSheet:Ljava/util/concurrent/atomic/AtomicReference;

    .line 72
    new-instance v0, Lcom/amazon/startactions/plugin/StartActionsGenreMetadataProvider;

    invoke-direct {v0}, Lcom/amazon/startactions/plugin/StartActionsGenreMetadataProvider;-><init>()V

    sput-object v0, Lcom/amazon/ea/EndActionsPlugin;->genreMetadataProvider:Lcom/amazon/startactions/plugin/StartActionsGenreMetadataProvider;

    .line 78
    new-instance v0, Lcom/amazon/ea/EndActionsPluginContext;

    invoke-direct {v0}, Lcom/amazon/ea/EndActionsPluginContext;-><init>()V

    sput-object v0, Lcom/amazon/ea/EndActionsPlugin;->eaPluginContext:Lcom/amazon/ea/EndActionsPluginContext;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/amazon/ea/EndActionsPlugin;->uiThreadHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 84
    sput-boolean v0, Lcom/amazon/ea/EndActionsPlugin;->endActionsOpenedAutomatically:Z

    .line 87
    sput-boolean v0, Lcom/amazon/ea/EndActionsPlugin;->endActionsBottomSheetOpened:Z

    const-wide/16 v0, 0x0

    .line 92
    sput-wide v0, Lcom/amazon/ea/EndActionsPlugin;->endActionsStartTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 63
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static clearCurrentActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 199
    sput-object v0, Lcom/amazon/ea/EndActionsPlugin;->currentReadingActionsActivity:Landroid/app/Activity;

    return-void
.end method

.method public static didEndActionsOpenAutomatically()Z
    .locals 1

    .line 428
    sget-boolean v0, Lcom/amazon/ea/EndActionsPlugin;->endActionsOpenedAutomatically:Z

    return v0
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 207
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->currentReadingActionsActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getErlProvider()Lcom/amazon/ea/ERLProvider;
    .locals 1

    .line 184
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->erlProvider:Lcom/amazon/ea/ERLProvider;

    return-object v0
.end method

.method public static getIsEndActionsBottomSheetOpened()Z
    .locals 1

    .line 502
    sget-boolean v0, Lcom/amazon/ea/EndActionsPlugin;->endActionsBottomSheetOpened:Z

    return v0
.end method

.method public static declared-synchronized getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;
    .locals 2

    const-class v0, Lcom/amazon/ea/EndActionsPlugin;

    monitor-enter v0

    .line 216
    :try_start_0
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->eaPluginContext:Lcom/amazon/ea/EndActionsPluginContext;

    invoke-virtual {v1}, Lcom/amazon/ea/EndActionsPluginContext;->getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static hasErlForCurrentBook()Z
    .locals 1

    .line 223
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->eaPluginContext:Lcom/amazon/ea/EndActionsPluginContext;

    invoke-virtual {v0}, Lcom/amazon/ea/EndActionsPluginContext;->getReaderEventHandler()Lcom/amazon/ea/ReaderEventHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/ea/ReaderEventHandler;->erl:Lcom/amazon/kindle/krx/reader/IPosition;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hasSidecarForCurrentBook()Z
    .locals 1

    .line 230
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->eaPluginContext:Lcom/amazon/ea/EndActionsPluginContext;

    invoke-virtual {v0}, Lcom/amazon/ea/EndActionsPluginContext;->getReaderEventHandler()Lcom/amazon/ea/ReaderEventHandler;

    move-result-object v0

    iget-boolean v0, v0, Lcom/amazon/ea/ReaderEventHandler;->hasSidecar:Z

    return v0
.end method

.method public static postOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 276
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->uiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static reprocessSidecar()V
    .locals 4

    .line 238
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-nez v0, :cond_1

    .line 239
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sdk has not been set, will not refresh EndActions layout model"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 245
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_3

    .line 247
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "no book open, will not refresh EndActions layout model"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 253
    :cond_3
    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 254
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 255
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "book is not supported for end actions, will not refresh EndActions layout model. [contentType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {v1, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    .line 262
    :cond_5
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 263
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "reprocessing sidecar"

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_6
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->eaPluginContext:Lcom/amazon/ea/EndActionsPluginContext;

    invoke-virtual {v1}, Lcom/amazon/ea/EndActionsPluginContext;->getReaderEventHandler()Lcom/amazon/ea/ReaderEventHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/amazon/ea/ReaderEventHandler;->processSidecar(Lcom/amazon/kindle/krx/content/IBook;Z)V

    return-void
.end method

.method public static setCurrentActivity(Landroid/app/Activity;)V
    .locals 0

    .line 192
    sput-object p0, Lcom/amazon/ea/EndActionsPlugin;->currentReadingActionsActivity:Landroid/app/Activity;

    return-void
.end method

.method public static setEndActionsStartTime(J)V
    .locals 0

    .line 432
    sput-wide p0, Lcom/amazon/ea/EndActionsPlugin;->endActionsStartTime:J

    return-void
.end method

.method static setIsEndActionsBottomSheetOpened(Z)V
    .locals 0

    .line 498
    sput-boolean p0, Lcom/amazon/ea/EndActionsPlugin;->endActionsBottomSheetOpened:Z

    return-void
.end method


# virtual methods
.method public canDisplayChromeOption(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 0

    .line 494
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->layoutModel:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public canRegisterChromeClick(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;)Z
    .locals 0

    .line 483
    sget-object p1, Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;->OPEN_BEFORE_YOU_GO:Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleChromeClick(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;)Z
    .locals 1

    .line 463
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;->OPEN_BEFORE_YOU_GO:Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

    if-ne p3, p1, :cond_0

    sget-object p1, Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;->OVERFLOW_MENU:Lcom/amazon/readingactions/helpers/IChromeClickHandler$EntryPoint;

    if-ne p2, p1, :cond_0

    .line 465
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->eaPluginContext:Lcom/amazon/ea/EndActionsPluginContext;

    invoke-virtual {p1}, Lcom/amazon/ea/EndActionsPluginContext;->getReaderEventHandler()Lcom/amazon/ea/ReaderEventHandler;

    move-result-object p1

    sget-object p2, Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;->OVERFLOW_MENU:Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;

    invoke-virtual {p1, p2}, Lcom/amazon/ea/ReaderEventHandler;->launchEndActions(Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 5

    .line 104
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->TAG:Ljava/lang/String;

    const-string v1, "Initializing EA Plugin"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "The reader SDK is required"

    .line 105
    invoke-static {p1, v0}, Lcom/amazon/ea/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    sput-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 110
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/ea/EndActionsPlugin$StartupPurchaseLibraryEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amazon/ea/EndActionsPlugin$StartupPurchaseLibraryEventListener;-><init>(Lcom/amazon/ea/EndActionsPlugin;Lcom/amazon/ea/EndActionsPlugin$1;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->registerLibraryEventListener(Lcom/amazon/kindle/krx/library/ILibraryEventListener;)V

    .line 111
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/ea/EndActionsPlugin$StartupPurchaseDownloadProgressListener;

    invoke-direct {v1, p0}, Lcom/amazon/ea/EndActionsPlugin$StartupPurchaseDownloadProgressListener;-><init>(Lcom/amazon/ea/EndActionsPlugin;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 114
    invoke-static {}, Lcom/amazon/ea/debug/AnyActionsDebugSettings;->initDebugValues()V

    .line 115
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/ea/debug/AnyActionsDebugProvider;

    invoke-direct {v1}, Lcom/amazon/ea/debug/AnyActionsDebugProvider;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->registerDebugMenuProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 117
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/logging/Log;->setLogger(Lcom/amazon/kindle/krx/logging/ILogger;)V

    .line 120
    invoke-static {}, Lcom/amazon/ea/metrics/M;->closeSavedSession()V

    .line 125
    invoke-static {}, Lcom/amazon/ea/metrics/M;->initSession()V

    .line 128
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->inDemoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "retail demo mode detected, exiting"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 135
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBookPurchaseBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->TAG:Ljava/lang/String;

    const-string v0, "Purchasing is blocked, suppressing start and end actions"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 141
    :cond_1
    new-instance v0, Lcom/amazon/ea/ERLProvider;

    invoke-direct {v0}, Lcom/amazon/ea/ERLProvider;-><init>()V

    sput-object v0, Lcom/amazon/ea/EndActionsPlugin;->erlProvider:Lcom/amazon/ea/ERLProvider;

    .line 142
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->erlProvider:Lcom/amazon/ea/ERLProvider;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->registerAdditionalMetadataProvider(Lcom/amazon/kindle/krx/library/ILibraryManager$IAdditionalMetadataProvider;)V

    .line 143
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMessagingManager()Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/ea/EndActionsPlugin$StartupTodoEventHandler;

    invoke-direct {v1, p0, v2}, Lcom/amazon/ea/EndActionsPlugin$StartupTodoEventHandler;-><init>(Lcom/amazon/ea/EndActionsPlugin;Lcom/amazon/ea/EndActionsPlugin$1;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->register(Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;)V

    .line 147
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/amazon/ea/LocaleChangeReceiver;

    invoke-direct {v1}, Lcom/amazon/ea/LocaleChangeReceiver;-><init>()V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/amazon/ea/CorPfmChangedListener;

    invoke-direct {v1}, Lcom/amazon/ea/CorPfmChangedListener;-><init>()V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.amazon.dcp.sso.broadcast.CORPFMHasChanged"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    new-instance v0, Lcom/amazon/startactions/plugin/receiver/AccountChangeListener;

    invoke-direct {v0}, Lcom/amazon/startactions/plugin/receiver/AccountChangeListener;-><init>()V

    iput-object v0, p0, Lcom/amazon/ea/EndActionsPlugin;->accountChangeListener:Lcom/amazon/startactions/plugin/receiver/AccountChangeListener;

    .line 153
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/EndActionsPlugin;->accountChangeListener:Lcom/amazon/startactions/plugin/receiver/AccountChangeListener;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 156
    invoke-static {}, Lcom/amazon/ea/util/ChildAccountUtil;->isChildAccount()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->TAG:Ljava/lang/String;

    const-string v0, "Exiting - child account detected"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 162
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->genreMetadataProvider:Lcom/amazon/startactions/plugin/StartActionsGenreMetadataProvider;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->registerAdditionalMetadataProvider(Lcom/amazon/kindle/krx/library/ILibraryManager$IAdditionalMetadataProvider;)V

    .line 165
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/ea/EndActionsPlugin$StartupReaderEventHandler;

    invoke-direct {v1, p0, v2}, Lcom/amazon/ea/EndActionsPlugin$StartupReaderEventHandler;-><init>(Lcom/amazon/ea/EndActionsPlugin;Lcom/amazon/ea/EndActionsPlugin$1;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    .line 166
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/ea/ReaderActivityLifecycleListener;

    invoke-direct {v1}, Lcom/amazon/ea/ReaderActivityLifecycleListener;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerActivityLifecycleListener(Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;)V

    .line 167
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/ea/EndActionsPlugin$LibraryListener;

    invoke-direct {v1, p0, v2}, Lcom/amazon/ea/EndActionsPlugin$LibraryListener;-><init>(Lcom/amazon/ea/EndActionsPlugin;Lcom/amazon/ea/EndActionsPlugin$1;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->registerLibraryEventListener(Lcom/amazon/kindle/krx/library/ILibraryEventListener;)V

    .line 168
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/ea/provider/BeforeYouGoWidgetItemProvider;

    invoke-direct {v1, p1, p0}, Lcom/amazon/ea/provider/BeforeYouGoWidgetItemProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/readingactions/helpers/IChromeClickHandler;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerActionBarWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    goto :goto_0

    .line 171
    :cond_3
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/ea/EndActionsPlugin$BeforeYouGoPanelProvider;

    invoke-direct {v1, p0, v2}, Lcom/amazon/ea/EndActionsPlugin$BeforeYouGoPanelProvider;-><init>(Lcom/amazon/ea/EndActionsPlugin;Lcom/amazon/ea/EndActionsPlugin$1;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerPanelProvider(Lcom/amazon/kindle/krx/ui/panels/IPanelContentProvider;)V

    .line 175
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/startactions/metrics/SessionManager;->setContext(Landroid/content/Context;)V

    .line 176
    new-instance v0, Lcom/amazon/startactions/plugin/StartActionsController;

    new-instance v1, Lcom/amazon/readingactions/helpers/SidecarRetriever;

    invoke-direct {v1}, Lcom/amazon/readingactions/helpers/SidecarRetriever;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/amazon/startactions/plugin/StartActionsController;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/readingactions/helpers/ISidecarRetriever;)V

    .line 177
    invoke-virtual {v0}, Lcom/amazon/startactions/plugin/StartActionsController;->initialize()V

    return-void
.end method
