.class Lcom/amazon/android/docviewer/mobi/MobiPage$5;
.super Ljava/lang/Object;
.source "MobiPage.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiPage;->getDecorativeRectangles()Ljava/util/Vector;
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


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiPage;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$5;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

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

    .line 436
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/MobiPage$5;->call()Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Vector;
    .locals 11
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

    .line 439
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$5;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->access$100(Lcom/amazon/android/docviewer/mobi/MobiPage;)Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentPage;->getDecorativeRectangles()Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 444
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;->getCount()J

    move-result-wide v1

    long-to-int v2, v1

    .line 445
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 447
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$5;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

    invoke-static {v3}, Lcom/amazon/android/docviewer/mobi/MobiPage;->access$200(Lcom/amazon/android/docviewer/mobi/MobiPage;)I

    move-result v3

    .line 448
    iget-object v4, p0, Lcom/amazon/android/docviewer/mobi/MobiPage$5;->this$0:Lcom/amazon/android/docviewer/mobi/MobiPage;

    invoke-static {v4}, Lcom/amazon/android/docviewer/mobi/MobiPage;->access$300(Lcom/amazon/android/docviewer/mobi/MobiPage;)I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    int-to-long v6, v5

    .line 451
    invoke-virtual {v0, v6, v7}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;->getItem(J)Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 453
    invoke-virtual {v6}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getM_x()I

    move-result v7

    add-int/2addr v7, v3

    .line 454
    invoke-virtual {v6}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getM_y()I

    move-result v8

    add-int/2addr v8, v4

    .line 455
    new-instance v9, Landroid/graphics/Rect;

    .line 458
    invoke-virtual {v6}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getM_width()I

    move-result v10

    add-int/2addr v10, v7

    .line 459
    invoke-virtual {v6}, Lcom/amazon/kindle/krf/KBL/Foundation/Rectangle;->getM_height()I

    move-result v6

    add-int/2addr v6, v8

    invoke-direct {v9, v7, v8, v10, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 455
    invoke-virtual {v1, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 465
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;->delete()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KBL/Foundation/ITemplateRectangleArray;->delete()V

    .line 466
    throw v1
.end method
