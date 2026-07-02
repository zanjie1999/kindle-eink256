.class final Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment$onCreateDialog$3;
.super Ljava/lang/Object;
.source "LibraryTransferDialogFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment$onCreateDialog$3;->this$0:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 27
    iget-object p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment$onCreateDialog$3;->this$0:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment;

    invoke-static {p1}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment;->access$startTransferService(Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment;)V

    return-void
.end method
