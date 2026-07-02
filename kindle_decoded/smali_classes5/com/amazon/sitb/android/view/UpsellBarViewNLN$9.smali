.class Lcom/amazon/sitb/android/view/UpsellBarViewNLN$9;
.super Ljava/lang/Object;
.source "UpsellBarViewNLN.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->renderKUButton(Lcom/amazon/sitb/android/view/UpsellBarViewNLN$UpdateUIModel;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/sitb/android/view/UpsellBarViewNLN;

.field final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/amazon/sitb/android/view/UpsellBarViewNLN;Landroid/content/res/Resources;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$9;->this$0:Lcom/amazon/sitb/android/view/UpsellBarViewNLN;

    iput-object p2, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$9;->val$res:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 553
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 554
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 555
    iget-object v2, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$9;->this$0:Lcom/amazon/sitb/android/view/UpsellBarViewNLN;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/sitb/R$drawable;->ku_badge_dark:I

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 556
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    .line 557
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-lez v4, :cond_1

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr v2, v0

    .line 565
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$9;->this$0:Lcom/amazon/sitb/android/view/UpsellBarViewNLN;

    iget-object v0, v0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->kuButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v0

    const v3, 0x3e99999a    # 0.3f

    int-to-float v0, v0

    mul-float v0, v0, v3

    .line 567
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v3, v0

    div-float/2addr v3, v2

    .line 569
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 571
    iget-object v3, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$9;->val$res:Landroid/content/res/Resources;

    sget v4, Lcom/amazon/kindle/sitb/R$drawable;->ku_badge_dark:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    .line 572
    invoke-virtual {v3, v4, v4, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 574
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$9;->this$0:Lcom/amazon/sitb/android/view/UpsellBarViewNLN;

    iget-object v0, v0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->kuButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 576
    iget-object v0, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$9;->this$0:Lcom/amazon/sitb/android/view/UpsellBarViewNLN;

    iget-object v0, v0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->kuButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    :goto_0
    return v1
.end method
