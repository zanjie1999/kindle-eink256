.class Lcom/amazon/android/docviewer/mobi/MobiPage$4;
.super Ljava/lang/Object;
.source "MobiPage.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiPage;->createCoveringRectangles(II)Ljava/util/Vector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/Vector<",
        "Landroid/graphics/Rect;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

.field final synthetic val$endId:I

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiPage;II)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

    iput p2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$4;->val$startId:I

    iput p3, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$4;->val$endId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 382
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPage$4;->call()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Vector;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 385
    iget v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$4;->val$startId:I

    invoke-static {v0}, Lcom/amazon/krfhacks/KRFHacks;->intPositionToPosition(I)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v0

    .line 386
    iget v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$4;->val$endId:I

    invoke-static {v1}, Lcom/amazon/krfhacks/KRFHacks;->intPositionToPosition(I)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v1

    .line 387
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

    sget-object v3, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_CREATE_PAGE_COVERING_RECTANGLES:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/amazon/android/docviewer/mobi/MobiPage;->access$000(Lcom/amazon/android/docviewer/mobi/MobiPage;Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V

    .line 388
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

    invoke-static {v2}, Lcom/amazon/android/docviewer/mobi/MobiPage;->access$100(Lcom/amazon/android/docviewer/mobi/MobiPage;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->createCoveringRectangles(Lcom/amazon/kindle/krf/KRF/Reader/Position;Lcom/amazon/kindle/krf/KRF/Reader/Position;)Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->KRF_CREATE_PAGE_COVERING_RECTANGLES:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/amazon/android/docviewer/mobi/MobiPage;->access$000(Lcom/amazon/android/docviewer/mobi/MobiPage;Lcom/amazon/kindle/performance/KindlePerformanceConstants;Z)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 394
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;->getCount()J

    move-result-wide v1

    long-to-int v2, v1

    .line 395
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 397
    iget-object v5, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

    invoke-static {v5}, Lcom/amazon/android/docviewer/mobi/MobiPage;->access$200(Lcom/amazon/android/docviewer/mobi/MobiPage;)I

    move-result v5

    .line 398
    iget-object v6, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

    invoke-static {v6}, Lcom/amazon/android/docviewer/mobi/MobiPage;->access$300(Lcom/amazon/android/docviewer/mobi/MobiPage;)I

    move-result v6

    :goto_0
    if-ge v3, v2, :cond_1

    int-to-long v7, v3

    .line 401
    invoke-virtual {v0, v7, v8}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;->getItem(J)Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;

    move-result-object v7

    .line 402
    invoke-virtual {v7}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getM_x()I

    move-result v8

    add-int/2addr v8, v5

    .line 403
    invoke-virtual {v7}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getM_y()I

    move-result v9

    add-int/2addr v9, v6

    .line 404
    new-instance v10, Landroid/graphics/Rect;

    .line 407
    invoke-virtual {v7}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getM_width()I

    move-result v11

    add-int/2addr v11, v8

    sub-int/2addr v11, v4

    .line 408
    invoke-virtual {v7}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getM_height()I

    move-result v7

    add-int/2addr v7, v9

    sub-int/2addr v7, v4

    invoke-direct {v10, v8, v9, v11, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 404
    invoke-virtual {v1, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 412
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;->delete()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;->delete()V

    .line 413
    throw v1
.end method
