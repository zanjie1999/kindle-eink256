.class public Lcom/amazon/kindle/speedreading/amplifier/NotableClipsProvider;
.super Ljava/lang/Object;
.source "NotableClipsProvider.java"


# instance fields
.field private book:Lcom/amazon/kindle/krx/content/IBook;

.field private dbHelper:Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;

.field private notableClips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/speedreading/amplifier/NotableClip;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private getDbHelper()Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/NotableClipsProvider;->dbHelper:Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;->getInstance()Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/amplifier/NotableClipsProvider;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;->acquire(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/NotableClipsProvider;->dbHelper:Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/NotableClipsProvider;->dbHelper:Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;

    return-object v0
.end method

.method private declared-synchronized loadClips()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/speedreading/amplifier/NotableClip;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 36
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/amplifier/NotableClipsProvider;->getDbHelper()Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 44
    :try_start_1
    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->getAllNotableClips()Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 52
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getClips()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/speedreading/amplifier/NotableClip;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/NotableClipsProvider;->notableClips:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/NotableClipsProvider;->notableClips:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/amplifier/NotableClipsProvider;->loadClips()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/NotableClipsProvider;->notableClips:Ljava/util/List;

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/NotableClipsProvider;->notableClips:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStopAmplify(Lcom/amazon/kindle/speedreading/amplifier/AmplifyStoppedEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/amplifier/NotableClipsProvider;->notableClips:Ljava/util/List;

    .line 113
    invoke-static {}, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;->getInstance()Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/amplifier/NotableClipsProvider;->dbHelper:Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;->release(Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;)V

    .line 114
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/amplifier/NotableClipsProvider;->dbHelper:Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;

    return-void
.end method
