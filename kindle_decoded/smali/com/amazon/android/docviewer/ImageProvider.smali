.class public abstract Lcom/amazon/android/docviewer/ImageProvider;
.super Ljava/lang/Object;
.source "ImageProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBitmapAndClose(Lcom/amazon/android/docviewer/ImageProvider;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/ImageProvider;->createBitmap(Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/ImageProvider;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/ImageProvider;->close()V

    .line 29
    throw p1
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract createBitmap(Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;
.end method

.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract isClosed()Z
.end method

.method public abstract updateBitmap(Landroid/graphics/Bitmap;Lcom/amazon/kcp/util/images/BitmapHelper$ScalingOptions;)Landroid/graphics/Bitmap;
.end method
