.class Lcom/amazon/kcp/library/CreateCollectionDialogFragment$3;
.super Ljava/lang/Object;
.source "CreateCollectionDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/CreateCollectionDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/CreateCollectionDialogFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/CreateCollectionDialogFragment;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/amazon/kcp/library/CreateCollectionDialogFragment$3;->this$0:Lcom/amazon/kcp/library/CreateCollectionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 104
    iget-object p2, p0, Lcom/amazon/kcp/library/CreateCollectionDialogFragment$3;->this$0:Lcom/amazon/kcp/library/CreateCollectionDialogFragment;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method
