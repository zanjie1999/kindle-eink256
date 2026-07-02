.class Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$1;
.super Ljava/lang/Object;
.source "BookGridView.java"

# interfaces
.implements Lcom/amazon/ea/ui/AnimationCoordinator$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->destroyBubble(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$1;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/view/View;)V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView$1;->this$0:Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;->access$300(Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void
.end method
