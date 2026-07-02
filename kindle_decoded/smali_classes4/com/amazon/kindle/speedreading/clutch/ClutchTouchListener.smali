.class public Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;
.super Ljava/lang/Object;
.source "ClutchTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final CROSSFADE_DELAY:I = 0xc8

.field private static final MAX_FLING_SPEED:I = 0x2d

.field private static final MAX_SPEED:I = 0x19

.field private static final MIN_SPEED:I = 0x1


# instance fields
.field private caughtScroll:Z

.field private final clutchView:Lcom/amazon/kindle/speedreading/clutch/ClutchView;

.field private detector:Landroid/view/GestureDetector;

.field private disabled:Z

.field private dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

.field private fling:Z

.field private flingMode:Z

.field private final looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

.field private maxSpeed:F

.field private mouseDownX:F

.field private mouseDownY:F

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private showingClutch:Z

.field private final speedReadingBox:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

.field private speeds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private stopping:Z

.field private final wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

.field private final wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;Landroid/view/View;Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V
    .locals 3

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->showingClutch:Z

    .line 41
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->flingMode:Z

    .line 48
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->caughtScroll:Z

    .line 54
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->stopping:Z

    .line 60
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->fling:Z

    .line 63
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->disabled:Z

    const/4 v1, 0x0

    .line 71
    iput v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->maxSpeed:F

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->speeds:Ljava/util/List;

    .line 87
    iput v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->mouseDownX:F

    .line 88
    iput v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->mouseDownY:F

    .line 94
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    .line 96
    sget p1, Lcom/amazon/kindle/speedreading/R$id;->dt_word_container_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    .line 97
    sget p1, Lcom/amazon/kindle/speedreading/R$id;->dt_speed_reading_box_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->speedReadingBox:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

    .line 98
    sget p1, Lcom/amazon/kindle/speedreading/R$id;->clutchview:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->clutchView:Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    .line 99
    iput-object p3, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    .line 100
    iput-object p4, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 101
    iput-object p5, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    .line 103
    new-instance p1, Landroid/view/GestureDetector;

    invoke-interface {p4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->detector:Landroid/view/GestureDetector;

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->showingClutch:Z

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;)Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    return-object p0
.end method


# virtual methods
.method public hideClutch()V
    .locals 7

    .line 154
    iget-boolean v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->showingClutch:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->showingClutch:Z

    .line 157
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->flingMode:Z

    .line 159
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->clutchView:Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->getClutchControls()Lcom/amazon/kindle/speedreading/clutch/IClutchControls;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/speedreading/clutch/IClutchControls;->pauseClutch()V

    .line 161
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->updateCurrentWord()V

    .line 162
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->clutchView:Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    invoke-virtual {v2}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->getClutchControls()Lcom/amazon/kindle/speedreading/clutch/IClutchControls;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/speedreading/clutch/IClutchControls;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->speedReadingBox:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 167
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 170
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    .line 171
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    .line 172
    iget-object v5, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->clutchView:Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    invoke-virtual {v5}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->getClutchControls()Lcom/amazon/kindle/speedreading/clutch/IClutchControls;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/speedreading/clutch/IClutchControls;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v5

    .line 174
    iget-object v6, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v6, v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->enablePlayPause(Z)V

    .line 175
    iget-object v6, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v6, v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->enableCloseButton(Z)V

    .line 176
    iget-object v6, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v6, v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->enableForwardRewind(Z)V

    .line 179
    invoke-virtual {v5, v3, v4}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->isBetween(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {v5}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 188
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getMetricsHandler()Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    .line 189
    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    .line 188
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->reportClutchHiddenMetric(I)V

    :cond_1
    return-void
.end method

.method public isFlingMode()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->flingMode:Z

    return v0
.end method

.method public isShowingClutch()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->showingClutch:Z

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    .line 238
    iput v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->maxSpeed:F

    .line 240
    iget-boolean v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->showingClutch:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 242
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->showClutch(Z)V

    .line 244
    iget-object v3, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->clutchView:Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    invoke-virtual {v3}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->getClutchControls()Lcom/amazon/kindle/speedreading/clutch/IClutchControls;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/amazon/kindle/speedreading/clutch/IClutchControls;->setUseFriction(Z)V

    .line 247
    iget-object v3, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {v3, v1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->enablePlayPause(Z)V

    goto :goto_0

    .line 251
    :cond_0
    iput-boolean v2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->flingMode:Z

    .line 254
    :goto_0
    iget-boolean v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->flingMode:Z

    if-eqz v1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->clutchView:Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->getClutchControls()Lcom/amazon/kindle/speedreading/clutch/IClutchControls;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/speedreading/clutch/IClutchControls;->getClutchSpeed()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1

    .line 258
    iput-boolean v2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->stopping:Z

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->clutchView:Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->getClutchControls()Lcom/amazon/kindle/speedreading/clutch/IClutchControls;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/speedreading/clutch/IClutchControls;->setClutchSpeed(F)V

    .line 264
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->mouseDownX:F

    .line 265
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->mouseDownY:F

    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 273
    iget-boolean p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->flingMode:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 275
    iput-boolean p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->fling:Z

    .line 277
    iget-object p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->clutchView:Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    invoke-virtual {p2}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->getClutchControls()Lcom/amazon/kindle/speedreading/clutch/IClutchControls;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/kindle/speedreading/clutch/IClutchControls;->setUseFriction(Z)V

    .line 280
    iget-object p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->speeds:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 282
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr p4, v0

    goto :goto_0

    .line 285
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->speeds:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/high16 v0, -0x40800000    # -1.0f

    if-lez p2, :cond_2

    .line 287
    iget-object p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->speeds:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p4, p2

    mul-float p4, p4, v0

    .line 289
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 v0, 0x40600000    # 3.5f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    .line 291
    iget-object p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->clutchView:Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    invoke-virtual {p2}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->getClutchControls()Lcom/amazon/kindle/speedreading/clutch/IClutchControls;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/amazon/kindle/speedreading/clutch/IClutchControls;->setClutchSpeed(F)V

    goto :goto_1

    .line 295
    :cond_1
    iget-object p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->clutchView:Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    invoke-virtual {p2}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->getClutchControls()Lcom/amazon/kindle/speedreading/clutch/IClutchControls;

    move-result-object p2

    invoke-interface {p2, p4}, Lcom/amazon/kindle/speedreading/clutch/IClutchControls;->setClutchSpeed(F)V

    goto :goto_1

    .line 300
    :cond_2
    iget-object p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->clutchView:Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    invoke-virtual {p2}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->getClutchControls()Lcom/amazon/kindle/speedreading/clutch/IClutchControls;

    move-result-object p2

    iget p3, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->maxSpeed:F

    mul-float p3, p3, v0

    invoke-interface {p2, p3}, Lcom/amazon/kindle/speedreading/clutch/IClutchControls;->setClutchSpeed(F)V

    :goto_1
    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .line 319
    iget-boolean p4, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->flingMode:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_8

    .line 321
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    const/4 p4, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    .line 323
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->clutchView:Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->getClutchControls()Lcom/amazon/kindle/speedreading/clutch/IClutchControls;

    move-result-object p1

    invoke-interface {p1, p4}, Lcom/amazon/kindle/speedreading/clutch/IClutchControls;->setClutchSpeed(F)V

    goto :goto_2

    :cond_0
    const/high16 p1, -0x3dcc0000    # -45.0f

    const/high16 p2, 0x42340000    # 45.0f

    cmpl-float v2, p3, p2

    if-lez v2, :cond_1

    const/high16 p3, 0x42340000    # 45.0f

    goto :goto_0

    :cond_1
    cmpg-float p2, p3, p1

    if-gez p2, :cond_2

    const/high16 p3, -0x3dcc0000    # -45.0f

    :cond_2
    :goto_0
    cmpl-float p1, p3, p4

    if-lez p1, :cond_3

    .line 338
    iget p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->maxSpeed:F

    cmpg-float p1, p1, p4

    if-ltz p1, :cond_4

    :cond_3
    cmpg-float p1, p3, p4

    if-gez p1, :cond_5

    iget p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->maxSpeed:F

    cmpl-float p1, p1, p4

    if-lez p1, :cond_5

    .line 340
    :cond_4
    iput p4, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->maxSpeed:F

    .line 341
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->speeds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 344
    :cond_5
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->maxSpeed:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_6

    .line 346
    iput p3, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->maxSpeed:F

    .line 349
    :cond_6
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->speeds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x5

    if-ge p1, p2, :cond_7

    .line 351
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->speeds:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 355
    :cond_7
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->speeds:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 356
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->speeds:Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    :goto_1
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->clutchView:Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->getClutchControls()Lcom/amazon/kindle/speedreading/clutch/IClutchControls;

    move-result-object p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float p3, p3, p2

    invoke-interface {p1, p3}, Lcom/amazon/kindle/speedreading/clutch/IClutchControls;->setClutchSpeed(F)V

    :goto_2
    return v1

    :cond_8
    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    .line 369
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    .line 370
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 372
    iput-boolean v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->caughtScroll:Z

    const/high16 p3, 0x41c00000    # 24.0f

    const/high16 p4, 0x41200000    # 10.0f

    cmpl-float v2, p1, p2

    if-ltz v2, :cond_a

    sub-float v2, p1, p2

    div-float p4, p1, p4

    cmpg-float p4, v2, p4

    if-gez p4, :cond_9

    goto :goto_3

    :cond_9
    sub-float/2addr p2, p1

    mul-float p2, p2, p3

    neg-float p1, p1

    div-float/2addr p2, p1

    float-to-int p1, p2

    add-int/2addr p1, v1

    neg-int v0, p1

    goto :goto_3

    :cond_a
    sub-float/2addr p2, p1

    .line 390
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->clutchView:Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p1

    div-float/2addr v2, p4

    cmpg-float p4, p2, v2

    if-gez p4, :cond_b

    goto :goto_3

    :cond_b
    mul-float p2, p2, p3

    .line 395
    iget-object p3, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->clutchView:Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    invoke-virtual {p3}, Landroid/view/SurfaceView;->getWidth()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p3, p1

    div-float/2addr p2, p3

    float-to-int p1, p2

    add-int/lit8 v0, p1, 0x1

    .line 399
    :goto_3
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->clutchView:Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->getClutchControls()Lcom/amazon/kindle/speedreading/clutch/IClutchControls;

    move-result-object p1

    int-to-float p2, v0

    invoke-interface {p1, p2}, Lcom/amazon/kindle/speedreading/clutch/IClutchControls;->setClutchSpeed(F)V

    :cond_c
    return v1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 415
    iget-boolean v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->caughtScroll:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->mouseDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->mouseDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v3

    if-gez p1, :cond_3

    .line 417
    :cond_0
    iget-boolean p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->flingMode:Z

    if-eqz p1, :cond_2

    .line 419
    iget-boolean p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->stopping:Z

    if-nez p1, :cond_1

    .line 421
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getControlPanel()Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel;->resumeFromHolding()V

    goto :goto_0

    .line 425
    :cond_1
    iput-boolean v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->stopping:Z

    goto :goto_0

    .line 430
    :cond_2
    iput-boolean v2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->flingMode:Z

    .line 433
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {p1, v2}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->enablePlayPause(Z)V

    .line 434
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {p1, v2}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->enableForwardRewind(Z)V

    .line 437
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    sget-object v0, Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;->HOLDING:Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->setPlayPauseMode(Lcom/amazon/kindle/speedreading/doubletime/ControlPanel$PlayPauseMode;)V

    .line 439
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getMetricsHandler()Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->reportClutchTapToPauseMetric()V

    :goto_0
    return v2

    .line 446
    :cond_3
    iget-boolean p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->flingMode:Z

    if-nez p1, :cond_4

    .line 448
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->hideClutch()V

    .line 449
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->startLooperAfterDelay()V

    goto :goto_1

    .line 453
    :cond_4
    iget-boolean p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->caughtScroll:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->fling:Z

    if-nez p1, :cond_5

    .line 455
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->clutchView:Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->getClutchControls()Lcom/amazon/kindle/speedreading/clutch/IClutchControls;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/speedreading/clutch/IClutchControls;->setClutchSpeed(F)V

    .line 458
    :cond_5
    iput-boolean v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->fling:Z

    :goto_1
    return v2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 467
    iget-boolean p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->disabled:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 476
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->detector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 479
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 483
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    return v1

    .line 487
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 489
    iget-boolean p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->flingMode:Z

    if-nez p1, :cond_3

    .line 491
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->hideClutch()V

    .line 493
    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->startLooperAfterDelay()V

    return v0

    :cond_3
    return v1

    .line 502
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_5

    :cond_5
    return v1

    :cond_6
    return p1
.end method

.method public declared-synchronized setGesturesDisabled(Z)V
    .locals 0

    monitor-enter p0

    .line 232
    :try_start_0
    iput-boolean p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->disabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public showClutch(Z)V
    .locals 4

    .line 113
    iget-boolean v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->showingClutch:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->showingClutch:Z

    .line 116
    iput-boolean p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->flingMode:Z

    const/4 p1, 0x0

    .line 117
    iput-boolean p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->caughtScroll:Z

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->pauseDoubletime()V

    .line 121
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->clutchView:Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->updateColors(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 124
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 126
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->speedReadingBox:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeSpeedReadingBox;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 129
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->clutchView:Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->getClutchControls()Lcom/amazon/kindle/speedreading/clutch/IClutchControls;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/amazon/kindle/speedreading/clutch/IClutchControls;->setClutchSpeed(F)V

    .line 130
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->clutchView:Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->getClutchControls()Lcom/amazon/kindle/speedreading/clutch/IClutchControls;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/speedreading/clutch/IClutchControls;->resetClutch(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;)V

    .line 131
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->clutchView:Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 134
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->dtController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->getMetricsHandler()Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    .line 135
    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    .line 134
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/speedreading/metric/DoubleTimeMetrics;->reportClutchShownMetric(I)V

    :cond_0
    return-void
.end method

.method public startLooperAfterDelay()V
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->wordContainer:Lcom/amazon/kindle/speedreading/doubletime/DoubleTimeWordContainer;

    new-instance v1, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener$1;-><init>(Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public updateCurrentWord()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->looper:Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchTouchListener;->clutchView:Lcom/amazon/kindle/speedreading/clutch/ClutchView;

    invoke-virtual {v1}, Lcom/amazon/kindle/speedreading/clutch/ClutchView;->getClutchControls()Lcom/amazon/kindle/speedreading/clutch/IClutchControls;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/speedreading/clutch/IClutchControls;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/framework/DoubletimeLooper;->setCurrentWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)V

    return-void
.end method
