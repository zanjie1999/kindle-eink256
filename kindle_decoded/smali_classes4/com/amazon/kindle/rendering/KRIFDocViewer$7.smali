.class Lcom/amazon/kindle/rendering/KRIFDocViewer$7;
.super Ljava/lang/Object;
.source "KRIFDocViewer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/KRIFDocViewer;->getGraphicForPage(Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

.field final synthetic val$height:I

.field final synthetic val$pageIndex:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;III)V
    .locals 0

    .line 1595
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$7;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    iput p2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$7;->val$pageIndex:I

    iput p3, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$7;->val$width:I

    iput p4, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$7;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/Bitmap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1598
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$7;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-static {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->access$800(Lcom/amazon/kindle/rendering/KRIFDocViewer;)Lcom/amazon/kindle/rendering/IBookImageRenderer;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$7;->val$pageIndex:I

    iget v2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$7;->val$width:I

    iget v3, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$7;->val$height:I

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/rendering/IBookImageRenderer;->getPageThumbnail(IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1595
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer$7;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
