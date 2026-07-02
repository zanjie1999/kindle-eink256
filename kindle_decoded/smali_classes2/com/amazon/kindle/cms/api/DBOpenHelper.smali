.class final Lcom/amazon/kindle/cms/api/DBOpenHelper;
.super Ljava/lang/Object;
.source "DBOpenHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "cmsapi.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CmsApi.DBOpenHelper"


# instance fields
.field private final m_context:Landroid/content/Context;

.field private m_db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/kindle/cms/api/DBOpenHelper;->m_context:Landroid/content/Context;

    return-void
.end method

.method private final declared-synchronized close()V
    .locals 5

    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/DBOpenHelper;->m_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 133
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/DBOpenHelper;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/DBOpenHelper;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :cond_0
    :goto_0
    :try_start_2
    iput-object v0, p0, Lcom/amazon/kindle/cms/api/DBOpenHelper;->m_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "CmsApi.DBOpenHelper"

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attempt to close database failed - dereferencing object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 145
    :goto_1
    :try_start_4
    iput-object v0, p0, Lcom/amazon/kindle/cms/api/DBOpenHelper;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 148
    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method final declared-synchronized deleteDatabase()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "CmsApi.DBOpenHelper"

    const-string v1, "deleting the database file: cmsapi.db"

    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :try_start_1
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/DBOpenHelper;->close()V

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/DBOpenHelper;->m_context:Landroid/content/Context;

    const-string v1, "cmsapi.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "CmsApi.DBOpenHelper"

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    :try_start_0
    const-string v0, "CREATE TABLE sync_hashes(source_id TEXT PRIMARY KEY, hash_state TEXT NOT NULL);"

    .line 29
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "CmsApi.DBOpenHelper"

    const-string/jumbo v1, "unable to create db"

    .line 36
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    throw p1
.end method

.method onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method final declared-synchronized openOrCreateDatabase(Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 7

    monitor-enter p0

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/DBOpenHelper;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/DBOpenHelper;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iput-object v1, p0, Lcom/amazon/kindle/cms/api/DBOpenHelper;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/DBOpenHelper;->m_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    monitor-exit p0

    return-object p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 64
    :try_start_1
    iget-object v3, p0, Lcom/amazon/kindle/cms/api/DBOpenHelper;->m_context:Landroid/content/Context;

    const-string v4, "cmsapi.db"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 65
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 67
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "CmsApi.DBOpenHelper"

    .line 69
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_2
    iget-object v3, p0, Lcom/amazon/kindle/cms/api/DBOpenHelper;->m_context:Landroid/content/Context;

    const-string v4, "cmsapi.db"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const v4, 0x10000010

    invoke-static {v3, v1, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/cms/api/DBOpenHelper;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    .line 78
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result p1

    .line 80
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/DBOpenHelper;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez p1, :cond_3

    .line 85
    :try_start_2
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/DBOpenHelper;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/cms/api/DBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    if-le v2, p1, :cond_4

    .line 89
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/DBOpenHelper;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, v1, p1, v2}, Lcom/amazon/kindle/cms/api/DBOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 92
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/DBOpenHelper;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 93
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/DBOpenHelper;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    :try_start_3
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/DBOpenHelper;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 101
    :try_start_4
    iget-object p1, p0, Lcom/amazon/kindle/cms/api/DBOpenHelper;->m_db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 107
    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    const/4 v0, 0x1

    goto :goto_3

    .line 97
    :goto_2
    :try_start_5
    iget-object v1, p0, Lcom/amazon/kindle/cms/api/DBOpenHelper;->m_db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    :goto_3
    if-nez v0, :cond_5

    .line 107
    :try_start_6
    invoke-direct {p0}, Lcom/amazon/kindle/cms/api/DBOpenHelper;->close()V

    :cond_5
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method
