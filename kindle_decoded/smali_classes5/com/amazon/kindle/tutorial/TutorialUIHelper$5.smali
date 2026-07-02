.class final Lcom/amazon/kindle/tutorial/TutorialUIHelper$5;
.super Ljava/lang/Object;
.source "TutorialUIHelper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/TutorialUIHelper;->setVideoUsingDownloadedResource(Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;Landroid/view/TextureView;Landroid/widget/ImageView;Landroid/app/Activity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$previewImageView:Landroid/widget/ImageView;

.field final synthetic val$view:Landroid/view/TextureView;


# direct methods
.method constructor <init>(Landroid/view/TextureView;Landroid/widget/ImageView;)V
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$5;->val$view:Landroid/view/TextureView;

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$5;->val$previewImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$5;->val$view:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$5;->val$view:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$5;->val$previewImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 375
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$5;->val$view:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$5;->val$previewImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 376
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$5;->val$view:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 377
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 378
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$5;->val$view:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 379
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$5;->val$previewImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$5$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/tutorial/TutorialUIHelper$5$1;-><init>(Lcom/amazon/kindle/tutorial/TutorialUIHelper$5;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method
