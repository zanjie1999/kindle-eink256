.class Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$2;
.super Ljava/lang/Object;
.source "AbsListViewEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->scrollToPosition(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

.field final synthetic val$isLastPage:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;ZI)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$2;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    iput-boolean p2, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$2;->val$isLastPage:Z

    iput p3, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 412
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$2;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    iget-object v0, v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 413
    sget-object v1, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;->SCROLL:Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;

    invoke-virtual {v1}, Lcom/amazon/e3oseventhandler/AbstractInteractionHandler$GestureType;->getmId()I

    move-result v1

    int-to-float v1, v1

    const-string v2, "Last-Gesture"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$2;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    iget-object v0, v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mFlashOnLastPage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$2;->val$isLastPage:Z

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$2;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-virtual {v0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->fullFlashOnNextUpdate()V

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$2;->this$0:Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;

    invoke-static {v0}, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;->access$000(Lcom/amazon/e3oseventhandler/AbsListViewEventHandler;)Landroid/widget/AbsListView;

    move-result-object v0

    iget v1, p0, Lcom/amazon/e3oseventhandler/AbsListViewEventHandler$2;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelection(I)V

    return-void
.end method
