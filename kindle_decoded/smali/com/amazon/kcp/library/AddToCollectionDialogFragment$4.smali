.class Lcom/amazon/kcp/library/AddToCollectionDialogFragment$4;
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

    .line 138
    iput-object p1, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$4;->this$0:Lcom/amazon/kcp/library/AddToCollectionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 141
    iget-object p1, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$4;->this$0:Lcom/amazon/kcp/library/AddToCollectionDialogFragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->access$200(Lcom/amazon/kcp/library/AddToCollectionDialogFragment;)Ljava/util/ArrayList;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v0}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->access$300(Lcom/amazon/kcp/library/AddToCollectionDialogFragment;Ljava/util/List;II)V

    return-void
.end method
