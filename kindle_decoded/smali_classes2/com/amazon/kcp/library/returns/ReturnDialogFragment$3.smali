.class Lcom/amazon/kcp/library/returns/ReturnDialogFragment$3;
.super Ljava/lang/Object;
.source "ReturnDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/returns/ReturnDialogFragment;->handleReturnResponse(Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/returns/ReturnDialogFragment;

.field final synthetic val$bookId:Ljava/lang/String;

.field final synthetic val$response:Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/returns/ReturnDialogFragment;Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$3;->this$0:Lcom/amazon/kcp/library/returns/ReturnDialogFragment;

    iput-object p2, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$3;->val$response:Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    iput-object p3, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$3;->val$bookId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$3;->val$response:Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;->getError()Lcom/amazon/kindle/krx/glide/ReturnOfferError;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/amazon/kcp/library/returns/ReturnDialogFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Return request failed"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$3;->this$0:Lcom/amazon/kcp/library/returns/ReturnDialogFragment;

    invoke-static {v0}, Lcom/amazon/kcp/library/returns/ReturnDialogFragment;->access$300(Lcom/amazon/kcp/library/returns/ReturnDialogFragment;)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/library/returns/ReturnDialogFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Return request succeeded. Deleting the content from Library"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    .line 144
    iget-object v2, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$3;->val$bookId:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1, v1}, Lcom/amazon/kindle/content/ILibraryService;->deleteContentMetadata(Ljava/util/Collection;Ljava/lang/String;ZZ)V

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$3;->val$bookId:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parseForAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$3;->val$response:Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;

    .line 147
    invoke-virtual {v2}, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;->getError()Lcom/amazon/kindle/krx/glide/ReturnOfferError;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v2, "lendingReturn"

    .line 146
    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/RecordDeleteFromLibraryMetrics;->reportServiceResponseMetrics(Ljava/lang/String;ZLjava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$3;->this$0:Lcom/amazon/kcp/library/returns/ReturnDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
