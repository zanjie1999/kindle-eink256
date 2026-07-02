.class public Lcom/amazon/xray/model/loader/AsyncListLoader$LinearLoadOrderStrategy;
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
    name = "LinearLoadOrderStrategy"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nextIndex(Landroid/util/SparseArray;IIIII)I
    .locals 0

    move p2, p3

    :goto_0
    if-ge p2, p6, :cond_1

    .line 329
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-lt p3, p5, :cond_3

    .line 336
    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    return p3

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method
