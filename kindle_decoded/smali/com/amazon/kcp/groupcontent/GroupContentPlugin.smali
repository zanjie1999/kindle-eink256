.class public Lcom/amazon/kcp/groupcontent/GroupContentPlugin;
.super Ljava/lang/Object;
.source "GroupContentPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    name = "Group Content Plugin"
    target = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Target;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Target;
.end annotation


# static fields
.field private static final LIBRARY_REFRESH_EVENT:Ljava/lang/String; = "LibraryRefresh"

.field private static final LIBRARY_REFRESH_JP_EVENT:Ljava/lang/String; = "LibraryRefreshJP"

.field private static final MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;


# instance fields
.field private threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

.field private tutorialProvider:Lcom/amazon/kcp/groupcontent/GroupContentTutorialProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/groupcontent/GroupContentPlugin;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/groupcontent/GroupContentPlugin;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    .line 47
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 48
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Lcom/amazon/kcp/groupcontent/GroupContentTutorialProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/groupcontent/GroupContentTutorialProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/groupcontent/GroupContentPlugin;->tutorialProvider:Lcom/amazon/kcp/groupcontent/GroupContentTutorialProvider;

    .line 55
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThreadPoolManager()Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/groupcontent/GroupContentPlugin;->threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    .line 56
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getTutorialManager()Lcom/amazon/kindle/krx/tutorial/ITutorialManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/groupcontent/GroupContentPlugin;->tutorialProvider:Lcom/amazon/kcp/groupcontent/GroupContentTutorialProvider;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/tutorial/ITutorialManager;->registerTutorialProvider(Lcom/amazon/kindle/krx/tutorial/TutorialProvider;)V

    .line 58
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLibraryRefresh(Lcom/amazon/kindle/event/LibraryRefreshEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 79
    iget-object p1, p0, Lcom/amazon/kcp/groupcontent/GroupContentPlugin;->tutorialProvider:Lcom/amazon/kcp/groupcontent/GroupContentTutorialProvider;

    if-eqz p1, :cond_1

    .line 80
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 81
    invoke-static {p1, v0}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object p1

    .line 83
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    new-instance p1, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    const-string v0, "LibraryRefreshJP"

    invoke-direct {p1, v0}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->build()Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

    move-result-object p1

    goto :goto_0

    .line 86
    :cond_0
    new-instance p1, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;

    const-string v0, "LibraryRefresh"

    invoke-direct {p1, v0}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/tutorial/events/TutorialEventBuilder;->build()Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;

    move-result-object p1

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/groupcontent/GroupContentPlugin;->tutorialProvider:Lcom/amazon/kcp/groupcontent/GroupContentTutorialProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/tutorial/TutorialProvider;->publishEvent(Lcom/amazon/kindle/krx/tutorial/events/ITutorialEvent;)V

    :cond_1
    return-void
.end method

.method public onSyncFinished(Lcom/amazon/kindle/sync/SynchronizationManagerEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 94
    invoke-virtual {p1}, Lcom/amazon/kindle/sync/SynchronizationManagerEvent;->getType()Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;->SYNC_FINISHED:Lcom/amazon/kindle/sync/SynchronizationManagerEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 95
    iget-object p1, p0, Lcom/amazon/kcp/groupcontent/GroupContentPlugin;->threadPoolManager:Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    new-instance v0, Lcom/amazon/kcp/groupcontent/GroupContentPlugin$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/groupcontent/GroupContentPlugin$1;-><init>(Lcom/amazon/kcp/groupcontent/GroupContentPlugin;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSyncMetadataEvent(Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 63
    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent;->addsVisibleGroups()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->isSeriesGroupingInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    .line 66
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setSeriesContentGrouped(Z)V

    .line 68
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setSeriesGroupingStateInitialized(Z)V

    .line 69
    sget-object p1, Lcom/amazon/kcp/groupcontent/GroupContentPlugin;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/kcp/groupcontent/GroupContentSettingChangeEvent;

    invoke-direct {v0}, Lcom/amazon/kcp/groupcontent/GroupContentSettingChangeEvent;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_0
    return-void
.end method
