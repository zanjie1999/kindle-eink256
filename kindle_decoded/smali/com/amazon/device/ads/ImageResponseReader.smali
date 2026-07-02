.class Lcom/amazon/device/ads/ImageResponseReader;
.super Lcom/amazon/device/ads/ResponseReader;
.source "ImageResponseReader.java"


# instance fields
.field final graphicsUtils:Lcom/amazon/device/ads/GraphicsUtils;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/ResponseReader;Lcom/amazon/device/ads/GraphicsUtils;)V
    .locals 0

    .line 11
    invoke-virtual {p1}, Lcom/amazon/device/ads/ResponseReader;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/device/ads/ResponseReader;-><init>(Ljava/io/InputStream;)V

    .line 12
    iput-object p2, p0, Lcom/amazon/device/ads/ImageResponseReader;->graphicsUtils:Lcom/amazon/device/ads/GraphicsUtils;

    return-void
.end method


# virtual methods
.method public readAsBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/amazon/device/ads/ImageResponseReader;->graphicsUtils:Lcom/amazon/device/ads/GraphicsUtils;

    invoke-virtual {p0}, Lcom/amazon/device/ads/ResponseReader;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/GraphicsUtils;->createBitmapImage(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
