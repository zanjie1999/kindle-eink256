.class final Lcom/amazon/kindle/tutorial/TutorialUIHelper$4;
.super Ljava/lang/Object;
.source "TutorialUIHelper.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/TutorialUIHelper;->setVideoUsingDownloadedResource(Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;Landroid/view/TextureView;Landroid/widget/ImageView;Landroid/app/Activity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic val$previewImageView:Landroid/widget/ImageView;

.field final synthetic val$view:Landroid/view/TextureView;


# direct methods
.method constructor <init>(Landroid/view/TextureView;Landroid/widget/ImageView;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$4;->val$view:Landroid/view/TextureView;

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$4;->val$previewImageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$4;->val$mediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 357
    iget-object p2, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$4;->val$view:Landroid/view/TextureView;

    invoke-virtual {p2}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$4;->val$previewImageView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getHeight()I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 358
    iget-object p2, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$4;->val$view:Landroid/view/TextureView;

    invoke-virtual {p2}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$4;->val$previewImageView:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getWidth()I

    move-result p3

    iput p3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 359
    iget-object p2, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$4;->val$mediaPlayer:Landroid/media/MediaPlayer;

    new-instance p3, Landroid/view/Surface;

    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 360
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$4;->val$mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
