.class Lcom/amazon/kcp/library/AddToCollectionDialogFragment$3;
.super Ljava/lang/Object;
.source "AddToCollectionDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/AddToCollectionDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/AddToCollectionDialogFragment;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$3;->this$0:Lcom/amazon/kcp/library/AddToCollectionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$3;->this$0:Lcom/amazon/kcp/library/AddToCollectionDialogFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->access$100(Lcom/amazon/kcp/library/AddToCollectionDialogFragment;)V

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$3;->this$0:Lcom/amazon/kcp/library/AddToCollectionDialogFragment;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/library/LibraryDialogFragment;->onOkClicked(Landroid/content/DialogInterface;I)V

    return-void
.end method
