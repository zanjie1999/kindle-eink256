.class public Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;
.super Ljava/lang/Object;
.source "AmplifyDatabaseHelper.java"


# static fields
.field private static final COLUMN_END:Ljava/lang/String; = "end"

.field private static final COLUMN_ID:Ljava/lang/String; = "id"

.field private static final COLUMN_START:Ljava/lang/String; = "start"

.field private static final COLUMN_TOKEN_COUNT:Ljava/lang/String; = "token_count"

.field private static final TABLE_NAME:Ljava/lang/String; = "amplified_passage"


# instance fields
.field private bookId:Ljava/lang/String;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private file:Ljava/io/File;

.field private positionFactory:Lcom/amazon/kindle/krx/reader/IPositionFactory;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/amazon/kindle/krx/reader/IPositionFactory;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->bookId:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->file:Ljava/io/File;

    .line 37
    iput-object p3, p0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->positionFactory:Lcom/amazon/kindle/krx/reader/IPositionFactory;

    return-void
.end method

.method private convertToNotableClip(Landroid/database/Cursor;)Lcom/amazon/kindle/speedreading/amplifier/NotableClip;
    .locals 4

    :try_start_0
    const-string v0, "id"

    .line 226
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "start"

    .line 227
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "end"

    .line 228
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "token_count"

    .line 229
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    .line 231
    iget-object v3, p0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->positionFactory:Lcom/amazon/kindle/krx/reader/IPositionFactory;

    invoke-interface {v3, v1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    .line 232
    iget-object v3, p0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->positionFactory:Lcom/amazon/kindle/krx/reader/IPositionFactory;

    invoke-interface {v3, v2}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    .line 234
    new-instance v3, Lcom/amazon/kindle/speedreading/amplifier/NotableClip;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/amazon/kindle/speedreading/amplifier/NotableClip;-><init>(ILcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static declared-synchronized deleteDatabase(Ljava/io/File;)Z
    .locals 6

    const-class v0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;

    monitor-enter v0

    .line 252
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 254
    invoke-static {p0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :cond_0
    const/4 v1, 0x0

    if-nez p0, :cond_1

    .line 260
    monitor-exit v0

    return v1

    .line 265
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    or-int/2addr v2, v1

    .line 266
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-journal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    or-int/2addr v2, v3

    .line 267
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-shm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    or-int/2addr v2, v3

    .line 268
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-wal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    or-int/2addr v2, v3

    .line 271
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-mj"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 275
    new-instance v4, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper$1;

    invoke-direct {v4, p0}, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper$1;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    array-length v3, p0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, p0, v1

    .line 285
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    or-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 288
    :cond_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 56
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    :catch_0
    :try_start_2
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->close()V

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->file:Ljava/io/File;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->deleteDatabase(Ljava/io/File;)Z

    .line 67
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v0, 0x0

    .line 84
    :try_start_2
    iput-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllNotableClips()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/speedreading/amplifier/NotableClip;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v9, 0x0

    :try_start_0
    const-string v2, "amplified_passage"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "start"

    .line 161
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 163
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    invoke-direct {p0, v9}, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->convertToNotableClip(Landroid/database/Cursor;)Lcom/amazon/kindle/speedreading/amplifier/NotableClip;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v9, :cond_3

    .line 176
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_2
    throw v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/amplifier/sidecar/AmplifyDatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
