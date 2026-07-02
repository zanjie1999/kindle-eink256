.class Lcom/amazon/device/ads/ImageButtonFactory;
.super Ljava/lang/Object;
.source "ImageViewFactory.java"

# interfaces
.implements Lcom/amazon/device/ads/ImageViewFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBitmapDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .line 26
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    return-object v0
.end method

.method public createImageView(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageButton;
    .locals 1

    .line 32
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public bridge synthetic createImageView(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageView;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/ads/ImageButtonFactory;->createImageView(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ImageButton;

    move-result-object p1

    return-object p1
.end method
