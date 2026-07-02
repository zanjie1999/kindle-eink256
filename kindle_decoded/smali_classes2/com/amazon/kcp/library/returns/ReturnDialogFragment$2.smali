.class Lcom/amazon/kcp/library/returns/ReturnDialogFragment$2;
.super Ljava/lang/Object;
.source "ReturnDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/returns/ReturnDialogFragment;->createPositiveButtonListener(Landroid/app/AlertDialog;Ljava/util/List;Ljava/lang/String;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/returns/ReturnDialogFragment;

.field final synthetic val$bookIds:Ljava/util/List;

.field final synthetic val$booksInfoMetric:Ljava/lang/String;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/returns/ReturnDialogFragment;Ljava/lang/String;Landroid/app/AlertDialog;Ljava/util/List;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$2;->this$0:Lcom/amazon/kcp/library/returns/ReturnDialogFragment;

    iput-object p2, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$2;->val$booksInfoMetric:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$2;->val$dialog:Landroid/app/AlertDialog;

    iput-object p4, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$2;->val$bookIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 105
    iget-object p1, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$2;->val$booksInfoMetric:Ljava/lang/String;

    const-string v0, "confirm"

    const-string v1, "BookReturnAction"

    const-string v2, "lendingReturn"

    invoke-static {v0, v1, p1, v2}, Lcom/amazon/kcp/util/fastmetrics/RecordDeleteFromLibraryMetrics;->reportUserDialogActionMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result p1

    if-nez p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$2;->this$0:Lcom/amazon/kcp/library/returns/ReturnDialogFragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/returns/ReturnDialogFragment;->access$000(Lcom/amazon/kcp/library/returns/ReturnDialogFragment;)V

    .line 109
    iget-object p1, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$2;->this$0:Lcom/amazon/kcp/library/returns/ReturnDialogFragment;

    iget-object v0, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$2;->val$bookIds:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/amazon/kcp/library/returns/ReturnDialogFragment;->access$100(Lcom/amazon/kcp/library/returns/ReturnDialogFragment;Ljava/util/List;)V

    :goto_0
    return-void
.end method
