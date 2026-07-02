.class Lcom/amazon/kindle/cms/api/CMSServerWrapper;
.super Ljava/lang/Object;
.source "CMSServerWrapper.java"

# interfaces
.implements Lcom/amazon/kindle/cms/api/CMSServer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;,
        Lcom/amazon/kindle/cms/api/CMSServerWrapper$ServerConnectionCallback;
    }
.end annotation


# static fields
.field private static final NUM_INTERRUPTS_ALLOWED:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CMSServerWrapper"


# instance fields
.field private final m_connectedCondition:Ljava/util/concurrent/locks/Condition;

.field private final m_connectionCallback:Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;

.field private volatile m_connectionState:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "m_serverLock"
    .end annotation
.end field

.field private final m_context:Landroid/content/Context;

.field private volatile m_server:Lcom/amazon/kindle/cms/api/CMSServer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "m_serverLock"
    .end annotation
.end field

.field private final m_serverLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_context:Landroid/content/Context;

    .line 23
    new-instance p1, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ServerConnectionCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ServerConnectionCallback;-><init>(Lcom/amazon/kindle/cms/api/CMSServerWrapper;Lcom/amazon/kindle/cms/api/CMSServerWrapper$1;)V

    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_connectionCallback:Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;

    .line 24
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_serverLock:Ljava/util/concurrent/locks/Lock;

    .line 25
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_connectedCondition:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/cms/api/CMSServerWrapper;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_serverLock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/kindle/cms/api/CMSServerWrapper;Lcom/amazon/kindle/cms/api/CMSServer;)Lcom/amazon/kindle/cms/api/CMSServer;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_server:Lcom/amazon/kindle/cms/api/CMSServer;

    return-object p1
.end method

.method static synthetic access$302(Lcom/amazon/kindle/cms/api/CMSServerWrapper;Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;)Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_connectionState:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/amazon/kindle/cms/api/CMSServerWrapper;)Ljava/util/concurrent/locks/Condition;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_connectedCondition:Ljava/util/concurrent/locks/Condition;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private awaitConnection()V
    .locals 4

    .line 423
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_server:Lcom/amazon/kindle/cms/api/CMSServer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_server:Lcom/amazon/kindle/cms/api/CMSServer;

    if-nez v1, :cond_1

    .line 432
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_connectedCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 436
    sget-object v2, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->TAG:Ljava/lang/String;

    const-string v3, "Interrupted while waiting for CMS connection"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connected to CMS for package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kindle/cms/api/CMSApi;->instance(Landroid/content/Context;)Lcom/amazon/kindle/cms/api/CMSApi;

    move-result-object v0

    .line 418
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_connectionCallback:Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/cms/api/CMSApi;->connect(Lcom/amazon/kindle/cms/api/CMSApi$ConnectionCallback;)V

    return-void
.end method

.method private getServer()Lcom/amazon/kindle/cms/api/CMSServer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_server:Lcom/amazon/kindle/cms/api/CMSServer;

    if-nez v0, :cond_4

    .line 382
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_serverLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 385
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_server:Lcom/amazon/kindle/cms/api/CMSServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 407
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_serverLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 391
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_connectionState:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    sget-object v1, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;->DISCONNECTED:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_connectionState:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    sget-object v1, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;->ERROR:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    if-ne v0, v1, :cond_2

    .line 393
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->connect()V

    .line 396
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->awaitConnection()V

    .line 398
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_connectionState:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    sget-object v1, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;->DISCONNECTED:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_connectionState:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    sget-object v1, Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;->ERROR:Lcom/amazon/kindle/cms/api/CMSServerWrapper$ConnectionState;

    if-eq v0, v1, :cond_3

    .line 403
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_server:Lcom/amazon/kindle/cms/api/CMSServer;

    goto :goto_0

    .line 400
    :cond_3
    new-instance v0, Lcom/amazon/kindle/cms/api/CommunicationException;

    sget-object v1, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->NoConnection:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/cms/api/CommunicationException;-><init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 407
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_serverLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public addToCarousel(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->getServer()Lcom/amazon/kindle/cms/api/CMSServer;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/amazon/kindle/cms/api/CMSServer;->addToCarousel(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public beginBulkUpdate(Landroid/net/Uri;)Lcom/amazon/kindle/cms/api/Update;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->getServer()Lcom/amazon/kindle/cms/api/CMSServer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/cms/api/CMSServer;->beginBulkUpdate(Landroid/net/Uri;)Lcom/amazon/kindle/cms/api/Update;

    move-result-object p1

    return-object p1
.end method

.method public beginSync(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->getServer()Lcom/amazon/kindle/cms/api/CMSServer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/cms/api/CMSServer;->beginSync(Landroid/net/Uri;)V

    return-void
.end method

.method public beginUpdate(Landroid/net/Uri;)Lcom/amazon/kindle/cms/api/Update;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->getServer()Lcom/amazon/kindle/cms/api/CMSServer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/cms/api/CMSServer;->beginUpdate(Landroid/net/Uri;)Lcom/amazon/kindle/cms/api/Update;

    move-result-object p1

    return-object p1
.end method

.method public disconnect()V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_serverLock:Ljava/util/concurrent/locks/Lock;

    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_server:Lcom/amazon/kindle/cms/api/CMSServer;

    if-eqz v1, :cond_0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnecting from CMS for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_server:Lcom/amazon/kindle/cms/api/CMSServer;

    invoke-interface {v1}, Lcom/amazon/kindle/cms/api/CMSServer;->disconnect()V

    .line 38
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public endSync(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->getServer()Lcom/amazon/kindle/cms/api/CMSServer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/cms/api/CMSServer;->endSync(Landroid/net/Uri;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method public isSyncNeeded(Landroid/net/Uri;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->getServer()Lcom/amazon/kindle/cms/api/CMSServer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/cms/api/CMSServer;->isSyncNeeded(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public notifyFTUEEnd(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 225
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->getServer()Lcom/amazon/kindle/cms/api/CMSServer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/cms/api/CMSServer;->notifyFTUEEnd(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method public notifyFTUEStart(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 219
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->getServer()Lcom/amazon/kindle/cms/api/CMSServer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/cms/api/CMSServer;->notifyFTUEStart(Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method

.method public notifyThumbnailChange(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 213
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->getServer()Lcom/amazon/kindle/cms/api/CMSServer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/cms/api/CMSServer;->notifyThumbnailChange(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public postAsDelivery(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->getServer()Lcom/amazon/kindle/cms/api/CMSServer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/kindle/cms/api/CMSServer;->postAsDelivery(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public redirectVerbs(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 238
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->getServer()Lcom/amazon/kindle/cms/api/CMSServer;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/amazon/kindle/cms/api/CMSServer;->redirectVerbs(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public removeFromCarousel(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/CMSServerWrapper;->getServer()Lcom/amazon/kindle/cms/api/CMSServer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazon/kindle/cms/api/CMSServer;->removeFromCarousel(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)V

    return-void
.end method
