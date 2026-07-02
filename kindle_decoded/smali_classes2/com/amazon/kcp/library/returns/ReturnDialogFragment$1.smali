.class Lcom/amazon/kcp/library/returns/ReturnDialogFragment$1;
.super Ljava/lang/Object;
.source "ReturnDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/returns/ReturnDialogFragment;->createNegativeButtonListener(Landroid/app/AlertDialog;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/returns/ReturnDialogFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/returns/ReturnDialogFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$1;->this$0:Lcom/amazon/kcp/library/returns/ReturnDialogFragment;

    iput-object p2, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 89
    iget-object p1, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$1;->this$0:Lcom/amazon/kcp/library/returns/ReturnDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bookIdListKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 90
    iget-object p1, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$1;->this$0:Lcom/amazon/kcp/library/returns/ReturnDialogFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "booksInfoMetric"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "cancel"

    const-string v1, "BookReturnAction"

    const-string v2, "lendingReturn"

    .line 91
    invoke-static {v0, v1, p1, v2}, Lcom/amazon/kcp/util/fastmetrics/RecordDeleteFromLibraryMetrics;->reportUserDialogActionMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
