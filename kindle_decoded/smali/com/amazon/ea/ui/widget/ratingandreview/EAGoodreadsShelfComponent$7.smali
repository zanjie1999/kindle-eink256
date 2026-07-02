.class Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$7;
.super Ljava/lang/Object;
.source "EAGoodreadsShelfComponent.java"

# interfaces
.implements Lcom/amazon/startactions/jit/BlockingTutorialFragment$JitDialogDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->buildTutorial()Lcom/amazon/startactions/jit/BlockingTutorialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

.field final synthetic val$onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$7;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

    iput-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$7;->val$onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$7;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->access$400(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$7;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->access$500(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$7;->val$onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    return-void
.end method
