.class final Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2;
.super Ljava/lang/Object;
.source "LibraryTransferCalculationFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2;->this$0:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2;->this$0:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;

    invoke-static {v0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;->access$getCalculateThreadFuture$p(Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2;->this$0:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->getAvailableExternalSDCardSpace(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    .line 40
    sget-object v4, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->INSTANCE:Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;

    invoke-virtual {v4}, Lcom/amazon/kindle/sdcard/librarytransfer/TransferLibrary;->getTotalTransferSize()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v2, v0, v4

    if-ltz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 42
    :goto_1
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2$1;-><init>(Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2;Z)V

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 49
    iget-object v1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2;->this$0:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;

    invoke-static {v1}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;->access$getTAG$p(Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception in getting Future result"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
