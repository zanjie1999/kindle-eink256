.class Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedSQLiteStatement;
.super Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;
.source "RefCountedSQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefCountedSQLiteStatement"
.end annotation


# instance fields
.field private final mStatementOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;)V
    .locals 1

    .line 23
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedSQLiteStatement;->this$0:Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;

    .line 24
    invoke-virtual {p2}, Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;->getInner()Landroid/database/sqlite/SQLiteStatement;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;-><init>(Landroid/database/sqlite/SQLiteStatement;)V

    .line 20
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedSQLiteStatement;->mStatementOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    invoke-static {p1}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->access$000(Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;)Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;->increment()I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedSQLiteStatement;->mStatementOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/SQLiteStatementWrapper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedSQLiteStatement;->this$0:Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->access$200(Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedSQLiteStatement;->this$0:Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->access$200(Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;)V

    throw v0
.end method

.method protected finalize()V
    .locals 4

    .line 33
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 34
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedSQLiteStatement;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 38
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefCountedSQLiteStatement\'s finalizer threw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
