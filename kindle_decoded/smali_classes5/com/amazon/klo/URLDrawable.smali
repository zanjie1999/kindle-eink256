.class public Lcom/amazon/klo/URLDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "URLDrawable.java"


# instance fields
.field protected drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/klo/URLDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public loadDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/klo/URLDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 29
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method
