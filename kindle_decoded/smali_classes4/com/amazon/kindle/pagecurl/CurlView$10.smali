.class Lcom/amazon/kindle/pagecurl/CurlView$10;
.super Ljava/lang/Object;
.source "CurlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/pagecurl/CurlView;->updateFakeDrag(IFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/pagecurl/CurlView;

.field final synthetic val$pointerID:I

.field final synthetic val$pressure:F

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/amazon/kindle/pagecurl/CurlView;IFFF)V
    .locals 0

    .line 1728
    iput-object p1, p0, Lcom/amazon/kindle/pagecurl/CurlView$10;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    iput p2, p0, Lcom/amazon/kindle/pagecurl/CurlView$10;->val$pointerID:I

    iput p3, p0, Lcom/amazon/kindle/pagecurl/CurlView$10;->val$x:F

    iput p4, p0, Lcom/amazon/kindle/pagecurl/CurlView$10;->val$y:F

    iput p5, p0, Lcom/amazon/kindle/pagecurl/CurlView$10;->val$pressure:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1731
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$10;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    iget v1, p0, Lcom/amazon/kindle/pagecurl/CurlView$10;->val$pointerID:I

    iget v2, p0, Lcom/amazon/kindle/pagecurl/CurlView$10;->val$x:F

    iget v3, p0, Lcom/amazon/kindle/pagecurl/CurlView$10;->val$y:F

    iget v4, p0, Lcom/amazon/kindle/pagecurl/CurlView$10;->val$pressure:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/pagecurl/CurlView;->access$1100(Lcom/amazon/kindle/pagecurl/CurlView;IFFF)V

    .line 1732
    iget-object v0, p0, Lcom/amazon/kindle/pagecurl/CurlView$10;->this$0:Lcom/amazon/kindle/pagecurl/CurlView;

    invoke-virtual {v0}, Lcom/amazon/kindle/pagecurl/CurlView;->requestRender()V

    return-void
.end method
