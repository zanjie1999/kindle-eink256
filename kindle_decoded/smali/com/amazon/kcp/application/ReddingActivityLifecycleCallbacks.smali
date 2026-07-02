.class public Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "ReddingActivityLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;
    }
.end annotation


# static fields
.field private static final ERL_KEY:Ljava/lang/String; = "EA_ERL"

.field private static final TAG:Ljava/lang/String;

.field private static final currentForegroundActivity:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private static firstCreatedActivitySimpleName:Ljava/lang/String;


# instance fields
.field private excludedActivitiesFromLifecycleCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private excludedActivitiesFromReadingSession:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private readingSessions:Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;

.field private runningActivities:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final thirdPartyAuthorizeHelper:Lcom/amazon/kcp/accounts/ThirdPartyAuthorizeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const-class v0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->TAG:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->currentForegroundActivity:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->excludedActivitiesFromReadingSession:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->excludedActivitiesFromLifecycleCount:Ljava/util/List;

    .line 84
    const-class v0, Lcom/amazon/kcp/accounts/ThirdPartyAuthorizeHelper;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/accounts/ThirdPartyAuthorizeHelper;

    iput-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->thirdPartyAuthorizeHelper:Lcom/amazon/kcp/accounts/ThirdPartyAuthorizeHelper;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->runningActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    new-instance v0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;-><init>(Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$1;)V

    iput-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->readingSessions:Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;

    .line 95
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->addExcludedActivitiesFromReadingSession(Landroid/content/Context;)V

    .line 96
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->addExcludedActivitiesFromLifecycleCount(Landroid/content/Context;)V

    .line 97
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class v0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;)Z
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/android/docviewer/KindleDoc;)I
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->getBookEndReadingLocation(Lcom/amazon/android/docviewer/KindleDoc;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addExcludedActivitiesFromLifecycleCount(Landroid/content/Context;)V
    .locals 6

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 122
    sget v0, Lcom/amazon/kindle/krl/R$array;->activity_lifecycle_count_exclusions:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 124
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 126
    :try_start_0
    iget-object v3, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->excludedActivitiesFromLifecycleCount:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 128
    sget-object v3, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class not found:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addExcludedActivitiesFromReadingSession(Landroid/content/Context;)V
    .locals 6

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 106
    sget v0, Lcom/amazon/kindle/krl/R$array;->reading_session_exclusions:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 108
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 110
    :try_start_0
    iget-object v3, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->excludedActivitiesFromReadingSession:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 112
    sget-object v3, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class not found:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getBookEndReadingLocation(Lcom/amazon/android/docviewer/KindleDoc;)I
    .locals 4

    .line 387
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 388
    invoke-static {v1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    .line 389
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p0

    const-string v2, "EA_ERL"

    invoke-interface {v1, p0, v2}, Lcom/amazon/kindle/content/ILibraryService;->getAdditionalMetadataForBook(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 390
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 394
    :catch_0
    sget-object v1, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid end reading location provided: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public static getCurrentForegroundActivity()Landroid/app/Activity;
    .locals 1

    .line 145
    sget-object v0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->currentForegroundActivity:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFirstCreatedActivity()Ljava/lang/String;
    .locals 1

    .line 157
    sget-object v0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->firstCreatedActivitySimpleName:Ljava/lang/String;

    return-object v0
.end method

.method private isExcludedActivityFromLifecycleCount(Landroid/app/Activity;)Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->excludedActivitiesFromLifecycleCount:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static isInMultiWindow(Landroid/app/Activity;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 380
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private onAppBackgrounded(Landroid/app/Activity;)V
    .locals 3

    .line 265
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->endAppSession()V

    .line 268
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->readingSessions:Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->onAppBackgrounded()V

    .line 269
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/event/ApplicationLifecycleEvent;

    sget-object v2, Lcom/amazon/kindle/event/ApplicationLifecycleEvent$EventType;->BACKGROUNDED:Lcom/amazon/kindle/event/ApplicationLifecycleEvent$EventType;

    invoke-direct {v1, p1, v2}, Lcom/amazon/kindle/event/ApplicationLifecycleEvent;-><init>(Landroid/app/Activity;Lcom/amazon/kindle/event/ApplicationLifecycleEvent$EventType;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 270
    invoke-static {}, Lcom/amazon/kcp/application/AppOpenFastMetricsHelper;->getInstance()Lcom/amazon/kcp/application/AppOpenFastMetrics;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/AppOpenFastMetrics;->onAppBackgrounded()V

    return-void
.end method

.method private onAppForegrounded(Landroid/app/Activity;)V
    .locals 3

    .line 239
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->startAppSession()V

    .line 242
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->readingSessions:Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->onAppForegrounded(Landroid/app/Activity;)V

    .line 243
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/event/ApplicationLifecycleEvent;

    sget-object v2, Lcom/amazon/kindle/event/ApplicationLifecycleEvent$EventType;->FOREGROUNDED:Lcom/amazon/kindle/event/ApplicationLifecycleEvent$EventType;

    invoke-direct {v1, p1, v2}, Lcom/amazon/kindle/event/ApplicationLifecycleEvent;-><init>(Landroid/app/Activity;Lcom/amazon/kindle/event/ApplicationLifecycleEvent$EventType;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method protected static recordBookCloseEvent()V
    .locals 2

    .line 277
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "Book"

    .line 280
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;)V

    .line 283
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->endReadingSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    :catch_0
    sget-object v0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->TAG:Ljava/lang/String;

    const-string v1, "Failed to record event recordBookCloseEvent"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected static recordBookOpenEvent(Landroid/app/Activity;)V
    .locals 1

    .line 290
    new-instance v0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$1;-><init>(Landroid/app/Activity;)V

    .line 376
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/amazon/foundation/internal/IThreadPoolManager;->submitSingleThreadTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    .line 161
    sget-object p2, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->firstCreatedActivitySimpleName:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->firstCreatedActivitySimpleName:Ljava/lang/String;

    .line 165
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->isExcludedActivityFromLifecycleCount(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 168
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onActivityCreated:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    instance-of p2, p1, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz p2, :cond_3

    .line 170
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const/4 v0, 0x0

    const-string/jumbo v1, "settingsChange"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_2

    .line 173
    iget-object p2, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->readingSessions:Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->startSession(Landroid/app/Activity;)V

    goto :goto_0

    .line 177
    :cond_2
    iget-object p2, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->readingSessions:Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->setCurrentActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 179
    :cond_3
    iget-object p2, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->excludedActivitiesFromReadingSession:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 181
    iget-object p1, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->readingSessions:Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->closeSession()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 186
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->isExcludedActivityFromLifecycleCount(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivityDestroyed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    instance-of v0, p1, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->readingSessions:Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->closeSession(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 197
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->isExcludedActivityFromLifecycleCount(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 200
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->currentForegroundActivity:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivityPaused:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 205
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->isExcludedActivityFromLifecycleCount(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 208
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->currentForegroundActivity:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivityResumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 213
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->isExcludedActivityFromLifecycleCount(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 216
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onActivitySaveInstanceState:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 220
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->isExcludedActivityFromLifecycleCount(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivityStarted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->runningActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 227
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->onAppForegrounded(Landroid/app/Activity;)V

    .line 229
    :cond_1
    instance-of v0, p1, Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->readingSessions:Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks$ReadingSessions;->startSession(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 247
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->isExcludedActivityFromLifecycleCount(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivityStopped:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->runningActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 254
    invoke-direct {p0, p1}, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->onAppBackgrounded(Landroid/app/Activity;)V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/application/ReddingActivityLifecycleCallbacks;->thirdPartyAuthorizeHelper:Lcom/amazon/kcp/accounts/ThirdPartyAuthorizeHelper;

    if-eqz v0, :cond_2

    .line 257
    invoke-interface {v0, p1}, Lcom/amazon/kcp/accounts/ThirdPartyAuthorizeHelper;->handleMAPActivityOnStop(Landroid/content/Context;)V

    :cond_2
    return-void
.end method
