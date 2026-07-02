.class Lcom/amazon/kcp/widget/Gallery$2;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Lcom/amazon/kindle/callback/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/callback/ICallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/widget/Gallery;

.field final synthetic val$child:Lcom/amazon/kcp/cover/BadgeableCover;

.field final synthetic val$fromLeft:Z

.field final synthetic val$x:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/widget/Gallery;Lcom/amazon/kcp/cover/BadgeableCover;IZ)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/amazon/kcp/widget/Gallery$2;->this$0:Lcom/amazon/kcp/widget/Gallery;

    iput-object p2, p0, Lcom/amazon/kcp/widget/Gallery$2;->val$child:Lcom/amazon/kcp/cover/BadgeableCover;

    iput p3, p0, Lcom/amazon/kcp/widget/Gallery$2;->val$x:I

    iput-boolean p4, p0, Lcom/amazon/kcp/widget/Gallery$2;->val$fromLeft:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/amazon/kindle/callback/OperationResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/OperationResult<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 411
    iget-object p1, p0, Lcom/amazon/kcp/widget/Gallery$2;->this$0:Lcom/amazon/kcp/widget/Gallery;

    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery$2;->val$child:Lcom/amazon/kcp/cover/BadgeableCover;

    iget v1, p0, Lcom/amazon/kcp/widget/Gallery$2;->val$x:I

    iget-boolean v2, p0, Lcom/amazon/kcp/widget/Gallery$2;->val$fromLeft:Z

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kcp/widget/Gallery;->access$200(Lcom/amazon/kcp/widget/Gallery;Landroid/view/View;IZ)V

    .line 412
    iget-object p1, p0, Lcom/amazon/kcp/widget/Gallery$2;->this$0:Lcom/amazon/kcp/widget/Gallery;

    iget-object p1, p1, Lcom/amazon/kcp/widget/Gallery;->layoutManager:Lcom/amazon/kcp/widget/CarouselLayoutManager;

    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery$2;->val$child:Lcom/amazon/kcp/cover/BadgeableCover;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/widget/CarouselLayoutManager;->layout(Landroid/view/View;)Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 414
    iget-object v0, p0, Lcom/amazon/kcp/widget/Gallery$2;->this$0:Lcom/amazon/kcp/widget/Gallery;

    iget-object v1, p0, Lcom/amazon/kcp/widget/Gallery$2;->val$child:Lcom/amazon/kcp/cover/BadgeableCover;

    iget p1, p1, Lcom/amazon/kcp/widget/GalleryLayoutItem$Point;->x:F

    float-to-int p1, p1

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/widget/Gallery;->access$300(Lcom/amazon/kcp/widget/Gallery;Landroid/view/View;I)V

    :cond_0
    return-void
.end method
