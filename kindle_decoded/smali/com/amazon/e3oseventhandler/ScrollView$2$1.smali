.class Lcom/amazon/e3oseventhandler/ScrollView$2$1;
.super Ljava/lang/Object;
.source "ScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/e3oseventhandler/ScrollView$2;->flingDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/e3oseventhandler/ScrollView$2;


# direct methods
.method constructor <init>(Lcom/amazon/e3oseventhandler/ScrollView$2;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/ScrollView$2$1;->this$1:Lcom/amazon/e3oseventhandler/ScrollView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/ScrollView$2$1;->this$1:Lcom/amazon/e3oseventhandler/ScrollView$2;

    iget-object v0, v0, Lcom/amazon/e3oseventhandler/ScrollView$2;->val$scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amazon/e3oseventhandler/ScrollView$2$1;->this$1:Lcom/amazon/e3oseventhandler/ScrollView$2;

    iget-object v2, v2, Lcom/amazon/e3oseventhandler/ScrollView$2;->this$0:Lcom/amazon/e3oseventhandler/ScrollView;

    invoke-static {v2}, Lcom/amazon/e3oseventhandler/ScrollView;->access$400(Lcom/amazon/e3oseventhandler/ScrollView;)F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ScrollView;->scrollBy(II)V

    return-void
.end method
