.class public Lcom/amazon/kindle/mangaviewer/MangaPageLayout;
.super Landroid/widget/FrameLayout;
.source "MangaPageLayout.java"


# static fields
.field private static final SPINNER_SIZE:I = 0x1e


# instance fields
.field private final imageView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

.field private volatile m_bar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 30
    invoke-super {p0, p2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->createImageView(Landroid/content/Context;)Lcom/amazon/kindle/mangaviewer/BoundImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    .line 32
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected createImageView(Landroid/content/Context;)Lcom/amazon/kindle/mangaviewer/BoundImageView;
    .locals 1

    .line 43
    new-instance v0, Lcom/amazon/kindle/mangaviewer/BoundImageView;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/mangaviewer/BoundImageView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public imageView()Lcom/amazon/kindle/mangaviewer/BoundImageView;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .line 52
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 58
    invoke-virtual {p0}, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->updateLoadingBar()V

    :cond_0
    return-void
.end method

.method public setImageBackgroundColor(I)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-void
.end method

.method protected updateLoadingBar()V
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->imageView:Lcom/amazon/kindle/mangaviewer/BoundImageView;

    invoke-virtual {v0}, Lcom/amazon/kindle/mangaviewer/BoundImageView;->hasRenderDrawable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 64
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->m_bar:Landroid/widget/ProgressBar;

    if-nez v1, :cond_1

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->m_bar:Landroid/widget/ProgressBar;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 69
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    const/16 v4, 0x1e

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    iput-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->m_bar:Landroid/widget/ProgressBar;

    .line 72
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 75
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->m_bar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_3

    .line 76
    iget-object v1, p0, Lcom/amazon/kindle/mangaviewer/MangaPageLayout;->m_bar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_3
    return-void
.end method
