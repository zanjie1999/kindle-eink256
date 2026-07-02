.class Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;
.super Landroid/database/CursorWrapper;
.source "RefCountedSQLiteDatabase.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefCountedCursor"
.end annotation


# instance fields
.field private final mCursorOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mInner:Landroid/database/CrossProcessCursor;

.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;Landroid/database/CrossProcessCursor;)V
    .locals 2

    .line 67
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;->this$0:Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;

    .line 68
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;->mCursorOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;->mInner:Landroid/database/CrossProcessCursor;

    .line 70
    invoke-static {p1}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->access$000(Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;)Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;->increment()I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;->mCursorOpen:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;->this$0:Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->access$200(Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;->this$0:Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->access$200(Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;)V

    throw v0
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    return-void
.end method

.method protected finalize()V
    .locals 4

    .line 78
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 79
    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 83
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefCountedCursor\'s finalizer threw: "

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

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public onMove(II)Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/RefCountedSQLiteDatabase$RefCountedCursor;->mInner:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result p1

    return p1
.end method
