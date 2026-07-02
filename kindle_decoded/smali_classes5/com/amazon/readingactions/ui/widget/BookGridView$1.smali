.class Lcom/amazon/readingactions/ui/widget/BookGridView$1;
.super Ljava/lang/Object;
.source "BookGridView.java"

# interfaces
.implements Lcom/amazon/ea/ui/AnimationCoordinator$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/BookGridView;->destroyBubble(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/BookGridView;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/BookGridView;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BookGridView$1;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/view/View;)V
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BookGridView$1;->this$0:Lcom/amazon/readingactions/ui/widget/BookGridView;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BookGridView;->access$300(Lcom/amazon/readingactions/ui/widget/BookGridView;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void
.end method
