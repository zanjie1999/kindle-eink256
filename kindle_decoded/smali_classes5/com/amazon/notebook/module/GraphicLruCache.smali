.class public Lcom/amazon/notebook/module/GraphicLruCache;
.super Landroidx/collection/LruCache;
.source "GraphicLruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache<",
        "Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroidx/collection/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected sizeOf(Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 17
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    mul-int p1, p1, p2

    div-int/lit16 p1, p1, 0x400

    return p1
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/notebook/module/GraphicLruCache;->sizeOf(Lcom/amazon/notebook/module/GraphicLruCache$GraphicLocation;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method
