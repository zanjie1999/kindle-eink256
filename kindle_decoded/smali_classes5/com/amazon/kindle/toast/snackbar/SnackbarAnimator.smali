.class final Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;
.super Ljava/lang/Object;
.source "SnackbarToast.kt"


# instance fields
.field private final duration:J

.field private final interpolator:Landroid/view/animation/Interpolator;

.field private final snackbar:Lcom/amazon/kindle/toast/snackbar/Snackbar;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/toast/snackbar/Snackbar;Landroid/view/animation/Interpolator;J)V
    .locals 1

    const-string/jumbo v0, "snackbar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;->snackbar:Lcom/amazon/kindle/toast/snackbar/Snackbar;

    iput-object p2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;->interpolator:Landroid/view/animation/Interpolator;

    iput-wide p3, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;->duration:J

    return-void
.end method

.method public static final synthetic access$animateViewIn(Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;)V
    .locals 0

    .line 239
    invoke-direct {p0}, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;->animateViewIn()V

    return-void
.end method

.method private final animateViewIn()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;->snackbar:Lcom/amazon/kindle/toast/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "snackbar.view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    neg-float v1, v1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 259
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    .line 260
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 261
    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 262
    iget-wide v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;->duration:J

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 263
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method


# virtual methods
.method public final hideWithCustomAnimation(Landroidx/core/view/ViewPropertyAnimatorListener;)V
    .locals 4

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;->snackbar:Lcom/amazon/kindle/toast/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "snackbar.view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 269
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    neg-float v0, v0

    invoke-virtual {v1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 270
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 271
    iget-wide v2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;->duration:J

    invoke-virtual {v1, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 272
    invoke-virtual {v1, p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 273
    invoke-virtual {v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public final showWithCustomAnimation()V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;->snackbar:Lcom/amazon/kindle/toast/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "snackbar.view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;->snackbar:Lcom/amazon/kindle/toast/snackbar/Snackbar;

    invoke-virtual {v1}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->show()V

    .line 244
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;->animateViewIn()V

    goto :goto_0

    .line 247
    :cond_0
    new-instance v1, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator$showWithCustomAnimation$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator$showWithCustomAnimation$1;-><init>(Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    return-void
.end method
