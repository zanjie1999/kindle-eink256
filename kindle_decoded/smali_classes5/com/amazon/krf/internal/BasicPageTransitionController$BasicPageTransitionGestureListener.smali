.class Lcom/amazon/krf/internal/BasicPageTransitionController$BasicPageTransitionGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "BasicPageTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/internal/BasicPageTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BasicPageTransitionGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/internal/BasicPageTransitionController;


# direct methods
.method private constructor <init>(Lcom/amazon/krf/internal/BasicPageTransitionController;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/amazon/krf/internal/BasicPageTransitionController$BasicPageTransitionGestureListener;->this$0:Lcom/amazon/krf/internal/BasicPageTransitionController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/krf/internal/BasicPageTransitionController;Lcom/amazon/krf/internal/BasicPageTransitionController$1;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/BasicPageTransitionController$BasicPageTransitionGestureListener;-><init>(Lcom/amazon/krf/internal/BasicPageTransitionController;)V

    return-void
.end method

.method private handleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 161
    iget-object v0, p0, Lcom/amazon/krf/internal/BasicPageTransitionController$BasicPageTransitionGestureListener;->this$0:Lcom/amazon/krf/internal/BasicPageTransitionController;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/PageTransitionController;->getPagerView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x3e800000    # 0.25f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 164
    iget-object p1, p0, Lcom/amazon/krf/internal/BasicPageTransitionController$BasicPageTransitionGestureListener;->this$0:Lcom/amazon/krf/internal/BasicPageTransitionController;

    invoke-virtual {p1}, Lcom/amazon/krf/internal/PageTransitionController;->getDataProvider()Lcom/amazon/krf/internal/PageTransitionDataProvider;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/krf/internal/BasicPageTransitionController$BasicPageTransitionGestureListener;->this$0:Lcom/amazon/krf/internal/BasicPageTransitionController;

    invoke-static {v2}, Lcom/amazon/krf/internal/BasicPageTransitionController;->access$100(Lcom/amazon/krf/internal/BasicPageTransitionController;)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/krf/internal/BasicPageTransitionController$BasicPageTransitionGestureListener;->this$0:Lcom/amazon/krf/internal/BasicPageTransitionController;

    .line 165
    invoke-virtual {v3}, Lcom/amazon/krf/internal/PageTransitionController;->navigationDirectionMatchesAnimationDirection()Z

    move-result v3

    xor-int/2addr v3, v1

    .line 164
    invoke-interface {p1, v2, v3}, Lcom/amazon/krf/internal/PageTransitionDataProvider;->getPageViewAdjacentToPageView(Lcom/amazon/krf/platform/KRFPageView;Z)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object p1

    .line 166
    iget-object v2, p0, Lcom/amazon/krf/internal/BasicPageTransitionController$BasicPageTransitionGestureListener;->this$0:Lcom/amazon/krf/internal/BasicPageTransitionController;

    invoke-virtual {v2, p1, v1, v0}, Lcom/amazon/krf/internal/PageTransitionController;->setPageView(Lcom/amazon/krf/platform/KRFPageView;ZZ)V

    return v1

    :cond_0
    const/high16 v2, 0x3f400000    # 0.75f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    .line 169
    iget-object p1, p0, Lcom/amazon/krf/internal/BasicPageTransitionController$BasicPageTransitionGestureListener;->this$0:Lcom/amazon/krf/internal/BasicPageTransitionController;

    invoke-virtual {p1}, Lcom/amazon/krf/internal/PageTransitionController;->getDataProvider()Lcom/amazon/krf/internal/PageTransitionDataProvider;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/krf/internal/BasicPageTransitionController$BasicPageTransitionGestureListener;->this$0:Lcom/amazon/krf/internal/BasicPageTransitionController;

    invoke-static {v2}, Lcom/amazon/krf/internal/BasicPageTransitionController;->access$100(Lcom/amazon/krf/internal/BasicPageTransitionController;)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/krf/internal/BasicPageTransitionController$BasicPageTransitionGestureListener;->this$0:Lcom/amazon/krf/internal/BasicPageTransitionController;

    .line 170
    invoke-virtual {v3}, Lcom/amazon/krf/internal/PageTransitionController;->navigationDirectionMatchesAnimationDirection()Z

    move-result v3

    .line 169
    invoke-interface {p1, v2, v3}, Lcom/amazon/krf/internal/PageTransitionDataProvider;->getPageViewAdjacentToPageView(Lcom/amazon/krf/platform/KRFPageView;Z)Lcom/amazon/krf/platform/KRFPageView;

    move-result-object p1

    .line 171
    iget-object v2, p0, Lcom/amazon/krf/internal/BasicPageTransitionController$BasicPageTransitionGestureListener;->this$0:Lcom/amazon/krf/internal/BasicPageTransitionController;

    invoke-virtual {v2, p1, v1, v0}, Lcom/amazon/krf/internal/PageTransitionController;->setPageView(Lcom/amazon/krf/platform/KRFPageView;ZZ)V

    return v1

    :cond_1
    return v0
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 153
    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/BasicPageTransitionController$BasicPageTransitionGestureListener;->handleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 147
    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/BasicPageTransitionController$BasicPageTransitionGestureListener;->handleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
