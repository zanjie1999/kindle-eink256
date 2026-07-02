.class Lcom/amazon/kindle/rendering/KRIFDocViewer$6;
.super Ljava/lang/Object;
.source "KRIFDocViewer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/KRIFDocViewer;->getGraphicForRange(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Bitmap;
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

.field final synthetic val$endPos:Lcom/amazon/kindle/krx/reader/IPosition;

.field final synthetic val$pageRect:Landroid/graphics/Rect;

.field final synthetic val$startPos:Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/rendering/KRIFDocViewer;Landroid/graphics/Rect;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 0

    .line 1539
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$6;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    iput-object p2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$6;->val$pageRect:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$6;->val$startPos:Lcom/amazon/kindle/krx/reader/IPosition;

    iput-object p4, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$6;->val$endPos:Lcom/amazon/kindle/krx/reader/IPosition;

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

    .line 1542
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$6;->this$0:Lcom/amazon/kindle/rendering/KRIFDocViewer;

    invoke-static {v0}, Lcom/amazon/kindle/rendering/KRIFDocViewer;->access$800(Lcom/amazon/kindle/rendering/KRIFDocViewer;)Lcom/amazon/kindle/rendering/IBookImageRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$6;->val$pageRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$6;->val$startPos:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kindle/rendering/KRIFDocViewer$6;->val$endPos:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 1543
    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getLongPosition()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 1542
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/rendering/IBookImageRenderer;->getPageClip(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

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

    .line 1539
    invoke-virtual {p0}, Lcom/amazon/kindle/rendering/KRIFDocViewer$6;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
