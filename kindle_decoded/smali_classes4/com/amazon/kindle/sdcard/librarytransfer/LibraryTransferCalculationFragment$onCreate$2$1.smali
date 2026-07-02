.class final Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2$1;
.super Ljava/lang/Object;
.source "LibraryTransferCalculationFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $shouldShowTransferDialog:Z

.field final synthetic this$0:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2;Z)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2$1;->this$0:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2;

    iput-boolean p2, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2$1;->$shouldShowTransferDialog:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2$1;->this$0:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2;

    iget-object v0, v0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2;->this$0:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;

    invoke-static {v0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;->access$removeThisFragment(Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;)V

    .line 44
    iget-boolean v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2$1;->$shouldShowTransferDialog:Z

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2$1;->this$0:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2;

    iget-object v0, v0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2;->this$0:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;

    invoke-static {v0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;->access$showTransferDialogFragment(Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;)V

    :cond_0
    return-void
.end method
