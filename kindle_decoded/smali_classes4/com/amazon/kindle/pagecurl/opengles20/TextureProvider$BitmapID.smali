.class Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider$BitmapID;
.super Ljava/lang/Object;
.source "TextureProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapID"
.end annotation


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider$BitmapID;->width:I

    .line 30
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider$BitmapID;->height:I

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider$BitmapID;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider$BitmapID;->height:I

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider$BitmapID;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/amazon/kindle/pagecurl/opengles20/TextureProvider$BitmapID;->width:I

    return p0
.end method
