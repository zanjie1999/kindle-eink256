.class public Lcom/amazon/krf/internal/input/InputEventDetector;
.super Ljava/lang/Object;
.source "InputEventDetector.java"

# interfaces
.implements Lcom/amazon/krf/internal/input/OnInputEventListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final DEBUG:Z = false

.field private static final ENABLE_SCROLL_DELAY:I

.field private static final ENABLE_SCROLL_MSG:I = 0x1

.field private static final SCROLL_EVENT_DISTANCE:F = 100.0f

.field private static final TAG:Ljava/lang/String; = "InputEventDetector"


# instance fields
.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private final mDoubleTapDetector:Landroid/view/GestureDetector;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mHandledGestures:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/amazon/krf/platform/UIData$Type;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/amazon/krf/platform/UIEventHandler;

.field private mScaleFactor:F

.field private mScaleFocusX:F

.field private mScaleFocusY:F

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScrollEnabled:Z

.field private mSingleTapUpEvent:Landroid/view/MotionEvent;

.field private mStylusBehaviorEnabled:Z

.field private mTransaction:Lcom/amazon/krf/platform/UIHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/amazon/krf/internal/input/InputEventDetector;->ENABLE_SCROLL_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/krf/platform/UIEventHandler;)V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mScrollEnabled:Z

    .line 44
    const-class v1, Lcom/amazon/krf/platform/UIData$Type;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mHandledGestures:Ljava/util/EnumSet;

    .line 45
    iput-boolean v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mStylusBehaviorEnabled:Z

    .line 49
    iput-object p2, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mListener:Lcom/amazon/krf/platform/UIEventHandler;

    .line 51
    new-instance p2, Landroid/view/GestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p2, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 53
    iget-object p2, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 55
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v2, Lcom/amazon/krf/internal/input/CustomGestureFilter;

    invoke-direct {v2, p0}, Lcom/amazon/krf/internal/input/CustomGestureFilter;-><init>(Lcom/amazon/krf/internal/input/OnInputEventListener;)V

    invoke-direct {p2, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mDoubleTapDetector:Landroid/view/GestureDetector;

    .line 56
    invoke-virtual {p2, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 58
    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 59
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    .line 60
    invoke-virtual {p2, v1}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 63
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private disableScrollWithTimeout()V
    .locals 4

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mScrollEnabled:Z

    .line 160
    iget-object v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    iget-object v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/amazon/krf/internal/input/InputEventDetector;->ENABLE_SCROLL_DELAY:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private endTransaction()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mTransaction:Lcom/amazon/krf/platform/UIHandle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 171
    iget-object v2, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mListener:Lcom/amazon/krf/platform/UIEventHandler;

    invoke-interface {v2, v0}, Lcom/amazon/krf/platform/UIEventHandler;->UIEndTransaction(Lcom/amazon/krf/platform/UIHandle;)V

    .line 172
    iput-object v1, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mTransaction:Lcom/amazon/krf/platform/UIHandle;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 175
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 176
    iput-object v1, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mSingleTapUpEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    .line 179
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 180
    iput-object v1, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mSingleTapUpEvent:Landroid/view/MotionEvent;

    :cond_2
    return-void
.end method

.method private handleEvent(Lcom/amazon/krf/platform/UIData;)Z
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mListener:Lcom/amazon/krf/platform/UIEventHandler;

    iget-object v1, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mTransaction:Lcom/amazon/krf/platform/UIHandle;

    invoke-interface {v0, v1, p1}, Lcom/amazon/krf/platform/UIEventHandler;->UISendEvent(Lcom/amazon/krf/platform/UIHandle;Lcom/amazon/krf/platform/UIData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v1, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mHandledGestures:Ljava/util/EnumSet;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/UIData;->getType()Lcom/amazon/krf/platform/UIData$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mListener:Lcom/amazon/krf/platform/UIEventHandler;

    invoke-interface {v1, p1}, Lcom/amazon/krf/platform/UIEventHandler;->UIEventHandled(Lcom/amazon/krf/platform/UIData;)V

    :cond_0
    return v0
.end method

.method private isScrollEnabled()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mScrollEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private translateToolType(I)Lcom/amazon/krf/platform/UIData$TransactionType;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 251
    sget-object p1, Lcom/amazon/krf/platform/UIData$TransactionType;->TOUCH_TRANSACTION:Lcom/amazon/krf/platform/UIData$TransactionType;

    return-object p1

    .line 243
    :cond_0
    iget-boolean p1, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mStylusBehaviorEnabled:Z

    if-eqz p1, :cond_1

    .line 244
    sget-object p1, Lcom/amazon/krf/platform/UIData$TransactionType;->PEN_TRANSACTION:Lcom/amazon/krf/platform/UIData$TransactionType;

    return-object p1

    .line 246
    :cond_1
    sget-object p1, Lcom/amazon/krf/platform/UIData$TransactionType;->TOUCH_TRANSACTION:Lcom/amazon/krf/platform/UIData$TransactionType;

    return-object p1

    .line 248
    :cond_2
    sget-object p1, Lcom/amazon/krf/platform/UIData$TransactionType;->TOUCH_TRANSACTION:Lcom/amazon/krf/platform/UIData$TransactionType;

    return-object p1
.end method


# virtual methods
.method public enableStylusBehavior(Z)V
    .locals 0

    .line 256
    iput-boolean p1, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mStylusBehaviorEnabled:Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 214
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    iput-boolean v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mScrollEnabled:Z

    :goto_0
    return v0
.end method

.method public isStylusBehaviorEnabled()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mStylusBehaviorEnabled:Z

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/input/InputEventDetector;->translateToolType(I)Lcom/amazon/krf/platform/UIData$TransactionType;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazon/krf/platform/UIData;->createDoubleTap(FFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/input/InputEventDetector;->handleEvent(Lcom/amazon/krf/platform/UIData;)Z

    move-result p1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    .line 69
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 70
    iget-object v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mListener:Lcom/amazon/krf/platform/UIEventHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/input/InputEventDetector;->translateToolType(I)Lcom/amazon/krf/platform/UIData$TransactionType;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/krf/platform/UIEventHandler;->UIStartTransaction(FFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mTransaction:Lcom/amazon/krf/platform/UIHandle;

    .line 71
    iget-object p1, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mHandledGestures:Ljava/util/EnumSet;

    invoke-virtual {p1}, Ljava/util/EnumSet;->clear()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 130
    invoke-direct {p0}, Lcom/amazon/krf/internal/input/InputEventDetector;->isScrollEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 134
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/amazon/krf/internal/input/InputEventDetector;->translateToolType(I)Lcom/amazon/krf/platform/UIData$TransactionType;

    move-result-object p2

    invoke-static {p1, v1, p3, p4, p2}, Lcom/amazon/krf/platform/UIData;->createFling(FFFFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/input/InputEventDetector;->handleEvent(Lcom/amazon/krf/platform/UIData;)Z

    move-result p1

    return p1
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 264
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onHover::getActionMasked: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    iget-object p1, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    return v1

    .line 270
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    return v1

    .line 274
    :cond_1
    iget-boolean p1, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mStylusBehaviorEnabled:Z

    if-nez p1, :cond_2

    return v1

    .line 279
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-eq p1, v2, :cond_4

    const/16 v2, 0x9

    if-eq p1, v2, :cond_4

    const/16 v2, 0xa

    if-eq p1, v2, :cond_3

    .line 295
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v1

    .line 292
    :cond_3
    invoke-direct {p0}, Lcom/amazon/krf/internal/input/InputEventDetector;->endTransaction()V

    return v3

    .line 282
    :cond_4
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/input/InputEventDetector;->translateToolType(I)Lcom/amazon/krf/platform/UIData$TransactionType;

    move-result-object p1

    .line 285
    iget-object v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mTransaction:Lcom/amazon/krf/platform/UIHandle;

    if-nez v0, :cond_5

    .line 286
    iget-object v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mListener:Lcom/amazon/krf/platform/UIEventHandler;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/krf/platform/UIEventHandler;->UIStartTransaction(FFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mTransaction:Lcom/amazon/krf/platform/UIHandle;

    .line 288
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {v0, p2, p1}, Lcom/amazon/krf/platform/UIData;->createHover(FFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/input/InputEventDetector;->handleEvent(Lcom/amazon/krf/platform/UIData;)Z

    return v3
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mSingleTapUpEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    .line 122
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mSingleTapUpEvent:Landroid/view/MotionEvent;

    .line 125
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/input/InputEventDetector;->translateToolType(I)Lcom/amazon/krf/platform/UIData$TransactionType;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazon/krf/platform/UIData;->createLongPress(FFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/input/InputEventDetector;->handleEvent(Lcom/amazon/krf/platform/UIData;)Z

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 139
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iput v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mScaleFactor:F

    .line 140
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mScaleFocusX:F

    .line 141
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v0

    iput v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mScaleFocusY:F

    .line 142
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/amazon/krf/platform/UIData;->createPinch(FFFF)Lcom/amazon/krf/platform/UIData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/input/InputEventDetector;->handleEvent(Lcom/amazon/krf/platform/UIData;)Z

    move-result p1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4

    .line 152
    invoke-direct {p0}, Lcom/amazon/krf/internal/input/InputEventDetector;->disableScrollWithTimeout()V

    .line 153
    iget v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mScaleFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    .line 154
    iget v1, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mScaleFocusX:F

    iget v2, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mScaleFocusY:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    invoke-static {v1, v2, v3, v0, p1}, Lcom/amazon/krf/platform/UIData;->createPinchFling(FFFFF)Lcom/amazon/krf/platform/UIData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/input/InputEventDetector;->handleEvent(Lcom/amazon/krf/platform/UIData;)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    .line 110
    invoke-direct {p0}, Lcom/amazon/krf/internal/input/InputEventDetector;->isScrollEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    neg-float p3, p3

    neg-float p4, p4

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/amazon/krf/internal/input/InputEventDetector;->translateToolType(I)Lcom/amazon/krf/platform/UIData$TransactionType;

    move-result-object p2

    invoke-static {p1, v1, p3, p4, p2}, Lcom/amazon/krf/platform/UIData;->createDrag(FFFFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/input/InputEventDetector;->handleEvent(Lcom/amazon/krf/platform/UIData;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public onScrollEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 302
    invoke-direct {p0}, Lcom/amazon/krf/internal/input/InputEventDetector;->isScrollEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 307
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v2, 0x9

    .line 308
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 309
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/amazon/krf/internal/input/InputEventDetector;->translateToolType(I)Lcom/amazon/krf/platform/UIData$TransactionType;

    move-result-object v1

    .line 310
    iget-object v3, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mTransaction:Lcom/amazon/krf/platform/UIHandle;

    if-nez v3, :cond_1

    .line 311
    iget-object v3, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mListener:Lcom/amazon/krf/platform/UIEventHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-interface {v3, v4, v5, v1}, Lcom/amazon/krf/platform/UIEventHandler;->UIStartTransaction(FFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIHandle;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mTransaction:Lcom/amazon/krf/platform/UIHandle;

    .line 313
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v0, v0, v4

    mul-float v2, v2, v4

    invoke-static {v3, p1, v0, v2, v1}, Lcom/amazon/krf/platform/UIData;->createDrag(FFFFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/input/InputEventDetector;->handleEvent(Lcom/amazon/krf/platform/UIData;)Z

    move-result p1

    .line 314
    invoke-direct {p0}, Lcom/amazon/krf/internal/input/InputEventDetector;->endTransaction()V

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mTransaction:Lcom/amazon/krf/platform/UIHandle;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/input/InputEventDetector;->translateToolType(I)Lcom/amazon/krf/platform/UIData$TransactionType;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazon/krf/platform/UIData;->createSingleTap(FFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/input/InputEventDetector;->handleEvent(Lcom/amazon/krf/platform/UIData;)Z

    .line 93
    invoke-direct {p0}, Lcom/amazon/krf/internal/input/InputEventDetector;->endTransaction()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mSingleTapUpEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/amazon/krf/internal/input/InputEventDetector;->translateToolType(I)Lcom/amazon/krf/platform/UIData$TransactionType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/krf/platform/UIData;->createSingleTapUp(FFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/krf/internal/input/InputEventDetector;->handleEvent(Lcom/amazon/krf/platform/UIData;)Z

    .line 84
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mSingleTapUpEvent:Landroid/view/MotionEvent;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceDestroyed()V
    .locals 0

    .line 319
    invoke-direct {p0}, Lcom/amazon/krf/internal/input/InputEventDetector;->endTransaction()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mSingleTapUpEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 189
    :goto_0
    iget-object v3, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 190
    iget-object v3, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mDoubleTapDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 191
    iget-object v3, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/amazon/krf/internal/input/InputEventDetector;->mSingleTapUpEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 195
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v2, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto :goto_1

    .line 203
    :cond_2
    invoke-direct {p0}, Lcom/amazon/krf/internal/input/InputEventDetector;->endTransaction()V

    goto :goto_1

    .line 198
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v2, :cond_4

    if-nez v1, :cond_4

    .line 199
    invoke-direct {p0}, Lcom/amazon/krf/internal/input/InputEventDetector;->endTransaction()V

    :cond_4
    :goto_1
    return v2
.end method
