.class public Lcom/amazon/kindle/cover/db/CoverDBHelper;
.super Lcom/amazon/kindle/persistence/KindleDBHelper;
.source "CoverDBHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static database_version:I

.field private static volatile instance:Lcom/amazon/kindle/cover/db/CoverDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/cover/db/CoverDBHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    .line 26
    sput v0, Lcom/amazon/kindle/cover/db/CoverDBHelper;->database_version:I

    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/amazon/kindle/cover/db/CoverDBHelper;->instance:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 43
    sget v0, Lcom/amazon/kindle/cover/db/CoverDBHelper;->database_version:I

    const-string v1, "covers.db"

    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/kindle/persistence/KindleDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/amazon/kindle/cover/db/CoverDBHelper;
    .locals 2

    .line 31
    sget-object v0, Lcom/amazon/kindle/cover/db/CoverDBHelper;->instance:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Lcom/amazon/kindle/cover/db/CoverDBHelper;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/amazon/kindle/cover/db/CoverDBHelper;->instance:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/amazon/kindle/cover/db/CoverDBHelper;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/cover/db/CoverDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/kindle/cover/db/CoverDBHelper;->instance:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 39
    :cond_1
    :goto_0
    sget-object p0, Lcom/amazon/kindle/cover/db/CoverDBHelper;->instance:Lcom/amazon/kindle/cover/db/CoverDBHelper;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 48
    sget-object v0, Lcom/amazon/kindle/cover/db/CoverDBHelper;->TAG:Ljava/lang/String;

    const-string v1, "onCreate() called"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getCreateTableSqlStatement()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    :cond_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/amazon/kindle/cover/dao/CoverDAO;->getCreateIndexSqlStatements()Ljava/util/List;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 67
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
