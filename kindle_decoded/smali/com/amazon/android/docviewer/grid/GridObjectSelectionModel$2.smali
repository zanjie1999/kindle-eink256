.class Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel$2;
.super Ljava/util/ArrayList;
.source "GridObjectSelectionModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;->getGridAnchors()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/graphics/Point;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;Landroid/graphics/Rect;)V
    .locals 1

    .line 252
    iput-object p1, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel$2;->this$0:Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    iput-object p2, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel$2;->val$rect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    new-instance p1, Landroid/graphics/Point;

    iget-object p2, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel$2;->val$rect:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p1, v0, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance p1, Landroid/graphics/Point;

    iget-object p2, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel$2;->val$rect:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p1, v0, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance p1, Landroid/graphics/Point;

    iget-object p2, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel$2;->val$rect:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p1, v0, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance p1, Landroid/graphics/Point;

    iget-object p2, p0, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel$2;->val$rect:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p1, v0, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
