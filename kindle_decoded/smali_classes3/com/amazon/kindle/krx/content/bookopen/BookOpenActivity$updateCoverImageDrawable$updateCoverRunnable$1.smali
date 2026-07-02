.class final Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$updateCoverImageDrawable$updateCoverRunnable$1;
.super Ljava/lang/Object;
.source "BookOpenActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->updateCoverImageDrawable$krxsdk_release(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $newImage:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$updateCoverImageDrawable$updateCoverRunnable$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    iput-object p2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$updateCoverImageDrawable$updateCoverRunnable$1;->$newImage:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 343
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$updateCoverImageDrawable$updateCoverRunnable$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    sget v1, Lcom/amazon/kindle/krxsdk/R$id;->book_open_cover_image:I

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "book_open_cover_image"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$updateCoverImageDrawable$updateCoverRunnable$1;->$newImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$updateCoverImageDrawable$updateCoverRunnable$1;->$newImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$updateCoverImageDrawable$updateCoverRunnable$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    sget v1, Lcom/amazon/kindle/krxsdk/R$id;->book_open_cover_image:I

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$updateCoverImageDrawable$updateCoverRunnable$1;->$newImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
