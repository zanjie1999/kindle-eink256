.class public Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;
.super Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;
.source "PagingWidgetObjectSelectionLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private anchorPosition:Lcom/amazon/android/widget/WidgetAnchorPosition;

.field private buttons:Lcom/amazon/android/widget/PagingButtonWidget;

.field private windowSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->anchorPosition:Lcom/amazon/android/widget/WidgetAnchorPosition;

    .line 62
    new-instance p1, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-direct {p1}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->windowSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getTopOffsetBetweenBoundsForPagingButtonWidget(Ljava/util/Vector;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;)I"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->anchorPosition:Lcom/amazon/android/widget/WidgetAnchorPosition;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->buttons:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    .line 257
    sget-object v3, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout$2;->$SwitchMap$com$amazon$android$widget$WidgetAnchorPosition$Location:[I

    iget-object v0, v0, Lcom/amazon/android/widget/WidgetAnchorPosition;->location:Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    .line 268
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->infoCardContainerParent:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 269
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 270
    div-int/2addr v2, v3

    return v2

    .line 275
    :cond_1
    invoke-virtual {p1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 276
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 277
    div-int/lit8 v0, v2, 0x2

    add-int v3, v0, v2

    if-gt p1, v3, :cond_2

    .line 278
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionOffset:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    add-int v1, v2, p1

    :cond_2
    add-int/2addr v0, v1

    return v0

    .line 263
    :cond_3
    invoke-virtual {p1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 264
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/2addr p1, v0

    return p1

    .line 259
    :cond_4
    invoke-virtual {p1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 260
    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v2

    return p1
.end method

.method private populateButtons(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V
    .locals 2

    .line 345
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 349
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getSelectionWidgetItemController()Lcom/amazon/android/widget/SelectionWidgetItemController;

    move-result-object v0

    .line 350
    invoke-virtual {v0, p1}, Lcom/amazon/android/widget/SelectionWidgetItemController;->getPrioritizedWidgetItemList(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Ljava/util/List;

    move-result-object p1

    .line 352
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->buttons:Lcom/amazon/android/widget/PagingButtonWidget;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->buttons:Lcom/amazon/android/widget/PagingButtonWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 358
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->buttons:Lcom/amazon/android/widget/PagingButtonWidget;

    new-instance v1, Lcom/amazon/android/widget/WidgetItemGroup;

    invoke-direct {v1, p1}, Lcom/amazon/android/widget/WidgetItemGroup;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/amazon/android/widget/PagingButtonWidget;->attachItems(Lcom/amazon/android/widget/WidgetItemGroup;)V

    return-void
.end method

.method private readOutSelectedText(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 369
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectedText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 370
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->speak_selection:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 372
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getAnchorPosition(Ljava/util/Vector;Landroid/graphics/Point;I)Lcom/amazon/android/widget/WidgetAnchorPosition;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Point;",
            "I)",
            "Lcom/amazon/android/widget/WidgetAnchorPosition;"
        }
    .end annotation

    .line 296
    invoke-virtual {p1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 297
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->getSafeInsets(Ljava/util/Vector;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v1

    .line 298
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 299
    new-instance p1, Lcom/amazon/android/widget/WidgetAnchorPosition;

    sget-object p2, Lcom/amazon/android/widget/WidgetAnchorPosition$Location;->BOTTOM:Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    iget p3, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {p1, p2, p3, v0}, Lcom/amazon/android/widget/WidgetAnchorPosition;-><init>(Lcom/amazon/android/widget/WidgetAnchorPosition$Location;II)V

    return-object p1

    .line 302
    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 303
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, v0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->selectionOffset:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr p3, v0

    invoke-virtual {v1}, Lcom/amazon/kcp/util/device/SafeInsets;->getBottom()I

    move-result v0

    sub-int/2addr p3, v0

    iget p2, p2, Landroid/graphics/Point;->y:I

    if-le p3, p2, :cond_1

    .line 304
    new-instance p2, Lcom/amazon/android/widget/WidgetAnchorPosition;

    sget-object p3, Lcom/amazon/android/widget/WidgetAnchorPosition$Location;->TOP:Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-direct {p2, p3, v0, p1}, Lcom/amazon/android/widget/WidgetAnchorPosition;-><init>(Lcom/amazon/android/widget/WidgetAnchorPosition$Location;II)V

    return-object p2

    .line 306
    :cond_1
    sget-object p1, Lcom/amazon/android/widget/WidgetAnchorPosition;->NONE:Lcom/amazon/android/widget/WidgetAnchorPosition;

    return-object p1
.end method

.method protected getSafeInsets(Ljava/util/Vector;)Lcom/amazon/kcp/util/device/SafeInsets;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Lcom/amazon/kcp/util/device/SafeInsets;"
        }
    .end annotation

    .line 383
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 384
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_8

    const/4 v1, 0x0

    .line 388
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 389
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 390
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v3

    if-eqz v2, :cond_4

    .line 393
    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 394
    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-gt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 395
    :goto_1
    new-instance p1, Lcom/amazon/kcp/util/device/SafeInsets;

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    iget v2, v0, Landroid/graphics/Rect;->right:I

    :goto_2
    if-eqz v4, :cond_3

    iget v1, v3, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->windowSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    .line 398
    invoke-virtual {v0}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result v0

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->windowSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    .line 399
    invoke-virtual {v3}, Lcom/amazon/kcp/util/device/SafeInsets;->getBottom()I

    move-result v3

    invoke-direct {p1, v2, v1, v0, v3}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIII)V

    return-object p1

    .line 401
    :cond_4
    invoke-virtual {p1, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 402
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-gt p1, v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 403
    :goto_3
    new-instance p1, Lcom/amazon/kcp/util/device/SafeInsets;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->windowSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    .line 404
    invoke-virtual {v2}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result v2

    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->windowSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    .line 405
    invoke-virtual {v5}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v5

    if-eqz v4, :cond_6

    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    :goto_4
    if-eqz v4, :cond_7

    iget v1, v3, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    :cond_7
    invoke-direct {p1, v2, v5, v6, v1}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIII)V

    return-object p1

    .line 411
    :cond_8
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->windowSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    return-object p1
.end method

.method protected getSelectionWidgetBounds()Landroid/graphics/Rect;
    .locals 5

    .line 311
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->buttons:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->buttons:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->buttons:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->buttons:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 119
    invoke-static {p1}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->getDisplayCutoutSafeInsets(Landroid/view/WindowInsets;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->windowSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    .line 120
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 107
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->onAttachedToWindow()V

    .line 108
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 223
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 224
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->anchorPosition:Lcom/amazon/android/widget/WidgetAnchorPosition;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 114
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 77
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->onFinishInflate()V

    .line 78
    sget v0, Lcom/amazon/kindle/krl/R$id;->selection_buttons:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/widget/PagingButtonWidget;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->buttons:Lcom/amazon/android/widget/PagingButtonWidget;

    if-eqz v0, :cond_1

    .line 83
    new-instance v1, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout$1;-><init>(Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;)V

    invoke-virtual {v0, v1}, Lcom/amazon/android/widget/PagingButtonWidget;->setOnActionItemsClickListener(Lcom/amazon/android/widget/PagingButtonWidget$OnActionItemsClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->buttons:Lcom/amazon/android/widget/PagingButtonWidget;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v0, :cond_0

    .line 101
    invoke-static {v0}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->getDisplayCutoutSafeInsets(Landroid/app/Activity;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->windowSafeInsets:Lcom/amazon/kcp/util/device/SafeInsets;

    :cond_0
    return-void

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PagingButtonWidget must be present in the layout!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInfoCardsFullyShownEvent(Lcom/amazon/kcp/reader/ui/InfoCardContainer$InfoCardsFullyShownEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 127
    sget-object p1, Lcom/amazon/android/widget/WidgetAnchorPosition;->NONE:Lcom/amazon/android/widget/WidgetAnchorPosition;

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->anchorPosition:Lcom/amazon/android/widget/WidgetAnchorPosition;

    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->buttons:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-virtual {v0, p1}, Lcom/amazon/android/widget/PagingButtonWidget;->setAnchorPosition(Lcom/amazon/android/widget/WidgetAnchorPosition;)V

    .line 129
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 229
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->anchorPosition:Lcom/amazon/android/widget/WidgetAnchorPosition;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 235
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->getTopOffsetBetweenBoundsForPagingButtonWidget(Ljava/util/Vector;)I

    move-result v1

    .line 236
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->buttons:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    .line 237
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->getSafeInsets(Ljava/util/Vector;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v0

    .line 238
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->buttons:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-virtual {v0}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {v0}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v0

    sub-int v0, p4, v0

    add-int/2addr v2, v1

    invoke-virtual {v3, v4, v1, v0, v2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 240
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 134
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 135
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 136
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->onMeasure(II)V

    .line 138
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->shouldWidgetBeVisible(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 144
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p2

    const/4 v2, 0x1

    if-ge p2, v2, :cond_1

    goto :goto_1

    .line 148
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->getSafeInsets(Ljava/util/Vector;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object p2

    .line 149
    invoke-virtual {p2}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p2}, Lcom/amazon/kcp/util/device/SafeInsets;->getBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 150
    invoke-virtual {p2}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p2}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result p2

    sub-int/2addr v1, p2

    .line 152
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->buttons:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 153
    iget v3, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, -0x2

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    if-eq v3, v4, :cond_2

    move v1, v3

    .line 157
    :cond_2
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->infoCardContainerParent:Landroid/view/View;

    .line 159
    iget p2, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq p2, v5, :cond_3

    if-eq p2, v4, :cond_3

    move v2, p2

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 162
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr v2, p2

    :cond_4
    :goto_0
    if-gez v2, :cond_5

    .line 167
    sget-object p1, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->TAG:Ljava/lang/String;

    const-string p2, "Our info cards are so big, we\'re out of room for our selection buttons."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    const/high16 p2, 0x40000000    # 2.0f

    .line 171
    invoke-static {v2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 172
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 173
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->buttons:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-virtual {v1, p2, v2}, Landroid/widget/LinearLayout;->measure(II)V

    .line 176
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->anchorPosition:Lcom/amazon/android/widget/WidgetAnchorPosition;

    if-nez p2, :cond_6

    .line 179
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->buttons:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-virtual {p2}, Lcom/amazon/android/widget/PagingButtonWidget;->getPagingViewSize()Landroid/graphics/Point;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->getAnchorPosition(Ljava/util/Vector;Landroid/graphics/Point;I)Lcom/amazon/android/widget/WidgetAnchorPosition;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->anchorPosition:Lcom/amazon/android/widget/WidgetAnchorPosition;

    .line 180
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->buttons:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-virtual {p2, p1}, Lcom/amazon/android/widget/PagingButtonWidget;->setAnchorPosition(Lcom/amazon/android/widget/WidgetAnchorPosition;)V

    .line 183
    :cond_6
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->buttons:Lcom/amazon/android/widget/PagingButtonWidget;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method protected onSelectionAreaChanged()V
    .locals 0

    .line 217
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->onSelectionAreaChanged()V

    .line 218
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method protected onSelectionStateChanged()V
    .locals 5

    .line 196
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->onSelectionStateChanged()V

    .line 197
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->shouldWidgetBeVisible(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x800

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->populateButtons(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    .line 199
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 200
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    .line 201
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->readOutSelectedText(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    .line 202
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->buttons:Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x40

    invoke-static {v0, v2, v3}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->buttons:Lcom/amazon/android/widget/PagingButtonWidget;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    iput-object v3, p0, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->anchorPosition:Lcom/amazon/android/widget/WidgetAnchorPosition;

    .line 207
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    :goto_0
    const/4 v0, 0x1

    const-string v2, "Selection Changed Force Layout and Invalidate"

    .line 210
    invoke-static {v2, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 211
    invoke-static {p0}, Lcom/amazon/android/util/UIUtils;->forceLayoutAndInvalidateUpTree(Landroid/view/View;)V

    .line 212
    invoke-static {v2, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public refreshSelectionButtons(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V
    .locals 0

    .line 335
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->populateButtons(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    return-void
.end method

.method public setObjectSelectionModel(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V
    .locals 0

    .line 188
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->setObjectSelectionModel(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    if-eqz p1, :cond_0

    .line 190
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/PagingWidgetObjectSelectionLayout;->populateButtons(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    :cond_0
    return-void
.end method

.method shouldWidgetBeVisible(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z
    .locals 2

    .line 321
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v0

    .line 322
    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SELECTION_STARTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    .line 323
    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/amazon/android/docviewer/grid/GridObjectSelectionModel;

    if-nez v0, :cond_1

    .line 325
    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->GRAPHICAL:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
