.class Lcom/amazon/kcp/library/AddToCollectionDialogFragment$6;
.super Ljava/lang/Object;
.source "AddToCollectionDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 153
    iput-object p1, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$6;->this$0:Lcom/amazon/kcp/library/AddToCollectionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 156
    iget-object p1, p0, Lcom/amazon/kcp/library/AddToCollectionDialogFragment$6;->this$0:Lcom/amazon/kcp/library/AddToCollectionDialogFragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/AddToCollectionDialogFragment;->access$400(Lcom/amazon/kcp/library/AddToCollectionDialogFragment;)V

    return-void
.end method
