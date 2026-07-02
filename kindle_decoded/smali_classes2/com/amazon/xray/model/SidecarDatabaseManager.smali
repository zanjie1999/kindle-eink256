.class public Lcom/amazon/xray/model/SidecarDatabaseManager;
.super Ljava/lang/Object;
.source "SidecarDatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/model/SidecarDatabaseManager$SidecarOnChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static final adapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/xray/model/SidecarDatabaseAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static final sidecarOnChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/SidecarDatabaseManager$SidecarOnChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/xray/model/SidecarDatabaseManager;->adapters:Ljava/util/Map;

    .line 28
    const-class v0, Lcom/amazon/xray/model/SidecarDatabaseManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/xray/model/SidecarDatabaseManager;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazon/xray/model/SidecarDatabaseManager;->sidecarOnChangeListeners:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized acquire(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/xray/model/SidecarDatabaseAdapter;
    .locals 3

    const-class v0, Lcom/amazon/xray/model/SidecarDatabaseManager;

    monitor-enter v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 54
    monitor-exit v0

    return-object p0

    .line 57
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/amazon/xray/model/SidecarDatabaseManager;->acquire(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized acquire(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/xray/model/SidecarDatabaseAdapter;
    .locals 6

    const-class v0, Lcom/amazon/xray/model/SidecarDatabaseManager;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v1, Lcom/amazon/xray/model/SidecarDatabaseManager;->adapters:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v1}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 80
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/amazon/xray/model/util/SidecarFileUtil;->getSidecarFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 82
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 83
    sget-object p1, Lcom/amazon/xray/model/SidecarDatabaseManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No database for book [bookId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_1
    monitor-exit v0

    return-object v3

    .line 89
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    sget-object v2, Lcom/amazon/xray/model/SidecarDatabaseManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening database [bookId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_3
    new-instance v2, Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :try_start_2
    invoke-virtual {v2}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    :try_start_3
    sget-object p1, Lcom/amazon/xray/model/SidecarDatabaseManager;->adapters:Ljava/util/Map;

    invoke-interface {p1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 105
    :cond_4
    iget p1, v1, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->referenceCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->referenceCount:I

    .line 106
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 107
    sget-object p1, Lcom/amazon/xray/model/SidecarDatabaseManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquired database [bookId="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", adapter="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", referenceCount="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v1, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->referenceCount:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    :cond_5
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception p0

    .line 98
    :try_start_4
    sget-object p1, Lcom/amazon/xray/model/SidecarDatabaseManager;->TAG:Ljava/lang/String;

    const-string p2, "Unable to open database"

    invoke-static {p1, p2, p0}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 99
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static addSidecarOnChangeListener(Lcom/amazon/xray/model/SidecarDatabaseManager$SidecarOnChangeListener;)V
    .locals 2

    .line 254
    sget-object v0, Lcom/amazon/xray/model/SidecarDatabaseManager;->sidecarOnChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 255
    :try_start_0
    sget-object v1, Lcom/amazon/xray/model/SidecarDatabaseManager;->sidecarOnChangeListeners:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 152
    const-class v0, Lcom/amazon/xray/model/SidecarDatabaseManager;

    monitor-enter v0

    .line 153
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/amazon/xray/model/util/SidecarFileUtil;->getSidecarFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 155
    monitor-exit v0

    return-void

    .line 158
    :cond_0
    invoke-static {p0}, Lcom/amazon/xray/model/SidecarDatabaseManager;->forceClose(Ljava/lang/String;)V

    .line 160
    invoke-static {p1}, Lcom/amazon/xray/model/util/SQLiteDatabaseUtil;->deleteDatabase(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 161
    sget-object p0, Lcom/amazon/xray/model/SidecarDatabaseManager;->TAG:Ljava/lang/String;

    const-string p1, "Unable to delete sidecar"

    invoke-static {p0, p1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    monitor-exit v0

    return-void

    .line 164
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-static {p0}, Lcom/amazon/xray/model/SidecarDatabaseManager;->notifyListeners(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 164
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static declared-synchronized forceClose(Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/amazon/xray/model/SidecarDatabaseManager;

    monitor-enter v0

    .line 224
    :try_start_0
    sget-object v1, Lcom/amazon/xray/model/SidecarDatabaseManager;->adapters:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    if-eqz v1, :cond_1

    .line 226
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    sget-object v2, Lcom/amazon/xray/model/SidecarDatabaseManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Forcing database close [bookId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", adapter="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", referenceCount="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v1, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->referenceCount:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_0
    invoke-virtual {v1}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static notifyListeners(Ljava/lang/String;)V
    .locals 3

    .line 242
    sget-object v0, Lcom/amazon/xray/model/SidecarDatabaseManager;->sidecarOnChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 243
    :try_start_0
    sget-object v1, Lcom/amazon/xray/model/SidecarDatabaseManager;->sidecarOnChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/xray/model/SidecarDatabaseManager$SidecarOnChangeListener;

    .line 244
    invoke-interface {v2, p0}, Lcom/amazon/xray/model/SidecarDatabaseManager$SidecarOnChangeListener;->onSidecarChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static declared-synchronized release(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V
    .locals 5

    const-class v0, Lcom/amazon/xray/model/SidecarDatabaseManager;

    monitor-enter v0

    if-eqz p0, :cond_4

    .line 120
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->getBookId()Ljava/lang/String;

    move-result-object v1

    .line 126
    iget v2, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->referenceCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->referenceCount:I

    .line 127
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    sget-object v2, Lcom/amazon/xray/model/SidecarDatabaseManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Released database [bookId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", adapter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", referenceCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->referenceCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_1
    iget v2, p0, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->referenceCount:I

    if-nez v2, :cond_3

    .line 133
    invoke-static {}, Lcom/amazon/xray/plugin/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    sget-object v2, Lcom/amazon/xray/model/SidecarDatabaseManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Closing database [bookId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", adapter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/xray/plugin/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_2
    sget-object v2, Lcom/amazon/xray/model/SidecarDatabaseManager;->adapters:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {p0}, Lcom/amazon/xray/model/SidecarDatabaseAdapter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 121
    :cond_4
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static removeSidecarOnChangeListener(Lcom/amazon/xray/model/SidecarDatabaseManager$SidecarOnChangeListener;)V
    .locals 2

    .line 264
    sget-object v0, Lcom/amazon/xray/model/SidecarDatabaseManager;->sidecarOnChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 265
    :try_start_0
    sget-object v1, Lcom/amazon/xray/model/SidecarDatabaseManager;->sidecarOnChangeListeners:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 266
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static transferFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 4

    .line 183
    const-class v0, Lcom/amazon/xray/model/SidecarDatabaseManager;

    monitor-enter v0

    .line 184
    :try_start_0
    invoke-static {p0}, Lcom/amazon/xray/model/SidecarDatabaseManager;->forceClose(Ljava/lang/String;)V

    .line 187
    invoke-static {p0, p1, p2}, Lcom/amazon/xray/model/util/SidecarFileUtil;->getSidecarFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-static {v1}, Lcom/amazon/xray/model/util/SQLiteDatabaseUtil;->deleteDatabase(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    sget-object v2, Lcom/amazon/xray/model/SidecarDatabaseManager;->TAG:Ljava/lang/String;

    const-string v3, "Unable to delete existing sidecar"

    invoke-static {v2, v3}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    invoke-virtual {p3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 196
    sget-object p0, Lcom/amazon/xray/model/SidecarDatabaseManager;->TAG:Ljava/lang/String;

    const-string p1, "Unable to transfer sidecar"

    invoke-static {p0, p1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    monitor-exit v0

    return-void

    .line 199
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-static {p0, p1, p2}, Lcom/amazon/xray/model/util/SidecarFileUtil;->getSidecarFileSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 203
    new-instance v0, Lcom/amazon/xray/metrics/Metric;

    const-string v1, "XraySidecarDownload"

    invoke-direct {v0, v1}, Lcom/amazon/xray/metrics/Metric;-><init>(Ljava/lang/String;)V

    const-string v1, "SidecarSizeInBytes"

    .line 204
    invoke-virtual {v0, v1, p3}, Lcom/amazon/xray/metrics/Metric;->setCount(Ljava/lang/String;I)V

    .line 205
    invoke-virtual {v0}, Lcom/amazon/xray/metrics/Metric;->close()V

    .line 210
    invoke-static {p0, p1, p2}, Lcom/amazon/xray/model/SidecarDatabaseManager;->acquire(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/xray/model/SidecarDatabaseAdapter;

    move-result-object p1

    .line 211
    invoke-static {p0}, Lcom/amazon/xray/model/SidecarDatabaseManager;->notifyListeners(Ljava/lang/String;)V

    .line 212
    invoke-static {p1}, Lcom/amazon/xray/model/SidecarDatabaseManager;->release(Lcom/amazon/xray/model/SidecarDatabaseAdapter;)V

    return-void

    :catchall_0
    move-exception p0

    .line 199
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
