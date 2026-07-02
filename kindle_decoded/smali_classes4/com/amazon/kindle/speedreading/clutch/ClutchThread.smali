.class Lcom/amazon/kindle/speedreading/clutch/ClutchThread;
.super Ljava/lang/Thread;
.source "ClutchThread.java"

# interfaces
.implements Lcom/amazon/kindle/speedreading/clutch/IClutchControls;


# static fields
.field private static final ANIMATE_TO_WORD_SPEED:I = 0x32

.field private static final CLUTCH_DELTA_PERCENT:F = 0.01f

.field private static final MIN_CLUTCH_SPEED:F = 0.5f


# instance fields
.field private alive:Z

.field private animateToWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

.field private animateToWordOnCompleteCallback:Ljava/lang/Runnable;

.field private backgroundColor:I

.field private boldTypeface:Landroid/graphics/Typeface;

.field private currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

.field private entryWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

.field private final holder:Landroid/view/SurfaceHolder;

.field private isAnimatingToWord:Z

.field private maxAlpha:F

.field private maxFontSize:F

.field private maxScaleX:F

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private minAlpha:F

.field private minFontSize:F

.field private minScaleX:F

.field private nextWordCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/kindle/speedreading/doubletime/framework/Word;",
            "Lcom/amazon/kindle/speedreading/doubletime/framework/Word;",
            ">;"
        }
    .end annotation
.end field

.field private paddingTop:F

.field private paintObj:Landroid/graphics/Paint;

.field private paused:Z

.field private rectObj:Landroid/graphics/Rect;

.field private final screenDensity:F

.field private speed:F

.field private textColor:I

.field private typeface:Landroid/graphics/Typeface;

.field private useFriction:Z

.field private wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceHolder;F)V
    .locals 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    const/high16 v1, 0x42400000    # 48.0f

    .line 37
    iput v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->maxFontSize:F

    const/high16 v1, 0x41a00000    # 20.0f

    .line 38
    iput v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->minFontSize:F

    const/high16 v1, 0x437f0000    # 255.0f

    .line 39
    iput v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->maxAlpha:F

    const/high16 v1, 0x41200000    # 10.0f

    .line 40
    iput v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->minAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 41
    iput v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->maxScaleX:F

    .line 42
    iput v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->minScaleX:F

    const/high16 v1, -0x1000000

    .line 44
    iput v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->textColor:I

    const/4 v1, -0x1

    .line 46
    iput v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->backgroundColor:I

    .line 48
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->typeface:Landroid/graphics/Typeface;

    .line 51
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iput-object v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->boldTypeface:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    .line 55
    iput-boolean v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->useFriction:Z

    .line 58
    iput-boolean v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->paused:Z

    .line 61
    iput-boolean v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->alive:Z

    .line 63
    iput-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->paintObj:Landroid/graphics/Paint;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->rectObj:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->paddingTop:F

    .line 74
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->nextWordCache:Ljava/util/HashMap;

    const/4 v2, 0x0

    .line 83
    iput-boolean v2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->isAnimatingToWord:Z

    .line 111
    iput v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->speed:F

    .line 98
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->holder:Landroid/view/SurfaceHolder;

    .line 99
    iput p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->screenDensity:F

    .line 101
    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->getInstance()Lcom/amazon/kindle/speedreading/doubletime/FontSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->typeface:Landroid/graphics/Typeface;

    .line 102
    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->boldTypeface:Landroid/graphics/Typeface;

    .line 104
    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->getInstance()Lcom/amazon/kindle/speedreading/doubletime/FontSettings;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->getTextSize(Z)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->maxFontSize:F

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 105
    iput p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->minFontSize:F

    .line 107
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->holder:Landroid/view/SurfaceHolder;

    const/4 p2, -0x3

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method private applyFriction()V
    .locals 4

    .line 532
    iget v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->speed:F

    const v1, 0x3c23d70a    # 0.01f

    mul-float v1, v1, v0

    .line 534
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    const/high16 v3, -0x41000000    # -0.5f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 538
    iput v2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->speed:F

    goto :goto_0

    :cond_0
    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    add-float/2addr v0, v1

    .line 544
    iput v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->speed:F

    goto :goto_0

    :cond_1
    sub-float/2addr v0, v1

    .line 548
    iput v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->speed:F

    :goto_0
    return-void
.end method

.method private drawWord(Landroid/graphics/Canvas;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;F)V
    .locals 3

    .line 437
    invoke-direct {p0, p1, p3, p2}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->getPaintAtX(Landroid/graphics/Canvas;FLcom/amazon/kindle/speedreading/doubletime/framework/Word;)Landroid/graphics/Paint;

    move-result-object v0

    .line 438
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->paddingTop:F

    add-float/2addr v1, v2

    .line 439
    invoke-virtual {p2}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3, v1, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private finishAnimateToWord()V
    .locals 1

    const/4 v0, 0x0

    .line 669
    iput v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->speed:F

    const/4 v0, 0x0

    .line 670
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->isAnimatingToWord:Z

    .line 672
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->animateToWordOnCompleteCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 674
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private getNextWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->nextWordCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->nextWordCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    return-object p1

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;->getNextWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->nextWordCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getPaintAtX(Landroid/graphics/Canvas;FLcom/amazon/kindle/speedreading/doubletime/framework/Word;)Landroid/graphics/Paint;
    .locals 4

    .line 367
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->paintObj:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 368
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->paintObj:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 369
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->paintObj:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 370
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->paintObj:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 372
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->paintObj:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 373
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->paintObj:Landroid/graphics/Paint;

    iget v2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->textColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->entryWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {v0, p3}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 379
    iget-object p3, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->paintObj:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->boldTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 380
    iget-object p3, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->paintObj:Landroid/graphics/Paint;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 383
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p1

    .line 390
    div-int/lit8 p3, p1, 0x2

    int-to-float p3, p3

    cmpg-float v0, p2, p3

    if-gtz v0, :cond_1

    div-float/2addr p2, p3

    .line 392
    iget p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->maxFontSize:F

    iget p3, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->minFontSize:F

    sub-float/2addr p1, p3

    mul-float p1, p1, p2

    add-float/2addr p1, p3

    .line 393
    iget p3, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->maxAlpha:F

    iget v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->minAlpha:F

    sub-float/2addr p3, v0

    mul-float p3, p3, p2

    add-float/2addr p3, v0

    .line 394
    iget v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->maxScaleX:F

    iget v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->minScaleX:F

    sub-float/2addr v0, v1

    mul-float p2, p2, v0

    add-float/2addr p2, v1

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    sub-float/2addr p1, p2

    div-float/2addr p1, p3

    .line 398
    iget p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->maxFontSize:F

    iget p3, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->minFontSize:F

    sub-float/2addr p2, p3

    mul-float p2, p2, p1

    add-float/2addr p2, p3

    .line 399
    iget p3, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->maxAlpha:F

    iget v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->minAlpha:F

    sub-float/2addr p3, v0

    mul-float p3, p3, p1

    add-float/2addr p3, v0

    .line 400
    iget v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->maxScaleX:F

    iget v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->minScaleX:F

    sub-float/2addr v0, v1

    mul-float p1, p1, v0

    add-float/2addr p1, v1

    move v3, p2

    move p2, p1

    move p1, v3

    :goto_0
    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_2

    const/4 p3, 0x0

    .line 405
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->paintObj:Landroid/graphics/Paint;

    iget v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->screenDensity:F

    mul-float p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 406
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->paintObj:Landroid/graphics/Paint;

    float-to-int p3, p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 407
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->paintObj:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 409
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->paintObj:Landroid/graphics/Paint;

    return-object p1
.end method

.method private getWordWidth(Landroid/graphics/Canvas;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)I
    .locals 3

    .line 421
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->getPaintAtX(Landroid/graphics/Canvas;FLcom/amazon/kindle/speedreading/doubletime/framework/Word;)Landroid/graphics/Paint;

    move-result-object p1

    .line 423
    invoke-virtual {p2}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    iget-object v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->rectObj:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 425
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->rectObj:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    return p1
.end method

.method private releaseEmptyCanvas()V
    .locals 3

    const/4 v0, 0x0

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    const/4 v1, 0x0

    .line 344
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 354
    :catch_1
    throw v1

    :catch_2
    :goto_0
    return-void
.end method

.method private setAnimateToWordSpeed(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;FIZ)V
    .locals 2

    if-eqz p4, :cond_0

    .line 615
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->finishAnimateToWord()V

    return-void

    .line 619
    :cond_0
    iget-object p4, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->animateToWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    invoke-virtual {p1, p4}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/high16 v0, 0x42480000    # 50.0f

    const/4 v1, 0x0

    if-nez p4, :cond_3

    .line 623
    iget-object p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->animateToWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    invoke-virtual {p2}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/amazon/kindle/krx/reader/IPosition;->isBefore(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->speed:F

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_1

    .line 625
    iput v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->speed:F

    goto :goto_0

    .line 627
    :cond_1
    iget-object p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->animateToWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    invoke-virtual {p2}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->speed:F

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_2

    const/high16 p1, -0x3db80000    # -50.0f

    .line 629
    iput p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->speed:F

    goto :goto_0

    .line 634
    :cond_2
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->finishAnimateToWord()V

    goto :goto_0

    .line 641
    :cond_3
    iget p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->speed:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_4

    int-to-float p1, p3

    cmpg-float p1, p1, p2

    if-lez p1, :cond_5

    :cond_4
    iget p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->speed:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_6

    int-to-float p1, p3

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_6

    .line 644
    :cond_5
    invoke-direct {p0}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->finishAnimateToWord()V

    goto :goto_0

    :cond_6
    int-to-float p1, p3

    sub-float/2addr p1, p2

    .line 650
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 652
    iget p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->speed:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_7

    cmpg-float p2, p1, v0

    if-gez p2, :cond_7

    .line 654
    iput p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->speed:F

    goto :goto_0

    .line 656
    :cond_7
    iget p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->speed:F

    cmpg-float p2, p2, v1

    if-gez p2, :cond_8

    cmpg-float p2, p1, v0

    if-gez p2, :cond_8

    neg-float p1, p1

    .line 658
    iput p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->speed:F

    :cond_8
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized animateToWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;Ljava/lang/Runnable;)Z
    .locals 1

    monitor-enter p0

    .line 588
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->isAnimatingToWord:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 590
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->isAnimatingToWord:Z

    .line 591
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->animateToWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    .line 592
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->animateToWordOnCompleteCallback:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 593
    iput p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->speed:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    monitor-exit p0

    return v0

    :cond_0
    const/4 p1, 0x0

    .line 598
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getClutchSpeed()F
    .locals 1

    monitor-enter p0

    .line 509
    :try_start_0
    iget v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->speed:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    return-object v0
.end method

.method public declared-synchronized pauseClutch()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    .line 464
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->paused:Z

    .line 465
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/speedreading/clutch/ClutchEvent;

    sget-object v2, Lcom/amazon/kindle/speedreading/clutch/ClutchEvent$EventType;->PAUSE:Lcom/amazon/kindle/speedreading/clutch/ClutchEvent$EventType;

    invoke-virtual {p0}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->getCurrentWord()Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/speedreading/clutch/ClutchEvent;-><init>(Lcom/amazon/kindle/speedreading/clutch/ClutchEvent$EventType;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetClutch(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;)V
    .locals 2

    monitor-enter p0

    .line 474
    :try_start_0
    iput-object p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    .line 475
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    const/4 p2, 0x0

    .line 476
    iput-boolean p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->paused:Z

    .line 477
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->entryWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    .line 480
    iput-boolean p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->isAnimatingToWord:Z

    .line 481
    iget-object p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-eqz p2, :cond_0

    .line 483
    iget-object p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/kindle/speedreading/clutch/ClutchEvent;

    sget-object v1, Lcom/amazon/kindle/speedreading/clutch/ClutchEvent$EventType;->RESUME:Lcom/amazon/kindle/speedreading/clutch/ClutchEvent$EventType;

    invoke-direct {v0, v1, p1}, Lcom/amazon/kindle/speedreading/clutch/ClutchEvent;-><init>(Lcom/amazon/kindle/speedreading/clutch/ClutchEvent$EventType;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)V

    invoke-interface {p2, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 485
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 19

    move-object/from16 v1, p0

    .line 125
    iget v0, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->screenDensity:F

    float-to-int v0, v0

    mul-int/lit8 v2, v0, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v3

    const/4 v5, 0x0

    .line 127
    :goto_0
    iget-boolean v6, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->alive:Z

    if-eqz v6, :cond_11

    .line 129
    monitor-enter p0

    move-object v6, v0

    .line 133
    :goto_1
    :try_start_0
    iget-boolean v0, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->paused:Z

    const/4 v7, 0x0

    if-nez v0, :cond_10

    iget-object v0, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    goto/16 :goto_d

    :cond_0
    const/4 v8, 0x1

    int-to-long v9, v8

    .line 155
    :try_start_1
    invoke-virtual {v1, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v9, v0

    .line 159
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 163
    :goto_2
    iget-boolean v0, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->alive:Z

    if-nez v0, :cond_1

    .line 165
    monitor-exit p0

    goto/16 :goto_e

    .line 167
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 174
    :try_start_3
    iget-object v0, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v15
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 177
    :try_start_4
    iget v0, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->speed:F

    .line 179
    invoke-virtual {v15}, Landroid/graphics/Canvas;->getWidth()I

    move-result v16

    .line 181
    const-class v9, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    invoke-static {v9}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v9

    invoke-virtual {v9}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    const/4 v14, 0x2

    if-eqz v9, :cond_2

    .line 182
    invoke-interface {v9, v14}, Lcom/amazon/kindle/krx/ui/DarkModeHelper;->isDarkModePhaseEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 185
    invoke-direct {v1, v15, v4, v3}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->getPaintAtX(Landroid/graphics/Canvas;FLcom/amazon/kindle/speedreading/doubletime/framework/Word;)Landroid/graphics/Paint;

    move-result-object v13

    .line 186
    iget v9, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->backgroundColor:I

    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 188
    invoke-virtual {v15}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    int-to-float v12, v9

    invoke-virtual {v15}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    int-to-float v9, v9

    move/from16 v17, v9

    move-object v9, v15

    move-object/from16 v18, v13

    move/from16 v13, v17

    const/16 v17, 0x2

    move-object/from16 v14, v18

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_2
    const/16 v17, 0x2

    .line 193
    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v15, v7, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_3
    if-nez v6, :cond_5

    .line 200
    iget-object v6, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    .line 203
    div-int/lit8 v9, v16, 0x2

    int-to-float v9, v9

    iget v5, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->speed:F

    sub-float/2addr v9, v5

    move v5, v9

    :goto_4
    cmpl-float v9, v5, v4

    if-lez v9, :cond_4

    .line 207
    invoke-direct {v1, v15, v6}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->getWordWidth(Landroid/graphics/Canvas;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)I

    move-result v9

    .line 208
    iget-object v10, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    invoke-interface {v10, v6}, Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;->getPreviousWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v10, :cond_3

    goto :goto_5

    .line 215
    :cond_3
    :try_start_5
    invoke-direct {v1, v15, v10}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->getWordWidth(Landroid/graphics/Canvas;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)I

    move-result v6

    .line 218
    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float v9, v5, v9

    int-to-float v11, v2

    sub-float/2addr v9, v11

    div-int/lit8 v6, v6, 0x2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    int-to-float v5, v6

    sub-float v5, v9, v5

    move-object v6, v10

    goto :goto_4

    :catch_1
    move-object v6, v10

    goto/16 :goto_b

    .line 221
    :cond_4
    :goto_5
    :try_start_6
    invoke-virtual {v15}, Landroid/graphics/Canvas;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-direct {v1, v15, v9, v3}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->getPaintAtX(Landroid/graphics/Canvas;FLcom/amazon/kindle/speedreading/doubletime/framework/Word;)Landroid/graphics/Paint;

    move-result-object v9

    .line 222
    invoke-virtual {v9}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/Paint;->descent()F

    move-result v9

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v9, v9, v11

    add-float/2addr v10, v9

    div-float/2addr v10, v11

    neg-float v9, v10

    iput v9, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->paddingTop:F

    :cond_5
    cmpl-float v9, v0, v4

    if-lez v9, :cond_6

    .line 230
    iget-object v10, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    invoke-virtual {v6, v10}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    invoke-interface {v10, v6}, Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;->getPreviousWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v10

    if-nez v10, :cond_7

    goto :goto_6

    :cond_6
    cmpg-float v10, v0, v4

    if-gez v10, :cond_7

    .line 235
    iget-object v10, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    invoke-virtual {v6, v10}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-direct {v1, v6}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->getNextWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v10

    if-nez v10, :cond_7

    :goto_6
    const/4 v7, 0x1

    :cond_7
    if-nez v7, :cond_8

    add-float/2addr v5, v0

    :cond_8
    move v8, v5

    move v10, v8

    move-object v11, v6

    move-object v12, v11

    .line 255
    :goto_7
    invoke-virtual {v15}, Landroid/graphics/Canvas;->getWidth()I

    move-result v13

    int-to-float v13, v13

    cmpg-float v13, v8, v13

    if-gez v13, :cond_b

    .line 257
    div-int/lit8 v13, v16, 0x2

    int-to-float v13, v13

    sub-float/2addr v13, v8

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    div-int/lit8 v14, v16, 0x2

    int-to-float v14, v14

    sub-float/2addr v14, v10

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_9

    move v10, v8

    move-object v12, v11

    .line 262
    :cond_9
    invoke-direct {v1, v15, v11, v8}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->drawWord(Landroid/graphics/Canvas;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;F)V

    .line 264
    invoke-direct {v1, v15, v11}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->getWordWidth(Landroid/graphics/Canvas;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)I

    move-result v13

    .line 266
    invoke-direct {v1, v11}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->getNextWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v11

    if-nez v11, :cond_a

    goto :goto_8

    .line 271
    :cond_a
    invoke-direct {v1, v15, v11}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->getWordWidth(Landroid/graphics/Canvas;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)I

    move-result v14

    .line 274
    div-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v2

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    int-to-float v13, v13

    add-float/2addr v8, v13

    goto :goto_7

    .line 278
    :cond_b
    :goto_8
    iget-object v8, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->nextWordCache:Ljava/util/HashMap;

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iput-object v12, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->currentWord:Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    .line 284
    invoke-direct {v1, v15, v6}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->getWordWidth(Landroid/graphics/Canvas;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)I

    move-result v8

    if-lez v9, :cond_c

    cmpl-float v9, v5, v4

    if-lez v9, :cond_c

    .line 287
    iget-object v0, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->wordProvider:Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;

    invoke-interface {v0, v6}, Lcom/amazon/kindle/speedreading/doubletime/framework/IWordProvider;->getPreviousWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 290
    invoke-direct {v1, v15, v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->getWordWidth(Landroid/graphics/Canvas;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)I

    move-result v9

    .line 291
    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float v8, v5, v8

    int-to-float v11, v2

    sub-float/2addr v8, v11

    div-int/lit8 v9, v9, 0x2

    int-to-float v5, v9

    sub-float v5, v8, v5

    goto :goto_9

    :cond_c
    cmpg-float v0, v0, v4

    if-gez v0, :cond_d

    .line 294
    div-int/lit8 v0, v8, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v5

    cmpg-float v0, v0, v4

    if-gez v0, :cond_d

    .line 295
    invoke-direct {v1, v6}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->getNextWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Lcom/amazon/kindle/speedreading/doubletime/framework/Word;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 298
    invoke-direct {v1, v15, v0}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->getWordWidth(Landroid/graphics/Canvas;Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)I

    move-result v9

    .line 300
    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v8, v5

    int-to-float v11, v2

    add-float/2addr v8, v11

    div-int/lit8 v9, v9, 0x2

    int-to-float v5, v9

    add-float/2addr v5, v8

    .line 303
    iget-object v8, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->nextWordCache:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    move-object v6, v0

    .line 309
    :cond_d
    iget-boolean v0, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->useFriction:Z

    if-eqz v0, :cond_e

    .line 311
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->applyFriction()V

    .line 315
    :cond_e
    iget-boolean v0, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->isAnimatingToWord:Z

    if-eqz v0, :cond_f

    .line 317
    div-int/lit8 v0, v16, 0x2

    invoke-direct {v1, v12, v10, v0, v7}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->setAnimateToWordSpeed(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;FIZ)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 326
    :cond_f
    :try_start_7
    iget-object v0, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->holder:Landroid/view/SurfaceHolder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_c

    :catchall_0
    move-exception v0

    move-object v3, v15

    goto :goto_a

    :catchall_1
    move-exception v0

    :goto_a
    :try_start_8
    iget-object v2, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 329
    :catch_2
    throw v0

    :catch_3
    move-object v15, v3

    .line 326
    :catch_4
    :goto_b
    :try_start_9
    iget-object v0, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->holder:Landroid/view/SurfaceHolder;

    :goto_c
    invoke-interface {v0, v15}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    move-object v0, v6

    goto/16 :goto_0

    .line 135
    :cond_10
    :goto_d
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->releaseEmptyCanvas()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 139
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 146
    :catch_6
    :try_start_c
    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->getInstance()Lcom/amazon/kindle/speedreading/doubletime/FontSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/amazon/kindle/speedreading/doubletime/FontSettings;->getTextSize(Z)I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->maxFontSize:F

    move-object v6, v3

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    .line 167
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v0

    :cond_11
    :goto_e
    return-void
.end method

.method public declared-synchronized setClutchSpeed(F)V
    .locals 0

    monitor-enter p0

    .line 499
    :try_start_0
    iput p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->speed:F

    const/4 p1, 0x0

    .line 503
    iput-boolean p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->isAnimatingToWord:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setEventManager(Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 686
    const-class v0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    :cond_0
    return-void
.end method

.method public setUseFriction(Z)V
    .locals 0

    .line 521
    iput-boolean p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->useFriction:Z

    return-void
.end method

.method public declared-synchronized stopClutch()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 491
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->alive:Z

    .line 492
    iput-boolean v0, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->paused:Z

    .line 493
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateColors(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 1

    .line 561
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 562
    sget-object v0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread$1;->$SwitchMap$com$amazon$kindle$krx$ui$ColorMode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    .line 579
    sget p2, Lcom/amazon/kindle/speedreading/R$color;->dt_white_mode_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->textColor:I

    .line 580
    sget p2, Lcom/amazon/kindle/speedreading/R$color;->dt_white_mode_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->backgroundColor:I

    goto :goto_0

    .line 574
    :cond_0
    sget p2, Lcom/amazon/kindle/speedreading/R$color;->dt_sepia_mode_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->textColor:I

    .line 575
    sget p2, Lcom/amazon/kindle/speedreading/R$color;->dt_sepia_mode_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->backgroundColor:I

    goto :goto_0

    .line 570
    :cond_1
    sget p2, Lcom/amazon/kindle/speedreading/R$color;->dt_green_mode_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->textColor:I

    .line 571
    sget p2, Lcom/amazon/kindle/speedreading/R$color;->dt_green_mode_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->backgroundColor:I

    goto :goto_0

    .line 566
    :cond_2
    sget p2, Lcom/amazon/kindle/speedreading/R$color;->dt_black_mode_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->textColor:I

    .line 567
    sget p2, Lcom/amazon/kindle/speedreading/R$color;->dt_black_mode_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/speedreading/clutch/ClutchThread;->backgroundColor:I

    :goto_0
    return-void
.end method
