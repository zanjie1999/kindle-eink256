.class public Lcom/amazon/xray/model/loader/AsyncListLoader$SymmetricLoadOrderStrategy;
.super Ljava/lang/Object;
.source "AsyncListLoader.java"

# interfaces
.implements Lcom/amazon/xray/model/loader/AsyncListLoader$LoadOrderStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/model/loader/AsyncListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SymmetricLoadOrderStrategy"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nextIndex(Landroid/util/SparseArray;IIIII)I
    .locals 3

    move p2, p3

    :goto_0
    if-ge p2, p4, :cond_1

    .line 354
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    sub-int p2, p3, p5

    sub-int v0, p6, p4

    .line 360
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_4

    add-int/lit8 v1, p3, -0x1

    sub-int/2addr v1, v0

    if-lt v1, p5, :cond_2

    .line 363
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int v1, p4, v0

    if-ge v1, p6, :cond_3

    .line 368
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, -0x1

    return p1
.end method
