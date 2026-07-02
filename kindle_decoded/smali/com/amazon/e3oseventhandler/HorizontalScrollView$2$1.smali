.class Lcom/amazon/e3oseventhandler/HorizontalScrollView$2$1;
.super Ljava/lang/Object;
.source "HorizontalScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/e3oseventhandler/HorizontalScrollView$2;->flingRight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/e3oseventhandler/HorizontalScrollView$2;


# direct methods
.method constructor <init>(Lcom/amazon/e3oseventhandler/HorizontalScrollView$2;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$2$1;->this$1:Lcom/amazon/e3oseventhandler/HorizontalScrollView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$2$1;->this$1:Lcom/amazon/e3oseventhandler/HorizontalScrollView$2;

    iget-object v0, v0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$2;->val$horizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollView$2$1;->this$1:Lcom/amazon/e3oseventhandler/HorizontalScrollView$2;

    iget-object v2, v2, Lcom/amazon/e3oseventhandler/HorizontalScrollView$2;->this$0:Lcom/amazon/e3oseventhandler/HorizontalScrollView;

    invoke-static {v2}, Lcom/amazon/e3oseventhandler/HorizontalScrollView;->access$400(Lcom/amazon/e3oseventhandler/HorizontalScrollView;)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    return-void
.end method
