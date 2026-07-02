.class public Lcom/amazon/kindle/content/dao/DaoTransaction;
.super Ljava/lang/Object;
.source "DaoTransaction.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final dbHelper:Lcom/amazon/kindle/persistence/KindleDBHelper;

.field private final entries:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/amazon/kindle/content/dao/DaoTransactionEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kindle/content/dao/DaoTransaction;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/dao/DaoTransaction;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/persistence/KindleDBHelper;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/google/common/collect/Queues;->newArrayDeque()Ljava/util/ArrayDeque;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/content/dao/DaoTransaction;->entries:Ljava/util/Queue;

    .line 32
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/DaoTransaction;->dbHelper:Lcom/amazon/kindle/persistence/KindleDBHelper;

    return-void
.end method

.method private endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 68
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method private startTransaction()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/DaoTransaction;->dbHelper:Lcom/amazon/kindle/persistence/KindleDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/DaoTransaction;->dbHelper:Lcom/amazon/kindle/persistence/KindleDBHelper;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method


# virtual methods
.method public addEntry(Lcom/amazon/kindle/content/dao/DaoTransactionEntry;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/DaoTransaction;->entries:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 3

    .line 47
    invoke-direct {p0}, Lcom/amazon/kindle/content/dao/DaoTransaction;->startTransaction()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/DaoTransaction;->entries:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/dao/DaoTransactionEntry;

    .line 50
    invoke-interface {v2, v0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-direct {p0, v0}, Lcom/amazon/kindle/content/dao/DaoTransaction;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/DaoTransaction;->entries:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void

    :catchall_0
    move-exception v1

    .line 54
    invoke-direct {p0, v0}, Lcom/amazon/kindle/content/dao/DaoTransaction;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/DaoTransaction;->entries:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 56
    throw v1
.end method
