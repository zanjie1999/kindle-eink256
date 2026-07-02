.class Lcom/amazon/kcp/reader/ui/MobiMagnifyingView$MagnifiedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MobiMagnifyingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/MobiMagnifyingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MagnifiedDrawable"
.end annotation


# instance fields
.field private final magnifiedView:Lcom/amazon/android/docviewer/mobi/MobiView;

.field private final selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiView;Lcom/amazon/kcp/reader/ui/SelectionDrawable;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 171
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/MobiMagnifyingView$MagnifiedDrawable;->magnifiedView:Lcom/amazon/android/docviewer/mobi/MobiView;

    .line 172
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/MobiMagnifyingView$MagnifiedDrawable;->selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MobiMagnifyingView$MagnifiedDrawable;->magnifiedView:Lcom/amazon/android/docviewer/mobi/MobiView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiView;->getCurrentPageDrawable()Lcom/amazon/android/docviewer/mobi/PageDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/MobiMagnifyingView$MagnifiedDrawable;->selectionDrawable:Lcom/amazon/kcp/reader/ui/SelectionDrawable;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
