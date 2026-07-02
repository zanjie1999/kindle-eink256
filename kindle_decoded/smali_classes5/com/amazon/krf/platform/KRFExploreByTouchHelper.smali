.class public abstract Lcom/amazon/krf/platform/KRFExploreByTouchHelper;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "KRFExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/platform/KRFExploreByTouchHelper$ExploreByTouchNodeProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String;

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000

.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

.field private static final TAG:Ljava/lang/String; = "KRFExploreByTouchHelper"


# instance fields
.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Lcom/amazon/krf/platform/KRFExploreByTouchHelper$ExploreByTouchNodeProvider;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 62
    iput-object v0, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mTempGlobalRect:[I

    if-eqz p1, :cond_0

    .line 83
    iput-object p1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mView:Landroid/view/View;

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    return-void

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "View may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lcom/amazon/krf/platform/KRFExploreByTouchHelper;I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->createNode(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/krf/platform/KRFExploreByTouchHelper;IILandroid/os/Bundle;)Z
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 220
    invoke-direct {p0, p1, p2}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1

    .line 218
    :cond_0
    invoke-direct {p0, p2}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    return-object p1
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 2

    .line 248
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    const/4 v0, 0x1

    .line 249
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 250
    sget-object v0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 256
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 262
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 264
    invoke-static {p2}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/View;I)V

    return-object p2
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1

    .line 232
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 233
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-object p1
.end method

.method private createNode(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->createNodeForHost()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    return-object p1

    .line 283
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    invoke-direct {p0, p1}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->createNodeForChild(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private createNodeForChild(I)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 4

    .line 343
    invoke-static {}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    const/4 v1, 0x1

    .line 346
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 347
    sget-object v2, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 348
    sget-object v2, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 351
    invoke-virtual {p0, p1, v0}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 354
    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 359
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 360
    iget-object v2, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    sget-object v3, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 366
    iget-object v2, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v2, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, v2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    .line 368
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    .line 371
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->intersectVisibleToUser(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 372
    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 373
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 377
    :cond_2
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mTempGlobalRect:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 378
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mTempGlobalRect:[I

    const/4 v2, 0x0

    aget v2, p1, v2

    .line 379
    aget p1, p1, v1

    .line 380
    iget-object v1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 381
    iget-object v1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 382
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-object v0

    .line 361
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createNodeForHost()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 301
    invoke-virtual {p0, v0}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->onPopulateNodeForHost(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 304
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 305
    invoke-virtual {p0, v1}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 307
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 308
    iget-object v3, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private intersectVisibleToUser(Landroid/graphics/Rect;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 499
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 504
    :cond_0
    iget-object v1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 510
    :goto_0
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_4

    .line 511
    check-cast v1, Landroid/view/View;

    .line 512
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 515
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_3
    :goto_1
    return v0

    :cond_4
    if-nez v1, :cond_5

    return v0

    .line 524
    :cond_5
    iget-object v1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 529
    :cond_6
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_7
    :goto_2
    return v0
.end method

.method private performAction(IILandroid/os/Bundle;)Z
    .locals 2

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "performAction virtualViewId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->getActionName(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 485
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 483
    :cond_0
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-static {p1, p2, p3}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public abstract dispatchHoverEvent(Landroid/view/MotionEvent;)Z
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 1

    .line 96
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mNodeProvider:Lcom/amazon/krf/platform/KRFExploreByTouchHelper$ExploreByTouchNodeProvider;

    if-nez p1, :cond_0

    .line 97
    new-instance p1, Lcom/amazon/krf/platform/KRFExploreByTouchHelper$ExploreByTouchNodeProvider;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper$ExploreByTouchNodeProvider;-><init>(Lcom/amazon/krf/platform/KRFExploreByTouchHelper;Lcom/amazon/krf/platform/KRFExploreByTouchHelper$1;)V

    iput-object p1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mNodeProvider:Lcom/amazon/krf/platform/KRFExploreByTouchHelper$ExploreByTouchNodeProvider;

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mNodeProvider:Lcom/amazon/krf/platform/KRFExploreByTouchHelper$ExploreByTouchNodeProvider;

    return-object p1
.end method

.method protected getActionName(ILandroid/os/Bundle;)Ljava/lang/String;
    .locals 10

    .line 388
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x20000

    const/16 v2, 0x800

    const/16 v3, 0x400

    const/16 v4, 0x200

    const/16 v5, 0x100

    const/16 v6, 0x10

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq p1, v8, :cond_b

    if-eq p1, v7, :cond_a

    if-eq p1, v6, :cond_9

    const/16 v9, 0x40

    if-eq p1, v9, :cond_8

    const/16 v9, 0x80

    if-eq p1, v9, :cond_7

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_3

    const/16 v9, 0x1000

    if-eq p1, v9, :cond_2

    const/16 v9, 0x2000

    if-eq p1, v9, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ACTION_SET_SELECTION"

    goto :goto_0

    :cond_1
    const-string v0, "ACTION_SCROLL_BACKWARD"

    goto :goto_0

    :cond_2
    const-string v0, "ACTION_SCROLL_FORWARD"

    goto :goto_0

    :cond_3
    const-string v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    goto :goto_0

    :cond_4
    const-string v0, "ACTION_NEXT_HTML_ELEMENT"

    goto :goto_0

    :cond_5
    const-string v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    goto :goto_0

    :cond_6
    const-string v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    goto :goto_0

    :cond_7
    const-string v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    goto :goto_0

    :cond_8
    const-string v0, "ACTION_ACCESSIBILITY_FOCUS"

    goto :goto_0

    :cond_9
    const-string v0, "ACTION_CLICK"

    goto :goto_0

    :cond_a
    const-string v0, "ACTION_CLEAR_FOCUS"

    goto :goto_0

    :cond_b
    const-string v0, "ACTION_FOCUS"

    :goto_0
    if-eqz p2, :cond_15

    if-eq p1, v5, :cond_f

    if-ne p1, v4, :cond_c

    goto :goto_2

    :cond_c
    if-eq p1, v3, :cond_e

    if-ne p1, v2, :cond_d

    goto :goto_1

    :cond_d
    if-ne p1, v1, :cond_15

    const-string p1, "ACTION_ARGUMENT_SELECTION_START_INT"

    .line 471
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "ACTION_ARGUMENT_SELECTION_END_INT"

    .line 472
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " start:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " end:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_e
    :goto_1
    const-string p1, "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

    .line 465
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 467
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 468
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_f
    :goto_2
    const-string p1, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    .line 439
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v8, :cond_14

    if-eq p1, v7, :cond_13

    const/4 v1, 0x4

    if-eq p1, v1, :cond_12

    const/16 v1, 0x8

    if-eq p1, v1, :cond_11

    if-eq p1, v6, :cond_10

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 454
    :cond_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MOVEMENT_GRANULARITY_PAGE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 451
    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MOVEMENT_GRANULARITY_PARAGRAPH"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 448
    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MOVEMENT_GRANULARITY_LINE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 445
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MOVEMENT_GRANULARITY_WORD"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 442
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MOVEMENT_GRANULARITY_CHARACTER"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    const-string v0, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    .line 461
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " extend selection:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_15
    :goto_4
    return-object v0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public invalidateRoot()V
    .locals 1

    const/4 v0, -0x1

    .line 180
    invoke-virtual {p0, v0}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->invalidateVirtualView(I)V

    return-void
.end method

.method public invalidateVirtualView(I)V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 194
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 195
    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/amazon/krf/platform/KRFExploreByTouchHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper$1;-><init>(Lcom/amazon/krf/platform/KRFExploreByTouchHelper;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected abstract isVisible(I)Z
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected abstract onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public onPopulateNodeForHost(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
.end method

.method public requestParentSendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestParentSendEvent event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->postInvalidate()V

    .line 169
    iget-object v1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroidx/core/view/ViewParentCompat;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public sendEventForVirtualView(II)Z
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendEventForVirtualView id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 147
    invoke-virtual {p0, p1}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->isVisible(I)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 151
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 153
    invoke-virtual {p0, p1}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->requestParentSendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method
