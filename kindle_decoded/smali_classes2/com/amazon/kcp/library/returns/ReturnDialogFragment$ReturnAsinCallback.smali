.class Lcom/amazon/kcp/library/returns/ReturnDialogFragment$ReturnAsinCallback;
.super Ljava/lang/Object;
.source "ReturnDialogFragment.java"

# interfaces
.implements Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/returns/ReturnDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReturnAsinCallback"
.end annotation


# instance fields
.field private final bookId:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/library/returns/ReturnDialogFragment;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/returns/ReturnDialogFragment;Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$ReturnAsinCallback;->this$0:Lcom/amazon/kcp/library/returns/ReturnDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p2, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$ReturnAsinCallback;->bookId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$ReturnAsinCallback;->this$0:Lcom/amazon/kcp/library/returns/ReturnDialogFragment;

    iget-object v1, p0, Lcom/amazon/kcp/library/returns/ReturnDialogFragment$ReturnAsinCallback;->bookId:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/amazon/kcp/library/returns/ReturnDialogFragment;->access$400(Lcom/amazon/kcp/library/returns/ReturnDialogFragment;Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;Ljava/lang/String;)V

    return-void
.end method
