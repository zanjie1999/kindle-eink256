.class final Lcom/amazon/kindle/tutorial/TutorialUIHelper$3;
.super Ljava/lang/Object;
.source "TutorialUIHelper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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

    .line 334
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$3;->val$view:Landroid/view/TextureView;

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$3;->val$previewImageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 341
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$3;->val$view:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xfa

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 342
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/TutorialUIHelper$3;->val$previewImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/amazon/kindle/tutorial/TutorialUIHelper$3$1;

    invoke-direct {p2, p0}, Lcom/amazon/kindle/tutorial/TutorialUIHelper$3$1;-><init>(Lcom/amazon/kindle/tutorial/TutorialUIHelper$3;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
