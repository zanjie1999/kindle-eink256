.class public abstract Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WordWiseDBHelper.java"


# instance fields
.field private loadedMetadataValues:Z

.field private metadataKeyLabel:Ljava/lang/String;

.field private metadataTableName:Ljava/lang/String;

.field private metadataValueLabel:Ljava/lang/String;

.field private metadataValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 24
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->metadataValues:Ljava/util/HashMap;

    .line 25
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->metadataTableName:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->metadataKeyLabel:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->metadataValueLabel:Ljava/lang/String;

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->loadedMetadataValues:Z

    return-void
.end method

.method private declared-synchronized retrieveMetadataValues(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    monitor-enter p0

    .line 59
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->loadedMetadataValues:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 60
    monitor-exit p0

    return-void

    .line 62
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->metadataTableName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->metadataKeyLabel:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->metadataValueLabel:Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 66
    iget-object v1, p0, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->metadataKeyLabel:Ljava/lang/String;

    aput-object v1, v3, v0

    iget-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->metadataValueLabel:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v0, v3, v9

    .line 67
    iget-object v2, p0, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->metadataTableName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 76
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->metadataKeyLabel:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->metadataValueLabel:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    iget-object v2, p0, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->metadataValues:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 85
    iput-boolean v9, p0, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->loadedMetadataValues:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 63
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method configureMetadataTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->metadataTableName:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->metadataKeyLabel:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->metadataValueLabel:Ljava/lang/String;

    return-void
.end method

.method public getMetadataValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 95
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->loadedMetadataValues:Z

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->retrieveMetadataValues(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->metadataValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/persistence/WordWiseDBHelper;->metadataValues:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 103
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SqliteException"

    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 33
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PRAGMA synchronous = OFF;"

    .line 37
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
