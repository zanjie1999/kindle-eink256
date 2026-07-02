.class public abstract Lcom/amazon/e3oseventhandler/BasePaginationHandler;
.super Ljava/lang/Object;
.source "BasePaginationHandler.java"

# interfaces
.implements Lcom/amazon/e3oseventhandler/IE3OSEventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;,
        Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;
    }
.end annotation


# static fields
.field private static final FLASH_ON_LAST_PAGE:Ljava/lang/String; = "FLASH-ON-LAST-PAGE"

.field public static final GESTURE_FLING:I = 0x1

.field public static final GESTURE_IDLE:I = 0x0

.field public static final GESTURE_LONGPRESS:I = 0x2

.field private static final INVALID_HEIGHT:I = -0x1

.field private static final MIN_DIST:F = 20.0f

.field private static final WIDGET_CLASS_NAME:Ljava/lang/String; = "com.amazon.e3oseventhandler.BasePaginationHandler"

.field private static sGetHorizontalScrollbarHeight:Ljava/lang/reflect/Method;


# instance fields
.field protected mBundle:Landroid/os/Bundle;

.field protected mFlashOnLastPage:Ljava/lang/Boolean;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field protected mLastGesture:I

.field protected mLastOnDownEvent:Landroid/view/MotionEvent;

.field protected mMainView:Landroid/view/View;

.field protected mScrollFilter:Landroid/view/View$OnTouchListener;

.field private mScrollPercent:Ljava/lang/Float;

.field protected mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mLastGesture:I

    .line 108
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->getReflectionReferences()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mLastGesture:I

    .line 117
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->setWidgetView(Landroid/view/View;)V

    .line 118
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->getReflectionReferences()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/e3oseventhandler/BasePaginationHandler;Landroid/view/MotionEvent;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->handleHorizontalScrollbarTouch(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/e3oseventhandler/BasePaginationHandler;Landroid/view/MotionEvent;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->handleVerticalScrollbarTouch(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method private getHorizontalScrollbarHeight()I
    .locals 5

    .line 461
    sget-object v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->sGetHorizontalScrollbarHeight:Ljava/lang/reflect/Method;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 462
    sget-object v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string v2, "getHorizontalScrollbarHeight reference not resolved."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 466
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 467
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 468
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 470
    :cond_1
    sget-object v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string v2, "Unexpected value found for getHorizontalScrollbarHeight()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 475
    sget-object v2, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not invoke getHorizontalScrollbarHeight()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 472
    sget-object v2, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not access getHorizontalScrollbarHeight()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method private getHorizontalScrollbarHeightReference()V
    .locals 3

    .line 126
    sget-object v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->sGetHorizontalScrollbarHeight:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    return-void

    .line 130
    :cond_0
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "getHorizontalScrollbarHeight"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->sGetHorizontalScrollbarHeight:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getReflectionReferences()V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->getHorizontalScrollbarHeightReference()V

    return-void
.end method

.method private handleHorizontalScrollbarTouch(Landroid/view/MotionEvent;)V
    .locals 1

    .line 507
    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    sget-object v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;->X:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->handleJump(FLcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;)V

    :cond_0
    return-void
.end method

.method private handleVerticalScrollbarTouch(Landroid/view/MotionEvent;)V
    .locals 1

    .line 518
    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    sget-object v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;->Y:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;

    invoke-virtual {p0, p1, v0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->handleJump(FLcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;)V

    :cond_0
    return-void
.end method

.method private isFlashOnLastPageSet()Z
    .locals 5

    .line 568
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 571
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    .line 572
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "E3OS_DISPLAY_MODE"

    const-string v4, "id"

    .line 571
    invoke-virtual {v0, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 573
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FLASH-ON-LAST-PAGE"

    .line 575
    invoke-static {v0, v2}, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->getKeyValueFromTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 579
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method


# virtual methods
.method protected canScrollHorizontally()Z
    .locals 3

    .line 488
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected canScrollVertically()Z
    .locals 3

    .line 498
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected fullFlashOnNextUpdate()V
    .locals 5

    .line 617
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 618
    sget-object v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string v1, "Widget instance not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 622
    iget-object v1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "E3OS_GHOSTING_MODE"

    const-string v3, "id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 624
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "GHOSTING_WINDOW_FLASH_TRANSIENT"

    const-string/jumbo v4, "string"

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 626
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 627
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method protected getScrollPercent()Ljava/lang/Float;
    .locals 4

    .line 411
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    .line 412
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "E3OS_SCROLL_CONTROL"

    const-string v3, "id"

    .line 411
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 413
    iget-object v1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 417
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 418
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 419
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 420
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 425
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected handleFling(Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;)V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mScrollPercent:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 538
    sget-object v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;->Backward:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 539
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mScrollPercent:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->handleFlingEventByPercentage(F)V

    goto :goto_0

    .line 541
    :cond_0
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mScrollPercent:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->handleFlingEventByPercentage(F)V

    goto :goto_0

    .line 544
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->handleFlingEvent(Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;)V

    :goto_0
    return-void
.end method

.method protected abstract handleFlingEvent(Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;)V
.end method

.method protected abstract handleFlingEventByPercentage(F)V
.end method

.method protected abstract handleJump(FLcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;)V
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 402
    invoke-virtual {p0, p1, v0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/os/Bundle;)Z
    .locals 1

    .line 385
    iput-object p2, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mBundle:Landroid/os/Bundle;

    .line 386
    iget-object p2, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mScrollFilter:Landroid/view/View$OnTouchListener;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 390
    :cond_0
    iget-object p2, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mScrollPercent:Ljava/lang/Float;

    if-nez p2, :cond_1

    .line 391
    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->getScrollPercent()Ljava/lang/Float;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mScrollPercent:Ljava/lang/Float;

    .line 394
    :cond_1
    iget-object p2, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mFlashOnLastPage:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    .line 395
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->isFlashOnLastPageSet()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mFlashOnLastPage:Ljava/lang/Boolean;

    .line 397
    :cond_2
    iget-object p2, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mScrollFilter:Landroid/view/View$OnTouchListener;

    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    invoke-interface {p2, v0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected initOrResetVelocityTracker()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 190
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 192
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method

.method protected initVelocityTrackerIfNotExists()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 201
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method protected isDownCaptured()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mLastOnDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isFling()Z
    .locals 2

    .line 182
    iget v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mLastGesture:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isLongPress()Z
    .locals 2

    .line 173
    iget v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mLastGesture:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isPointInHorizontalScrollbar(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 434
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 436
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->getHorizontalScrollbarHeight()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    return v1

    :cond_0
    sub-int v2, v0, v2

    int-to-float v2, v2

    .line 441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected isPointInVerticalScrollbar(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 452
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 454
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVerticalScrollbarWidth()I

    move-result v2

    sub-int v2, v0, v2

    int-to-float v2, v2

    .line 455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected isScrollingNeeded()Z
    .locals 3

    .line 164
    iget v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mLastGesture:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onTouchSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected recycleVelocityTracker()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method protected resetState()V
    .locals 1

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mLastGesture:I

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mLastOnDownEvent:Landroid/view/MotionEvent;

    return-void
.end method

.method public setFilter(Landroid/view/View;)V
    .locals 0

    .line 216
    new-instance p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler$1;

    invoke-direct {p1, p0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler$1;-><init>(Lcom/amazon/e3oseventhandler/BasePaginationHandler;)V

    iput-object p1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mScrollFilter:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public final setWidgetView(Landroid/view/View;)V
    .locals 4

    .line 267
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    .line 268
    invoke-interface {p0, p1}, Lcom/amazon/e3oseventhandler/IE3OSEventHandler;->setWidgetViewInternal(Landroid/view/View;)V

    .line 269
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->setFilter(Landroid/view/View;)V

    .line 270
    new-instance v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$2;

    invoke-direct {v0, p0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler$2;-><init>(Lcom/amazon/e3oseventhandler/BasePaginationHandler;)V

    .line 367
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 368
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mGestureDetector:Landroid/view/GestureDetector;

    .line 369
    iput-object p1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mMainView:Landroid/view/View;

    return-void
.end method
