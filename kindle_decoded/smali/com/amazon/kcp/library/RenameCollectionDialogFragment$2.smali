.class Lcom/amazon/kcp/library/RenameCollectionDialogFragment$2;
.super Ljava/lang/Object;
.source "RenameCollectionDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/RenameCollectionDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/RenameCollectionDialogFragment;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment$2;->this$0:Lcom/amazon/kcp/library/RenameCollectionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment$2;->this$0:Lcom/amazon/kcp/library/RenameCollectionDialogFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/RenameCollectionDialogFragment;->access$000(Lcom/amazon/kcp/library/RenameCollectionDialogFragment;)V

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/library/RenameCollectionDialogFragment$2;->this$0:Lcom/amazon/kcp/library/RenameCollectionDialogFragment;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/LibraryDialogFragment;->onOkClicked(Landroid/content/DialogInterface;I)V

    return-void
.end method
