.class public Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;
.super Ljava/lang/Object;
.source "AmplifySidecarDatabaseManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.kindle.speedreading.amplifier.sidecar.AmplifySidecarDatabaseManager"

.field private static databaseManagerInstance:Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;

.field private static final dbHelpers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private logger:Lcom/amazon/kindle/krx/logging/ILogger;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;->dbHelpers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;
    .locals 1

    .line 36
    sget-object v0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;->databaseManagerInstance:Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;

    invoke-direct {v0}, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;-><init>()V

    sput-object v0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;->databaseManagerInstance:Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;

    .line 40
    :cond_0
    sget-object v0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;->databaseManagerInstance:Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized acquire(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 61
    monitor-exit p0

    return-object p1

    .line 64
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;->acquire(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized acquire(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;
    .locals 2

    monitor-enter p0

    .line 78
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;->dbHelpers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getSidecarDirectoryForBook(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 83
    invoke-static {p2, p3, v0}, Lcom/amazon/kindle/speedreading/amplifier/sidecar/SidecarFileUtils;->getSidecarFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 84
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-nez p3, :cond_1

    .line 86
    iget-object p2, p0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    sget-object p3, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No database for book [bookId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 87
    monitor-exit p0

    return-object p1

    .line 91
    :cond_1
    :try_start_1
    iget-object p3, p0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object p3

    .line 92
    new-instance v0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/amazon/kindle/krx/reader/IPositionFactory;)V

    .line 94
    sget-object p2, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;->dbHelpers:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release(Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 119
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->getBookId()Ljava/lang/String;

    move-result-object v0

    .line 126
    sget-object v1, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifySidecarDatabaseManager;->dbHelpers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 121
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method
