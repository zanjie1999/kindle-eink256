.class public Lcom/amazon/kcp/util/RectangleComparator;
.super Ljava/lang/Object;
.source "RectangleComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 0

    .line 16
    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->left:I

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Landroid/graphics/Rect;

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/util/RectangleComparator;->compare(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p1

    return p1
.end method
