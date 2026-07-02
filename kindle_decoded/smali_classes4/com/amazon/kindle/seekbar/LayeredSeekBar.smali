.class public Lcom/amazon/kindle/seekbar/LayeredSeekBar;
.super Landroid/widget/SeekBar;
.source "LayeredSeekBar.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent;
    }
.end annotation


# static fields
.field private static MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

.field private focusedPaint:Landroid/graphics/Paint;

.field private focusedRect:Landroid/graphics/Rect;

.field protected isPressed:Z

.field protected layers:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Float;",
            "Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;",
            ">;"
        }
    .end annotation
.end field

.field protected listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected minProgress:I

.field protected progressHeight:F

.field protected progressToX:Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

.field protected snappingThresh:F

.field protected thumbRadiusPixels:F

.field protected thumbSnapEffectLayers:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Float;",
            "Lcom/amazon/kindle/seekbar/ISeekBarThumbSnapEffectLayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const-class v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->TAG:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->IncorrectContextUseViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 94
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103006b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 52
    iput p2, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->minProgress:I

    .line 55
    sget-object p2, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    iput-object p2, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    const/high16 p2, 0x41900000    # 18.0f

    .line 60
    iput p2, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->thumbRadiusPixels:F

    const/4 p2, 0x0

    .line 62
    iput-boolean p2, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->isPressed:Z

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/krl/R$dimen;->location_seekbar_max_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressHeight:F

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/krl/R$dimen;->location_seekbar_snapping_threshold:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->snappingThresh:F

    .line 100
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->layers:Ljava/util/TreeMap;

    .line 101
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->thumbSnapEffectLayers:Ljava/util/TreeMap;

    .line 102
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->listeners:Ljava/util/ArrayList;

    .line 104
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->focusedPaint:Landroid/graphics/Paint;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$color;->default_selected_icon:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object p1, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->focusedPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    iget-object p1, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->focusedPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object p1, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->focusedPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->focusedRect:Landroid/graphics/Rect;

    .line 113
    new-instance p1, Lcom/amazon/kindle/seekbar/LayeredSeekBar$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/seekbar/LayeredSeekBar$1;-><init>(Lcom/amazon/kindle/seekbar/LayeredSeekBar;)V

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/seekbar/LayeredSeekBar;IZ)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->onProgressChanged(IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/seekbar/LayeredSeekBar;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->onStartTrackingTouch()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kindle/seekbar/LayeredSeekBar;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->onStopTrackingTouch()V

    return-void
.end method

.method private onProgressChanged(IZ)V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 438
    invoke-interface {v1, p0, p1, p2}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onStartTrackingTouch()V
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 450
    invoke-interface {v1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    return-void
.end method

.method private onStopTrackingTouch()V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 461
    invoke-interface {v1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private publishEvent(Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;)V
    .locals 1

    .line 429
    new-instance v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent;-><init>(Lcom/amazon/kindle/seekbar/LayeredSeekBar;Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;)V

    .line 430
    sget-object p1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private unsnap()V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->layers:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    return-void

    .line 263
    :cond_0
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;

    const/4 v2, -0x1

    .line 265
    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/ui/seekbar/ISnappingCandidateProvider;->onSnapStart(I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addLayer(Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;F)V
    .locals 1

    .line 381
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->layers:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addThumbSnapEffectLayer(Lcom/amazon/kindle/seekbar/ISeekBarThumbSnapEffectLayer;F)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->thumbSnapEffectLayers:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public attachToParent(Landroid/view/ViewGroup;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 502
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public clearLayers()V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->layers:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 390
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->thumbSnapEffectLayers:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    return-void
.end method

.method public clearOnSeekBarChangeListeners()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getMinProgress()I
    .locals 1

    .line 364
    iget v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->minProgress:I

    return v0
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public isPressed()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->isPressed:Z

    return v0
.end method

.method protected notifyListeners(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 176
    invoke-interface {v1, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyListenersOnStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 196
    invoke-interface {v1, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyListenersOnStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 186
    invoke-interface {v1, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v1, p0

    monitor-enter p0

    .line 221
    :try_start_0
    iget v0, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->minProgress:I

    if-ltz v0, :cond_3

    .line 228
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result v0

    const/4 v2, 0x2

    div-int/2addr v0, v2

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 229
    iget v3, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    .line 230
    iget v5, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressHeight:F

    add-float v14, v3, v5

    .line 231
    iget v5, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->thumbRadiusPixels:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 232
    iget v5, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->thumbRadiusPixels:F

    mul-float v5, v5, v4

    add-float v4, v0, v5

    .line 235
    iget-object v5, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->layers:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 236
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;

    .line 237
    iget-object v7, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    iget-object v8, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressToX:Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getLayoutDirection()I

    move-result v13

    move-object/from16 v6, p1

    move v9, v3

    move v10, v14

    move v11, v0

    move v12, v4

    invoke-interface/range {v5 .. v13}, Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;->draw(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/seekbar/IMapper;FFFFI)V

    goto :goto_0

    .line 241
    :cond_0
    iget-boolean v5, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->isPressed:Z

    if-eqz v5, :cond_1

    .line 242
    iget-object v5, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->thumbSnapEffectLayers:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 243
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/seekbar/ISeekBarThumbSnapEffectLayer;

    .line 244
    iget-object v7, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    iget-object v6, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressToX:Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    int-to-float v8, v8

    invoke-interface {v6, v8}, Lcom/amazon/kindle/krx/ui/seekbar/IMapper;->map(F)F

    move-result v8

    move-object/from16 v6, p1

    move v9, v3

    move v10, v14

    move v11, v0

    move v12, v4

    invoke-interface/range {v5 .. v12}, Lcom/amazon/kindle/seekbar/ISeekBarThumbSnapEffectLayer;->drawSnapEffectOnThumb(Landroid/graphics/Canvas;Lcom/amazon/kindle/krx/ui/ColorMode;FFFFF)V

    goto :goto_1

    .line 248
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SeekBar;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->focusedRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 250
    iget-object v0, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->focusedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 251
    new-instance v0, Landroid/graphics/RectF;

    iget-object v2, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->focusedRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v2, v1, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->focusedPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    move-object/from16 v4, p1

    invoke-virtual {v4, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 255
    :cond_2
    sget-object v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;->DRAW:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->publishEvent(Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit p0

    return-void

    .line 223
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Be sure to set minProgress."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 5

    monitor-enter p0

    .line 208
    :try_start_0
    iget v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->thumbRadiusPixels:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 210
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->seekbar_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 212
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 213
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 215
    invoke-static {v1, p1, v2}, Landroid/widget/SeekBar;->resolveSizeAndState(III)I

    move-result p1

    .line 216
    invoke-static {v0, p2, v2}, Landroid/widget/SeekBar;->resolveSizeAndState(III)I

    move-result p2

    .line 215
    invoke-virtual {p0, p1, p2}, Landroid/widget/SeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 202
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 203
    iget p1, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->minProgress:I

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->resetMapping(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 298
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    if-eq v0, v1, :cond_0

    .line 325
    sget-object v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detected invalid event action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_0
    iput-boolean v3, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->isPressed:Z

    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v4, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->snappingThresh:F

    invoke-virtual {p0, v0, v4}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->snap(FF)Z

    move-result v0

    goto :goto_1

    .line 311
    :cond_2
    iput-boolean v3, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->isPressed:Z

    .line 312
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v4, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->snappingThresh:F

    invoke-virtual {p0, v0, v4}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->snap(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 315
    sget-object v4, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;->SNAPPED:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    invoke-direct {p0, v4}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->publishEvent(Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;)V

    goto :goto_1

    .line 300
    :cond_3
    iput-boolean v2, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->isPressed:Z

    .line 301
    sget-object v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;->PRESSED:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->publishEvent(Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;)V

    :goto_0
    const/4 v0, 0x0

    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    .line 332
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-virtual {p0, p0, v4, v2}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->notifyListeners(Landroid/widget/SeekBar;IZ)V

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v2, :cond_5

    .line 334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 335
    :cond_5
    invoke-virtual {p0, p0}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->notifyListenersOnStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 336
    invoke-virtual {p0, v3}, Landroid/widget/SeekBar;->setPressed(Z)V

    :cond_6
    if-nez v0, :cond_7

    .line 341
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 343
    :cond_7
    invoke-virtual {p0}, Landroid/widget/SeekBar;->invalidate()V

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 419
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onVisibilityChanged(Landroid/view/View;I)V

    const/16 p1, 0x8

    if-eq p1, p2, :cond_1

    const/4 p1, 0x4

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_2

    .line 424
    sget-object p1, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;->SHOWN:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->publishEvent(Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;)V

    goto :goto_1

    .line 422
    :cond_1
    :goto_0
    sget-object p1, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;->HIDDEN:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->publishEvent(Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public removeOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeSeekBarFromOldParent()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 493
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 495
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    return-void
.end method

.method protected resetMapping(II)V
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressToX:Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Lcom/amazon/kindle/seekbar/LinearMapper;

    invoke-direct {v0}, Lcom/amazon/kindle/seekbar/LinearMapper;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressToX:Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressToX:Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    int-to-float p1, p1

    int-to-float p2, p2

    .line 373
    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;->domain(FF)Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    move-result-object p1

    iget p2, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->thumbRadiusPixels:F

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p2, v0

    .line 374
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->thumbRadiusPixels:F

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    sub-float/2addr v1, v2

    invoke-interface {p1, p2, v1}, Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;->range(FF)Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    move-result-object p1

    .line 375
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getLayoutDirection()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;->mirror(Z)Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    .line 377
    invoke-virtual {p0}, Landroid/widget/SeekBar;->invalidate()V

    return-void
.end method

.method public setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->colorMode:Lcom/amazon/kindle/krx/ui/ColorMode;

    return-void
.end method

.method public setMax(I)V
    .locals 1

    .line 359
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 360
    iget v0, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->minProgress:I

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->resetMapping(II)V

    return-void
.end method

.method public setMinPosition(I)V
    .locals 1

    .line 353
    iput p1, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->minProgress:I

    .line 354
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->resetMapping(II)V

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->addOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 403
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 407
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 409
    invoke-direct {p0}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->unsnap()V

    .line 410
    invoke-virtual {p0}, Landroid/widget/SeekBar;->invalidate()V

    return-void
.end method

.method public setSeekerDirection(Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;)V
    .locals 3

    .line 474
    sget-object v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$2;->$SwitchMap$com$amazon$kindle$krx$ui$KRXBookReadingDirection:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 483
    :goto_0
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getLayoutDirection()I

    move-result v2

    if-eq v2, p1, :cond_2

    .line 484
    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setLayoutDirection(I)V

    .line 486
    iget-object p1, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressToX:Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-interface {p1, v0}, Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;->mirror(Z)Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    :cond_2
    return-void
.end method

.method public setThumbRadius(F)V
    .locals 0

    .line 414
    iput p1, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->thumbRadiusPixels:F

    return-void
.end method

.method protected snap(FF)Z
    .locals 3

    .line 270
    new-instance v0, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;-><init>(FF)V

    .line 272
    iget-object p1, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->layers:Ljava/util/TreeMap;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressToX:Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    if-nez v1, :cond_0

    goto :goto_1

    .line 276
    :cond_0
    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/ui/seekbar/ISeekBarLayer;

    .line 277
    iget-object v2, p0, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->progressToX:Lcom/amazon/kindle/seekbar/MutableDomainRangeMapper;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->addSnappingCandidateProvider(Lcom/amazon/kindle/krx/ui/seekbar/ISnappingCandidateProvider;Lcom/amazon/kindle/krx/ui/seekbar/IMapper;)V

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->getBestPosition()I

    move-result p1

    .line 281
    invoke-virtual {v0}, Lcom/amazon/kindle/seekbar/SnapCandidateFinder;->notifyCandidates()V

    const/4 v0, -0x1

    if-le p1, v0, :cond_2

    .line 283
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    .line 284
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->setProgress(I)V

    .line 288
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    const/4 p2, 0x1

    invoke-virtual {p0, p0, p1, p2}, Lcom/amazon/kindle/seekbar/LayeredSeekBar;->notifyListeners(Landroid/widget/SeekBar;IZ)V

    :cond_2
    :goto_1
    return p2
.end method

.method public updateDimensions(II)V
    .locals 1

    .line 507
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
