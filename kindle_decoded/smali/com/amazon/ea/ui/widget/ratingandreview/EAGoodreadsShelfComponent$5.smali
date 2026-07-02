.class Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$5;
.super Ljava/lang/Object;
.source "EAGoodreadsShelfComponent.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;Landroid/app/Activity;Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$5;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

    iput-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$5;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$5;->val$blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$5;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->access$300(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$5;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

    invoke-static {v1}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->access$200(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 424
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$5;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$5$1;

    invoke-direct {v1, p0}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$5$1;-><init>(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
