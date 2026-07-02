.class Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$6$1;
.super Ljava/lang/Object;
.source "EAGoodreadsShelfComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$6;->onScrollChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$6;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$6;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$6$1;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$6$1;->this$1:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$6;

    iget-object v1, v0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$6;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

    iget-object v0, v0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$6;->val$blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-static {v1, v0}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->access$100(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V

    return-void
.end method
