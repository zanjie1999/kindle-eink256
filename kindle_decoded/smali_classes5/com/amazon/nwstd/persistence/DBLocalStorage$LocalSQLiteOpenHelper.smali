.class public Lcom/amazon/nwstd/persistence/DBLocalStorage$LocalSQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBLocalStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/persistence/DBLocalStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LocalSQLiteOpenHelper"
.end annotation


# instance fields
.field mHandler:Lcom/amazon/nwstd/persistence/DBLocalStorage;

.field final synthetic this$0:Lcom/amazon/nwstd/persistence/DBLocalStorage;


# direct methods
.method public constructor <init>(Lcom/amazon/nwstd/persistence/DBLocalStorage;Landroid/content/Context;Lcom/amazon/nwstd/persistence/DBLocalStorage;)V
    .locals 2

    .line 100
    iput-object p1, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage$LocalSQLiteOpenHelper;->this$0:Lcom/amazon/nwstd/persistence/DBLocalStorage;

    .line 101
    invoke-virtual {p3}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabaseName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabaseVersion()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, p1, v1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 102
    iput-object p3, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage$LocalSQLiteOpenHelper;->mHandler:Lcom/amazon/nwstd/persistence/DBLocalStorage;

    return-void
.end method

.method private executeStatements(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, ""

    .line 155
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 156
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v0, p2, v2

    .line 158
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    .line 162
    :try_start_1
    invoke-static {}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->access$000()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQL script error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / SQL = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 163
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 166
    throw p2
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage$LocalSQLiteOpenHelper;->this$0:Lcom/amazon/nwstd/persistence/DBLocalStorage;

    invoke-virtual {v0}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getCreateTablesStatements()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/nwstd/persistence/DBLocalStorage$LocalSQLiteOpenHelper;->executeStatements(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 110
    invoke-static {}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->access$000()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage$LocalSQLiteOpenHelper;->mHandler:Lcom/amazon/nwstd/persistence/DBLocalStorage;

    invoke-virtual {v3}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Create table failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x10

    if-le p2, p3, :cond_1

    .line 119
    invoke-static {}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage$LocalSQLiteOpenHelper;->mHandler:Lcom/amazon/nwstd/persistence/DBLocalStorage;

    invoke-virtual {v2}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Migration failed : cannot downgrade from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " to version "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    if-gtz p2, :cond_2

    .line 124
    invoke-static {}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage$LocalSQLiteOpenHelper;->mHandler:Lcom/amazon/nwstd/persistence/DBLocalStorage;

    invoke-virtual {v2}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": invalid table versions : old = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], new = ["

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_2
    move v1, p2

    :goto_0
    if-ge v1, p3, :cond_3

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage$LocalSQLiteOpenHelper;->mHandler:Lcom/amazon/nwstd/persistence/DBLocalStorage;

    invoke-virtual {v2}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getMigrateTablesStatements()[[Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    aget-object v2, v2, v3

    invoke-direct {p0, p1, v2}, Lcom/amazon/nwstd/persistence/DBLocalStorage$LocalSQLiteOpenHelper;->executeStatements(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 133
    invoke-static {}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage$LocalSQLiteOpenHelper;->mHandler:Lcom/amazon/nwstd/persistence/DBLocalStorage;

    invoke-virtual {v4}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabaseName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Migration failed : from version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " / "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 133
    invoke-static {v2, v0, p2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage$LocalSQLiteOpenHelper;->mHandler:Lcom/amazon/nwstd/persistence/DBLocalStorage;

    invoke-virtual {v1}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Migration failed : trying to recover to an empty table"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, v0, p3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 137
    :try_start_1
    iget-object p2, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage$LocalSQLiteOpenHelper;->mHandler:Lcom/amazon/nwstd/persistence/DBLocalStorage;

    invoke-virtual {p2}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDropTablesStatements()[Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/persistence/DBLocalStorage$LocalSQLiteOpenHelper;->executeStatements(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V

    .line 138
    iget-object p2, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage$LocalSQLiteOpenHelper;->mHandler:Lcom/amazon/nwstd/persistence/DBLocalStorage;

    invoke-virtual {p2}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getCreateTablesStatements()[Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/nwstd/persistence/DBLocalStorage$LocalSQLiteOpenHelper;->executeStatements(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 140
    invoke-static {}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/nwstd/persistence/DBLocalStorage$LocalSQLiteOpenHelper;->mHandler:Lcom/amazon/nwstd/persistence/DBLocalStorage;

    invoke-virtual {v1}, Lcom/amazon/nwstd/persistence/DBLocalStorage;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": recovery failed : ABORTING (no bookmarks tables will be available) "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-static {p2, v0, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
