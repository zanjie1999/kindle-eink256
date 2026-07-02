.class public Lcom/amazon/kindle/krx/gesture/GestureEvent;
.super Ljava/lang/Object;
.source "GestureEvent.java"


# instance fields
.field private consumed:Z

.field private final motionEvent:Landroid/view/MotionEvent;

.field private virtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;


# direct methods
.method public constructor <init>(Landroid/view/MotionEvent;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/kindle/krx/gesture/GestureEvent;->motionEvent:Landroid/view/MotionEvent;

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consumed:Z

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/amazon/kindle/krx/gesture/GestureEvent;->virtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/gesture/GestureEvent;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget-object p1, p1, Lcom/amazon/kindle/krx/gesture/GestureEvent;->motionEvent:Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/gesture/GestureEvent;->motionEvent:Landroid/view/MotionEvent;

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consumed:Z

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/amazon/kindle/krx/gesture/GestureEvent;->virtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    return-void
.end method


# virtual methods
.method public consume()V
    .locals 1

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consumed:Z

    return-void
.end method

.method public final getDownTime()J
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/amazon/kindle/krx/gesture/GestureEvent;->motionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getEvent()Landroid/view/MotionEvent;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/krx/gesture/GestureEvent;->motionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public final getEventTime()J
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/krx/gesture/GestureEvent;->motionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInitialX()F
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/krx/gesture/GestureEvent;->motionEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v0

    return v0
.end method

.method public final getInitialY()F
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/amazon/kindle/krx/gesture/GestureEvent;->motionEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v0

    return v0
.end method

.method public final getPointerCount()I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/kindle/krx/gesture/GestureEvent;->motionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method public getVirtualView()Lcom/amazon/kindle/krx/accessibility/IVirtualView;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/amazon/kindle/krx/gesture/GestureEvent;->virtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    return-object v0
.end method

.method public final getX()F
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/krx/gesture/GestureEvent;->motionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public final getX(I)F
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/krx/gesture/GestureEvent;->motionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    return p1
.end method

.method public final getY()F
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/krx/gesture/GestureEvent;->motionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method

.method public final getY(I)F
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/amazon/kindle/krx/gesture/GestureEvent;->motionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    return p1
.end method

.method public final hasBeenConsumed()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consumed:Z

    return v0
.end method

.method public isToolTypeStylus()Z
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/amazon/kindle/krx/gesture/GestureEvent;->motionEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public setVirtualView(Lcom/amazon/kindle/krx/accessibility/IVirtualView;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/amazon/kindle/krx/gesture/GestureEvent;->virtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    return-void
.end method
