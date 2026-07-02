.class Lcom/amazon/kcp/library/AddToCollectionDialogFragment$2;
.super Ljava/lang/Object;
.source "AddToCollectionDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 119
    iput-object p1, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$2;->this$0:Lcom/amazon/kcp/library/AddToCollectionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$2;->this$0:Lcom/amazon/kcp/library/AddToCollectionDialogFragment;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->handleCollectionCreation()V

    return-void
.end method
