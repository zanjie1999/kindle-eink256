.class Lcom/amazon/nwstd/model/replica/BitmapProvider$3;
.super Ljava/lang/Object;
.source "BitmapProvider.java"

# interfaces
.implements Lcom/amazon/nwstd/utils/LRUObjectPool$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/model/replica/BitmapProvider;->getBitmapFromPool(II)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/nwstd/utils/LRUObjectPool$Filter<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/model/replica/BitmapProvider;II)V
    .locals 0

    .line 413
    iput p2, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider$3;->val$width:I

    iput p3, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider$3;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Landroid/graphics/Bitmap;)Z
    .locals 2

    .line 417
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider$3;->val$width:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/amazon/nwstd/model/replica/BitmapProvider$3;->val$height:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic match(Ljava/lang/Object;)Z
    .locals 0

    .line 413
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/model/replica/BitmapProvider$3;->match(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method
