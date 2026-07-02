.class public Lcom/amazon/kedu/flashcards/GraphicalHighlightImageView;
.super Landroid/widget/ImageView;
.source "GraphicalHighlightImageView.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private loadingJob:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/GraphicalHighlightImageView;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/GraphicalHighlightImageView;->loadingJob:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/GraphicalHighlightImageView;->loadingJob:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/GraphicalHighlightImageView;->loadingJob:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/GraphicalHighlightImageView;->bitmap:Landroid/graphics/Bitmap;

    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setLoadingJob(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/GraphicalHighlightImageView;->loadingJob:Ljava/util/concurrent/Future;

    return-void
.end method
