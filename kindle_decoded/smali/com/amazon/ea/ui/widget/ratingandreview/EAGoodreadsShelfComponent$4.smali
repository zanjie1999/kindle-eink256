.class Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$4;
.super Ljava/lang/Object;
.source "EAGoodreadsShelfComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$4;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

    iput-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$4;->val$blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$4;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$4;->val$blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-static {v0, v1}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->access$100(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V

    return-void
.end method
