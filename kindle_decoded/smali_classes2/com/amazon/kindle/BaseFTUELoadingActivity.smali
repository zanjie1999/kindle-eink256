.class public Lcom/amazon/kindle/BaseFTUELoadingActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "BaseFTUELoadingActivity.java"


# static fields
.field protected static final COUNTER_NOT_READY:I = -0x2

.field protected static final FTUE_STORE_REF_TAG:Ljava/lang/String; = "kindle_kfa_ftue_redirect"

.field protected static final FTUE_SYNC_FINISHED_KEY:Ljava/lang/String; = "FTUESyncFinished"

.field protected static final HAS_SEEN_STORE_KEY:Ljava/lang/String; = "HasSeenStore"

.field public static final KEY_GOTO_HOME:Ljava/lang/String; = "goto_home"

.field public static final KEY_WAIT_CLOSE_SIGNAL:Ljava/lang/String; = "wait_close_signal"

.field protected static final STORE_CREDENTIALS_FETCHED_KEY:Ljava/lang/String; = "StoreCredentialsFetched"

.field private static final TAG:Ljava/lang/String;

.field private static USER_GUIDE_FILTER:Lcom/amazon/kindle/content/filter/SQLQueryFilter;


# instance fields
.field private counter:Lcom/amazon/kcp/library/AbstractUserItemsCounter;

.field protected finishCalled:Z

.field protected ftueSyncFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected hasSeenLibrary:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected hasSeenStore:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field protected statusText:Landroid/widget/TextView;

.field protected storeCredentialsFetched:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected syncHandler:Lcom/amazon/kindle/event/IEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/event/IEventHandler<",
            "Lcom/amazon/kcp/application/sync/internal/SyncType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/amazon/kindle/BaseFTUELoadingActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/amazon/kindle/BaseFTUELoadingActivity$1;

    invoke-direct {v0}, Lcom/amazon/kindle/BaseFTUELoadingActivity$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->USER_GUIDE_FILTER:Lcom/amazon/kindle/content/filter/SQLQueryFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 53
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/BaseFTUELoadingActivity;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 97
    new-instance v0, Lcom/amazon/kindle/BaseFTUELoadingActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/BaseFTUELoadingActivity$2;-><init>(Lcom/amazon/kindle/BaseFTUELoadingActivity;)V

    iput-object v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->syncHandler:Lcom/amazon/kindle/event/IEventHandler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getAllItemsCounter()Lcom/amazon/kcp/library/AbstractUserItemsCounter;
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->counter:Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/library/CounterManagerSingleton;->getInstance()Lcom/amazon/kcp/library/CounterManagerSingleton;

    move-result-object v0

    const-string v1, "ALL_ITEMS"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/CounterManagerSingleton;->hasCounter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-static {}, Lcom/amazon/kcp/library/CounterManagerSingleton;->getInstance()Lcom/amazon/kcp/library/CounterManagerSingleton;

    move-result-object v0

    .line 275
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/CounterManagerSingleton;->getCounter(Ljava/lang/String;)Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->counter:Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    .line 276
    invoke-virtual {v0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->getUserItemsCount()I

    .line 277
    iget-object v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->counter:Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    new-instance v1, Lcom/amazon/kindle/BaseFTUELoadingActivity$3;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/BaseFTUELoadingActivity$3;-><init>(Lcom/amazon/kindle/BaseFTUELoadingActivity;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->setUpdateCallback(Lcom/amazon/kindle/callback/ICallback;)V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->counter:Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    return-object v0
.end method


# virtual methods
.method protected checkAndHandleKindlePlayerReferral()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public finish()V
    .locals 0

    .line 166
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected getVisibleContentCount()I
    .locals 4

    .line 210
    invoke-direct {p0}, Lcom/amazon/kindle/BaseFTUELoadingActivity;->getAllItemsCounter()Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x2

    return v0

    .line 215
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->getUserItemsCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 218
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    .line 219
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    .line 220
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getId()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/BaseFTUELoadingActivity;->USER_GUIDE_FILTER:Lcom/amazon/kindle/content/filter/SQLQueryFilter;

    invoke-interface {v2, v1, v3}, Lcom/amazon/kindle/content/ILibraryService;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object v1

    .line 221
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 117
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 119
    sget v1, Lcom/amazon/kindle/librarymodule/R$attr;->ftue_loading_screen_layout:I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 120
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 121
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->hasSeenStore:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 126
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->ftueSyncFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->storeCredentialsFetched:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->hasSeenLibrary:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->ftueSyncFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v1, "FTUESyncFinished"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 132
    iget-object v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->storeCredentialsFetched:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v1, "StoreCredentialsFetched"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 133
    iget-object v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->hasSeenStore:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v1, "HasSeenStore"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 135
    :cond_0
    sget p1, Lcom/amazon/kindle/librarymodule/R$id;->ftue_loading_screen_status:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->statusText:Landroid/widget/TextView;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 158
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 159
    iget-object v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->ftueSyncFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "FTUESyncFinished"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    iget-object v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->storeCredentialsFetched:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "StoreCredentialsFetched"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 161
    iget-object v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->hasSeenStore:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "HasSeenStore"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 140
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onStart()V

    .line 141
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->syncHandler:Lcom/amazon/kindle/event/IEventHandler;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/sync/SynchronizationManager;->registerHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    .line 142
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 147
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onStop()V

    .line 149
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->syncHandler:Lcom/amazon/kindle/event/IEventHandler;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/sync/SynchronizationManager;->unregisterHandler(Lcom/amazon/kindle/event/IEventHandler;)V

    .line 150
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->counter:Lcom/amazon/kcp/library/AbstractUserItemsCounter;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/amazon/kcp/library/AbstractUserItemsCounter;->removeUpdateCallback()V

    :cond_0
    return-void
.end method

.method public onSyncMetadataParseEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 173
    iget-boolean v0, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->finishCalled:Z

    if-eqz v0, :cond_0

    .line 174
    sget-object p1, Lcom/amazon/kindle/BaseFTUELoadingActivity;->TAG:Ljava/lang/String;

    const-string v0, "FTUE sync finished but we\'re already finished."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 178
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;->getType()Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;->FTUE_METADATA_PARSE_END:Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->ftueSyncFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2

    .line 179
    iget-object p1, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->ftueSyncFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 181
    sget-object p1, Lcom/amazon/kindle/BaseFTUELoadingActivity;->TAG:Ljava/lang/String;

    const-string v0, "FTUE sync finished and user has no content. Checking for Kindle Player referral params..."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->hasSeenLibrary:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/amazon/kindle/BaseFTUELoadingActivity;->checkAndHandleKindlePlayerReferral()Z

    move-result p1

    if-nez p1, :cond_2

    .line 183
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryController;->getLibraryMode()Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;->NEWSSTAND:Lcom/amazon/kindle/krx/ui/ILibraryUIManager$LibraryMode;

    if-eq p1, v0, :cond_2

    .line 184
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/krx/metrics/MetricsData;

    sget-object v1, Lcom/amazon/kindle/BaseFTUELoadingActivity;->TAG:Ljava/lang/String;

    const-string v2, "AmazonKindle"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 185
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    const-string v1, "HandleFtueEmptyLibrary"

    .line 186
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    .line 184
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 188
    sget-object p1, Lcom/amazon/kindle/BaseFTUELoadingActivity;->TAG:Ljava/lang/String;

    const-string v0, "Kindle Player referral params not handled. Trying to start the startup listeners."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object p1, Lcom/amazon/kindle/krx/startup/StartupType;->FTUE_EMPTY_LIBRARY:Lcom/amazon/kindle/krx/startup/StartupType;

    invoke-static {p1}, Lcom/amazon/kindle/krx/startup/StartupHelper;->onStartupEvent(Lcom/amazon/kindle/krx/startup/StartupType;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 190
    sget-object p1, Lcom/amazon/kindle/BaseFTUELoadingActivity;->TAG:Ljava/lang/String;

    const-string v0, "Startup listener has been invoked and has consumed FTUE event."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/amazon/kindle/BaseFTUELoadingActivity;->finish()V

    goto :goto_0

    .line 193
    :cond_1
    sget-object p1, Lcom/amazon/kindle/BaseFTUELoadingActivity;->TAG:Ljava/lang/String;

    const-string v0, "Unable to find any listener for FTUE event, trying to show Store."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/amazon/kindle/BaseFTUELoadingActivity;->tryToShowStore()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected showLibrary()V
    .locals 2

    .line 246
    sget-object v0, Lcom/amazon/kindle/krx/startup/StartupType;->FTUE_NON_EMPTY_LIBRARY:Lcom/amazon/kindle/krx/startup/StartupType;

    invoke-static {v0}, Lcom/amazon/kindle/krx/startup/StartupHelper;->onStartupEvent(Lcom/amazon/kindle/krx/startup/StartupType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->TAG:Ljava/lang/String;

    const-string v1, "Startup listener has been invoked for non empty library and has consumed FTUE event."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->showLandingPage()V

    .line 251
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kindle/BaseFTUELoadingActivity;->finish()V

    return-void
.end method

.method protected tryToShowLibrary()Z
    .locals 3

    .line 234
    invoke-virtual {p0}, Lcom/amazon/kindle/BaseFTUELoadingActivity;->checkAndHandleKindlePlayerReferral()Z

    move-result v0

    .line 237
    iget-object v1, p0, Lcom/amazon/kindle/BaseFTUELoadingActivity;->hasSeenLibrary:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 238
    sget-object v1, Lcom/amazon/kindle/BaseFTUELoadingActivity;->TAG:Ljava/lang/String;

    const-string v2, "Show library since user has content"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/amazon/kindle/BaseFTUELoadingActivity;->showLibrary()V

    :cond_0
    return v0
.end method

.method protected tryToShowStore()V
    .locals 0

    return-void
.end method
