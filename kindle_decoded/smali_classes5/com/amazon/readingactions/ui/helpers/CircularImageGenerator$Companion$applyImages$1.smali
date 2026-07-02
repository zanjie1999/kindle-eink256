.class final Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion$applyImages$1;
.super Ljava/lang/Object;
.source "CircularImageGenerator.kt"

# interfaces
.implements Lcom/amazon/startactions/storage/ImageBatchDownloader$BatchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;->applyImages(Lcom/amazon/startactions/storage/ImageBatchDownloader;[Landroid/widget/ImageView;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $imageViews:[Landroid/widget/ImageView;

.field final synthetic $resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>([Landroid/widget/ImageView;Landroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion$applyImages$1;->$imageViews:[Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion$applyImages$1;->$resources:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyImage(ILandroid/graphics/Bitmap;)V
    .locals 7

    if-eqz p2, :cond_0

    .line 21
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion$applyImages$1;->$imageViews:[Landroid/widget/ImageView;

    aget-object p1, v0, p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator;->Companion:Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;

    iget-object v2, p0, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion$applyImages$1;->$resources:Landroid/content/res/Resources;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;->getCircularBitmap$default(Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;Landroid/graphics/Bitmap;Landroid/content/res/Resources;IIILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 23
    :cond_0
    iget-object p2, p0, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion$applyImages$1;->$imageViews:[Landroid/widget/ImageView;

    aget-object p1, p2, p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion$applyImages$1;->$resources:Landroid/content/res/Resources;

    .line 24
    sget v0, Lcom/amazon/kindle/ea/R$drawable;->ic_author_photo_placeholder:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method
