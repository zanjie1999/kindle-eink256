.class public abstract Lcom/google/android/gms/common/images/zag;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"


# instance fields
.field final zaa:Lcom/google/android/gms/common/images/zad;

.field protected zab:I


# virtual methods
.method protected abstract zaa(Landroid/graphics/drawable/Drawable;ZZZ)V
.end method

.method final zab(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p0, p3, p1, p1, p2}, Lcom/google/android/gms/common/images/zag;->zaa(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method final zac(Landroid/content/Context;Lcom/google/android/gms/internal/base/zak;Z)V
    .locals 0

    iget p2, p0, Lcom/google/android/gms/common/images/zag;->zab:I

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p1, p3, p2, p2}, Lcom/google/android/gms/common/images/zag;->zaa(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method
