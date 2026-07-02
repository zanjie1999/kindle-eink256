.class public Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;
.super Lcom/amazon/e3oseventhandler/BasePaginationHandler;
.source "HorizontalScrollViewEventHandler.java"


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field private static final VELOCITY_UNIT:I = 0x3e8

.field private static final WIDGET_CLASS_NAME:Ljava/lang/String; = "com.amazon.e3oseventhandler.HorizontalScrollViewEventHandler"

.field private static sIsBeingDragged:Ljava/lang/reflect/Field;

.field private static sLastMotionX:Ljava/lang/reflect/Field;

.field private static sRecycleVelocityTrackerMethod:Ljava/lang/reflect/Method;

.field private static sVelocityTracker:Ljava/lang/reflect/Field;


# instance fields
.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;-><init>(Landroid/view/View;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->setWidgetView(Landroid/view/View;)V

    .line 69
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->getReflectionReferences()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->handleNestedScroll(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->handleNestedFling(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->resetMIsBeingDragged()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->callRecycleVelocityTracker()V

    return-void
.end method

.method private callRecycleVelocityTracker()V
    .locals 4

    const-string/jumbo v0, "recycleVelocityTracker() could not be invoked : "

    .line 200
    sget-object v1, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->sRecycleVelocityTrackerMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 201
    sget-object v0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string/jumbo v1, "recycleVelocityTracker method is not resolved."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 205
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 210
    sget-object v2, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 207
    sget-object v2, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getLastTouchX(Landroid/widget/HorizontalScrollView;)I
    .locals 4

    .line 286
    sget-object v0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->sLastMotionX:Ljava/lang/reflect/Field;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 287
    sget-object p1, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string/jumbo v0, "mLastMotionX is not resolved."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 291
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 292
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 293
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 296
    sget-object v0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not access mLastMotionX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
.end method

.method private getRecycleVelocityTrackerReference()V
    .locals 3

    .line 119
    sget-object v0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->sRecycleVelocityTrackerMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    return-void

    .line 123
    :cond_0
    :try_start_0
    const-class v0, Landroid/widget/HorizontalScrollView;

    const-string/jumbo v1, "recycleVelocityTracker"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->sRecycleVelocityTrackerMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getReflectionReferences()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->getmLastMotionXReference()V

    .line 74
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->getmVelocityTrackerReference()V

    .line 75
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->getmIsBeingDraggedReference()V

    .line 76
    invoke-direct {p0}, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->getRecycleVelocityTrackerReference()V

    return-void
.end method

.method private getVelocityX(Landroid/widget/HorizontalScrollView;)Landroid/view/VelocityTracker;
    .locals 4

    .line 312
    sget-object v0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->sVelocityTracker:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 313
    sget-object p1, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string/jumbo v0, "mVelocityTracker is not resolved."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 318
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 319
    instance-of v0, p1, Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 320
    check-cast p1, Landroid/view/VelocityTracker;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 323
    sget-object v0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not access mVelocityTracker : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v1
.end method

.method private getmIsBeingDraggedReference()V
    .locals 2

    .line 106
    sget-object v0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->sIsBeingDragged:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    const-class v0, Landroid/widget/HorizontalScrollView;

    :try_start_0
    const-string/jumbo v1, "mIsBeingDragged"

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->sIsBeingDragged:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getmLastMotionXReference()V
    .locals 2

    .line 80
    sget-object v0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->sLastMotionX:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    const-class v0, Landroid/widget/HorizontalScrollView;

    :try_start_0
    const-string/jumbo v1, "mLastMotionX"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->sLastMotionX:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getmVelocityTrackerReference()V
    .locals 2

    .line 93
    sget-object v0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->sVelocityTracker:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    return-void

    .line 96
    :cond_0
    const-class v0, Landroid/widget/HorizontalScrollView;

    :try_start_0
    const-string/jumbo v1, "mVelocityTracker"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->sVelocityTracker:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private handleNestedFling(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 251
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->isScrolling(Landroid/widget/HorizontalScrollView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 253
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->getVelocityX(Landroid/widget/HorizontalScrollView;)Landroid/view/VelocityTracker;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 257
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    .line 258
    iget-object v1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    const/16 v2, 0x3e8

    int-to-float v0, v0

    .line 260
    invoke-virtual {p1, v2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 261
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    float-to-int p1, p1

    .line 262
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-le v0, v1, :cond_2

    if-gez p1, :cond_0

    .line 264
    sget-object p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;->Forward:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->handleFling(Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;)V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 266
    sget-object p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;->Backward:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->handleFling(Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private handleNestedScroll(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-direct {p0, v0}, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->isScrolling(Landroid/widget/HorizontalScrollView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-direct {p0, v0}, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->getLastTouchX(Landroid/widget/HorizontalScrollView;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 231
    :goto_0
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    .line 232
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v2, p1, :cond_3

    if-gez v0, :cond_1

    .line 234
    sget-object p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;->Backward:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->handleFling(Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;)V

    goto :goto_1

    :cond_1
    if-lez v0, :cond_2

    .line 236
    sget-object p1, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;->Forward:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->handleFling(Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;)V

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method private isScrolling(Landroid/widget/HorizontalScrollView;)Z
    .locals 4

    .line 337
    sget-object v0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->sIsBeingDragged:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 338
    sget-object p1, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string/jumbo v0, "mIsBeingDragged is not resolved."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 342
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 343
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 344
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 348
    sget-object v0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not access mIsBeingDragged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1
    return v1
.end method

.method private resetMIsBeingDragged()V
    .locals 4

    .line 185
    sget-object v0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->sIsBeingDragged:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 186
    sget-object v0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string/jumbo v1, "mIsBeingDragged is not resolved."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    :try_start_0
    sget-object v0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->sIsBeingDragged:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 191
    sget-object v1, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not access mIsBeingDragged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected handleFlingEvent(Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;)V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    if-nez v0, :cond_0

    .line 357
    sget-object p1, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string v0, "View not available to Eventhandler."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 360
    :cond_0
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 362
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 364
    :cond_1
    sget-object v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;->Forward:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 365
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p1

    neg-int p1, p1

    .line 366
    :goto_0
    sget-boolean v0, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollView scrolling by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    return-void
.end method

.method protected handleFlingEventByPercentage(F)V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    if-nez v0, :cond_0

    .line 375
    sget-object p1, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string v0, "View not available to Eventhandler."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 378
    :cond_0
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 380
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 382
    :cond_1
    sget-boolean v0, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollView scrolling by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    return-void
.end method

.method protected handleJump(FLcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;)V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    if-nez v0, :cond_0

    .line 391
    sget-object p1, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string p2, "View not available to Eventhandler."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 394
    :cond_0
    sget-object v1, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;->Y:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;

    if-ne p2, v1, :cond_1

    .line 395
    sget-object p1, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->WIDGET_CLASS_NAME:Ljava/lang/String;

    const-string p2, "Unexpected Axis in handleJump"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 398
    :cond_1
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 400
    invoke-interface {p2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 402
    :cond_2
    sget-boolean p2, Lcom/amazon/e3oseventhandler/E3OSLibraryUtils;->DEBUG:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 403
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollView scrolling to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    :cond_3
    iget-object p2, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p2, v0}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p1

    float-to-int p1, v1

    invoke-virtual {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return-void
.end method

.method public setFilter(Landroid/view/View;)V
    .locals 0

    .line 131
    new-instance p1, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler$1;

    invoke-direct {p1, p0}, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler$1;-><init>(Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;)V

    iput-object p1, p0, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->mScrollFilter:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setWidgetViewInternal(Landroid/view/View;)V
    .locals 1

    .line 410
    instance-of v0, p1, Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    .line 411
    check-cast p1, Landroid/widget/HorizontalScrollView;

    iput-object p1, p0, Lcom/amazon/e3oseventhandler/HorizontalScrollViewEventHandler;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    :cond_0
    return-void
.end method
