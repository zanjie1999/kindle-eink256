.class public Lcom/amazon/krf/platform/KRFVirtualViewManager;
.super Ljava/lang/Object;
.source "KRFVirtualViewManager.java"


# static fields
.field public static final GHL_DESC:Ljava/lang/String; = "graphical highlight"

.field public static final HIGHLIGHT_DESC:Ljava/lang/String; = "highlight"

.field public static final IMAGE_DESC:Ljava/lang/String; = "image"

.field public static final KVG_DESC:Ljava/lang/String; = "math"

.field private static final MAINVIEW_ZORDER:I = -0x1

.field private static final MIN_CONTENT_VIRTUAL_VIEW_ID:I = 0x4

.field private static final MIN_TURN_PAGE_SUPPORT_VIRTUAL_VIEW_ID:I = 0x0

.field public static final NOTE_DESC:Ljava/lang/String; = "note"

.field private static final PAGE_GRANULARITY:I = 0x0

.field private static PAUSE_A_LITTLE_BIT:Ljava/lang/String; = ". "

.field public static final POPULAR_HIGHLIGHT_DESC:Ljava/lang/String; = "popular highlight"

.field public static final SQUIRCLE_DESC:Ljava/lang/String; = "note"

.field private static final TAG:Ljava/lang/String; = "VirtualViewManager"

.field public static final UNDEFINED_DESC:Ljava/lang/String; = " "

.field public static final UNDERLINE_DESC:Ljava/lang/String; = "underlined note"

.field public static final WORDWISE_DESC:Ljava/lang/String; = "wordwise"


# instance fields
.field private final MAIN_VIEW_ID:I

.field private mAccessibilityHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/krf/platform/AccessibilityHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstContentVirtualViewId:I

.field private mNextContentVirtualViewId:I

.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleVirtualViewIDOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleVirtualViewMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/amazon/krf/internal/VirtualViewImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/amazon/krf/platform/AccessibilityHandler;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mVisibleVirtualViewMap:Landroid/util/SparseArray;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mVisibleVirtualViewIDOrder:Ljava/util/ArrayList;

    const/4 v0, 0x4

    .line 35
    iput v0, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->MAIN_VIEW_ID:I

    const/4 v0, 0x5

    .line 36
    iput v0, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mFirstContentVirtualViewId:I

    .line 37
    iput v0, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mNextContentVirtualViewId:I

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mView:Ljava/lang/ref/WeakReference;

    .line 64
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mAccessibilityHandler:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private addNodesToSupportPageTurn(Ljava/util/ArrayList;Lcom/amazon/krf/platform/VirtualView$VirtualViewType;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/internal/VirtualViewImpl;",
            ">;",
            "Lcom/amazon/krf/platform/VirtualView$VirtualViewType;",
            "I)V"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_5

    .line 205
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 206
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 207
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 208
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 210
    new-instance v4, Lcom/amazon/krf/internal/VirtualViewImpl;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x1

    invoke-direct {v5, v1, v2, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v7, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->PREV:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    const-string v8, ""

    invoke-direct {v4, v8, v5, v7}, Lcom/amazon/krf/internal/VirtualViewImpl;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Lcom/amazon/krf/platform/VirtualView$VirtualViewType;)V

    .line 211
    new-instance v5, Lcom/amazon/krf/internal/VirtualViewImpl;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v1, v2, v6, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v1, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->PREV_BUFFER:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    invoke-direct {v5, v8, v7, v1}, Lcom/amazon/krf/internal/VirtualViewImpl;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Lcom/amazon/krf/platform/VirtualView$VirtualViewType;)V

    .line 212
    new-instance v1, Lcom/amazon/krf/internal/VirtualViewImpl;

    new-instance v2, Landroid/graphics/Rect;

    add-int/lit8 v7, v3, -0x1

    add-int/lit8 v9, v0, -0x1

    invoke-direct {v2, v7, v9, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v10, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->NEXT_BUFFER:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    invoke-direct {v1, v8, v2, v10}, Lcom/amazon/krf/internal/VirtualViewImpl;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Lcom/amazon/krf/platform/VirtualView$VirtualViewType;)V

    .line 213
    new-instance v2, Lcom/amazon/krf/internal/VirtualViewImpl;

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v7, v9, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->NEXT:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    invoke-direct {v2, v8, v10, v0}, Lcom/amazon/krf/internal/VirtualViewImpl;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Lcom/amazon/krf/platform/VirtualView$VirtualViewType;)V

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v3, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->UNDEFINED:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    const/high16 v7, -0x80000000

    const/4 v8, 0x0

    if-eq p2, v3, :cond_0

    if-eq p3, v7, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 224
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amazon/krf/internal/VirtualViewImpl;

    if-eqz v3, :cond_1

    .line 226
    invoke-virtual {v10}, Lcom/amazon/krf/internal/VirtualViewImpl;->getViewType()Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    move-result-object v11

    if-ne v11, p2, :cond_1

    move v11, v9

    move v9, p3

    goto :goto_3

    :cond_1
    if-eqz v3, :cond_2

    :goto_2
    if-ne p3, v9, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v11, v9, 0x1

    .line 236
    :goto_3
    invoke-virtual {v10, v9}, Lcom/amazon/krf/internal/VirtualViewImpl;->setId(I)V

    move v9, v11

    goto :goto_1

    .line 242
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 243
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/krf/internal/VirtualViewImpl;

    invoke-virtual {p2}, Lcom/amazon/krf/internal/VirtualViewImpl;->getOrder()I

    move-result v7

    .line 244
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v6

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/krf/internal/VirtualViewImpl;

    invoke-virtual {p2}, Lcom/amazon/krf/internal/VirtualViewImpl;->getOrder()I

    move-result p2

    goto :goto_4

    :cond_4
    const/high16 p2, -0x80000000

    .line 246
    :goto_4
    invoke-virtual {p1, v8, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Lcom/amazon/krf/internal/VirtualViewImpl;->setOrder(I)V

    .line 247
    invoke-virtual {p1, v8, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Lcom/amazon/krf/internal/VirtualViewImpl;->setOrder(I)V

    .line 248
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr p2, v6

    invoke-virtual {v5, p2}, Lcom/amazon/krf/internal/VirtualViewImpl;->setOrder(I)V

    .line 249
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr p2, v6

    invoke-virtual {v5, p2}, Lcom/amazon/krf/internal/VirtualViewImpl;->setOrder(I)V

    :cond_5
    return-void
.end method

.method private createAccessibilityContentDescriptionForDecorationItem(Lcom/amazon/krf/platform/DecorationItem;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 483
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/krf/platform/DecorationItem;->getType()Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->getDescriptionForItemType(Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;)Ljava/lang/String;

    move-result-object v1

    .line 484
    invoke-virtual {p1}, Lcom/amazon/krf/platform/DecorationItem;->getText()Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    if-nez v2, :cond_2

    return-object v1

    .line 494
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/krf/platform/DecorationItem;->getContentDecoration()Lcom/amazon/krf/platform/ContentDecoration;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 495
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ContentDecoration;->getPayload()Lcom/amazon/krf/platform/ContentDecorationPayload;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 497
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ContentDecoration;->getPayload()Lcom/amazon/krf/platform/ContentDecorationPayload;

    move-result-object p1

    .line 498
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ContentDecorationPayload;->getPayloadType()Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    move-result-object v0

    sget-object v3, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;->WordWiseCotentDecorationPayload:Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    if-ne v0, v3, :cond_3

    .line 500
    check-cast p1, Lcom/amazon/krf/platform/WordWiseContentDecorationPayload;

    .line 501
    invoke-virtual {p1}, Lcom/amazon/krf/platform/WordWiseContentDecorationPayload;->getGloss()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/krf/platform/KRFVirtualViewManager;->PAUSE_A_LITTLE_BIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " means "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 506
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ContentDecorationPayload;->getPayloadType()Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    move-result-object v0

    sget-object v3, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;->PopularHighlightCotentDecorationPayload:Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    if-ne v0, v3, :cond_4

    .line 508
    check-cast p1, Lcom/amazon/krf/platform/PopularHighlightContentDecorationPayload;

    .line 509
    invoke-virtual {p1}, Lcom/amazon/krf/platform/PopularHighlightContentDecorationPayload;->getPopularHighlightText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/krf/platform/KRFVirtualViewManager;->PAUSE_A_LITTLE_BIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/krf/platform/KRFVirtualViewManager;->PAUSE_A_LITTLE_BIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 514
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/krf/platform/ContentDecorationPayload;->getPayloadType()Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    move-result-object v0

    sget-object v3, Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;->NoteCotentDecorationPayload:Lcom/amazon/krf/platform/ContentDecorationPayload$ContentDecorationPayloadType;

    if-ne v0, v3, :cond_5

    .line 516
    check-cast p1, Lcom/amazon/krf/platform/NoteContentDecorationPayload;

    .line 517
    invoke-virtual {p1}, Lcom/amazon/krf/platform/NoteContentDecorationPayload;->getNotesText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/krf/platform/KRFVirtualViewManager;->PAUSE_A_LITTLE_BIT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 529
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->PAUSE_A_LITTLE_BIT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createVirtualViewFromPluginItem(Lcom/amazon/krf/platform/AccessibilityPluginItem;)Lcom/amazon/krf/internal/VirtualViewImpl;
    .locals 7

    if-nez p1, :cond_0

    const-string p1, "VirtualViewManager"

    const-string v0, "createVirtualViewFromPluginItem() received null item."

    .line 466
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    .line 469
    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 470
    invoke-virtual {p1}, Lcom/amazon/krf/platform/AccessibilityPluginItem;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 471
    invoke-virtual {p1}, Lcom/amazon/krf/platform/AccessibilityPluginItem;->getText()Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-virtual {p1}, Lcom/amazon/krf/platform/AccessibilityPluginItem;->getZOrder()I

    move-result v5

    .line 474
    new-instance p1, Lcom/amazon/krf/internal/VirtualViewImpl;

    const/4 v4, 0x0

    sget-object v6, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->AVI_PLUGIN:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    const-string v2, ""

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/krf/internal/VirtualViewImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZILcom/amazon/krf/platform/VirtualView$VirtualViewType;)V

    return-object p1
.end method

.method private getDescriptionForItemType(Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;)Ljava/lang/String;
    .locals 2

    .line 364
    sget-object v0, Lcom/amazon/krf/platform/KRFVirtualViewManager$1;->$SwitchMap$com$amazon$krf$platform$DecorationItem$DecorationItemType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "note"

    const-string v1, " "

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string/jumbo v0, "wordwise"

    goto :goto_1

    :pswitch_1
    const-string/jumbo v0, "popular highlight"

    goto :goto_1

    :pswitch_2
    const-string v0, "graphical highlight"

    goto :goto_1

    :pswitch_3
    const-string/jumbo v0, "underlined note"

    goto :goto_1

    :pswitch_4
    const-string v0, "highlight"

    goto :goto_1

    :goto_0
    :pswitch_5
    move-object v0, v1

    :goto_1
    :pswitch_6
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getMainView()Lcom/amazon/krf/internal/VirtualViewImpl;
    .locals 10

    .line 643
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 647
    :cond_0
    iget-object v2, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mAccessibilityHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/krf/platform/AccessibilityHandler;

    if-nez v2, :cond_1

    return-object v1

    .line 651
    :cond_1
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-direct {v6, v1, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 655
    invoke-interface {v2, v0, v1}, Lcom/amazon/krf/platform/AccessibilityHandler;->getTextAtGranularity(IZ)Ljava/lang/String;

    move-result-object v5

    .line 656
    new-instance v0, Lcom/amazon/krf/internal/VirtualViewImpl;

    const/4 v7, 0x1

    const/4 v8, -0x1

    sget-object v9, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->MAIN_VIEW:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    move-object v3, v0

    move-object v4, v5

    invoke-direct/range {v3 .. v9}, Lcom/amazon/krf/internal/VirtualViewImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZILcom/amazon/krf/platform/VirtualView$VirtualViewType;)V

    return-object v0
.end method

.method private isDecorationItemAccessible(Lcom/amazon/krf/platform/DecorationItem;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 684
    :cond_0
    sget-object v1, Lcom/amazon/krf/platform/KRFVirtualViewManager$1;->$SwitchMap$com$amazon$krf$platform$DecorationItem$DecorationItemType:[I

    invoke-virtual {p1}, Lcom/amazon/krf/platform/DecorationItem;->getType()Lcom/amazon/krf/platform/DecorationItem$DecorationItemType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isRectCoveredInList(Ljava/util/ArrayList;Landroid/graphics/Rect;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/internal/VirtualViewImpl;",
            ">;",
            "Landroid/graphics/Rect;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 667
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 669
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/krf/internal/VirtualViewImpl;

    invoke-virtual {v2}, Lcom/amazon/krf/internal/VirtualViewImpl;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private populateVirtualViewListForAnnoPluginitems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/internal/VirtualViewImpl;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/internal/VirtualViewImpl;",
            ">;)V"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mAccessibilityHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/AccessibilityHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 445
    invoke-interface {v0, v1}, Lcom/amazon/krf/platform/AccessibilityHandler;->getAccessibilityPluginItems(Z)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 449
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 450
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/krf/platform/AccessibilityPluginItem;

    invoke-direct {p0, v2}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->createVirtualViewFromPluginItem(Lcom/amazon/krf/platform/AccessibilityPluginItem;)Lcom/amazon/krf/internal/VirtualViewImpl;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 453
    invoke-virtual {v2}, Lcom/amazon/krf/internal/VirtualViewImpl;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->isRectCoveredInList(Ljava/util/ArrayList;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 454
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 457
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "populateVirtualViewListForAnnoPluginitems i:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " createVirtualViewFromPluginItem returned null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VirtualViewManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private populateVirtualViewListForContentElements(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/internal/VirtualViewImpl;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/internal/VirtualViewImpl;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mAccessibilityHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/AccessibilityHandler;

    if-nez v0, :cond_1

    return-void

    .line 633
    :cond_1
    invoke-interface {v0, p3}, Lcom/amazon/krf/platform/AccessibilityHandler;->getContentVirtualViews(Z)Ljava/util/ArrayList;

    move-result-object p3

    const/4 v0, 0x0

    .line 634
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 635
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/internal/VirtualViewImpl;

    invoke-virtual {v1}, Lcom/amazon/krf/internal/VirtualViewImpl;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->isRectCoveredInList(Ljava/util/ArrayList;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 636
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private populateVirtualViewListForDecorationItem(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/internal/VirtualViewImpl;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/internal/VirtualViewImpl;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mAccessibilityHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/AccessibilityHandler;

    if-nez v0, :cond_1

    return-void

    .line 541
    :cond_1
    invoke-interface {v0}, Lcom/amazon/krf/platform/AccessibilityHandler;->getDecorationItems()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 545
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 546
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/krf/platform/DecorationItem;

    .line 547
    invoke-direct {p0, v2}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->isDecorationItemAccessible(Lcom/amazon/krf/platform/DecorationItem;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 548
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 549
    invoke-virtual {v2}, Lcom/amazon/krf/platform/DecorationItem;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 552
    invoke-direct {p0, p1, v7}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->isRectCoveredInList(Ljava/util/ArrayList;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 553
    invoke-virtual {v2}, Lcom/amazon/krf/platform/DecorationItem;->getText()Ljava/lang/String;

    move-result-object v6

    .line 554
    invoke-direct {p0, v2}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->createAccessibilityContentDescriptionForDecorationItem(Lcom/amazon/krf/platform/DecorationItem;)Ljava/lang/String;

    move-result-object v5

    .line 555
    new-instance v2, Lcom/amazon/krf/internal/VirtualViewImpl;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/lit8 v8, v3, 0x1

    sget-object v9, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->CONTENT_DECORATION:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/amazon/krf/internal/VirtualViewImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLcom/amazon/krf/platform/VirtualView$VirtualViewType;)V

    .line 556
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 559
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "populateVirtualViewListForDecorationItem() Item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VirtualViewManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method private populateVirtualViewListForGraphics(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/internal/VirtualViewImpl;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/internal/VirtualViewImpl;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mAccessibilityHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/AccessibilityHandler;

    if-nez v0, :cond_1

    return-void

    .line 574
    :cond_1
    invoke-interface {v0}, Lcom/amazon/krf/platform/AccessibilityHandler;->getImagePageElements()[Lcom/amazon/krf/platform/element/ImagePageElement;

    move-result-object v1

    .line 575
    invoke-interface {v0}, Lcom/amazon/krf/platform/AccessibilityHandler;->getKVGPageElements()[Lcom/amazon/krf/platform/element/KVGPageElement;

    move-result-object v0

    .line 577
    invoke-direct {p0, p1, p2, v1}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->populateVirtualViewListForTextPageElements(Ljava/util/ArrayList;Ljava/util/ArrayList;[Lcom/amazon/krf/platform/element/TextPageElement;)V

    .line 578
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->populateVirtualViewListForTextPageElements(Ljava/util/ArrayList;Ljava/util/ArrayList;[Lcom/amazon/krf/platform/element/TextPageElement;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private populateVirtualViewListForNonAnnoPluginItems(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/internal/VirtualViewImpl;",
            ">;)V"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mAccessibilityHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/platform/AccessibilityHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 403
    invoke-interface {v0, v1}, Lcom/amazon/krf/platform/AccessibilityHandler;->getAccessibilityPluginItems(Z)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 408
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 409
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 410
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/krf/platform/AccessibilityPluginItem;

    invoke-direct {p0, v4}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->createVirtualViewFromPluginItem(Lcom/amazon/krf/platform/AccessibilityPluginItem;)Lcom/amazon/krf/internal/VirtualViewImpl;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 412
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 414
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "populateVirtualViewListForNonAnnoPluginItems i:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " createVirtualViewFromPluginItem returned null."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VirtualViewManager"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 418
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 419
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 422
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/krf/internal/VirtualViewImpl;

    .line 423
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_3
    if-le v4, v0, :cond_5

    .line 425
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/krf/internal/VirtualViewImpl;

    .line 427
    invoke-virtual {v6}, Lcom/amazon/krf/internal/VirtualViewImpl;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v3}, Lcom/amazon/krf/internal/VirtualViewImpl;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_4
    if-nez v5, :cond_6

    .line 433
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method private populateVirtualViewListForTextPageElements(Ljava/util/ArrayList;Ljava/util/ArrayList;[Lcom/amazon/krf/platform/element/TextPageElement;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/internal/VirtualViewImpl;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/internal/VirtualViewImpl;",
            ">;[",
            "Lcom/amazon/krf/platform/element/TextPageElement;",
            ")V"
        }
    .end annotation

    .line 583
    array-length v0, p3

    if-nez v0, :cond_0

    return-void

    .line 587
    :cond_0
    sget-object v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->UNDEFINED:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    const/4 v0, 0x0

    .line 591
    aget-object v1, p3, v0

    invoke-virtual {v1}, Lcom/amazon/krf/platform/element/PageElement;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    return-void

    .line 598
    :cond_1
    sget-object v1, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->KVG:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    const-string v2, "math"

    goto :goto_0

    .line 593
    :cond_2
    sget-object v1, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->IMAGE:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    const-string v2, "image"

    .line 605
    :goto_0
    array-length v9, p3

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_5

    aget-object v3, p3, v10

    .line 606
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 607
    invoke-virtual {v3}, Lcom/amazon/krf/platform/element/PageElement;->getCoveringRectangles()[Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 608
    array-length v5, v4

    if-lez v5, :cond_3

    .line 609
    aget-object v4, v4, v0

    invoke-virtual {v4, v6}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 612
    :cond_3
    invoke-direct {p0, p1, v6}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->isRectCoveredInList(Ljava/util/ArrayList;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 613
    invoke-virtual {v3}, Lcom/amazon/krf/platform/element/TextPageElement;->getText()Ljava/lang/String;

    move-result-object v5

    .line 614
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 615
    new-instance v11, Lcom/amazon/krf/internal/VirtualViewImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/krf/platform/KRFVirtualViewManager;->PAUSE_A_LITTLE_BIT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 617
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    move-object v3, v11

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/krf/internal/VirtualViewImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLcom/amazon/krf/platform/VirtualView$VirtualViewType;)V

    .line 618
    invoke-virtual {p2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public calculateVirtualViews(ZLcom/amazon/krf/platform/VirtualView$VirtualViewType;ILcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;Z)Z
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateVirtualViews isSupportPageTurn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " targetBufferType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " targetId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 82
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 88
    monitor-enter p0

    if-eqz p5, :cond_0

    .line 89
    :try_start_0
    iget v6, v1, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mNextContentVirtualViewId:I

    goto :goto_0

    :cond_0
    iget v6, v1, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mFirstContentVirtualViewId:I

    .line 91
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    iget-object v7, v1, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mView:Ljava/lang/ref/WeakReference;

    const/4 v9, 0x1

    if-eqz v7, :cond_a

    .line 96
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 98
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 99
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 100
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-direct {v1, v10}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->populateVirtualViewListForNonAnnoPluginItems(Ljava/util/ArrayList;)V

    .line 105
    invoke-direct {v1, v10, v7}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->populateVirtualViewListForAnnoPluginitems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 107
    sget-object v15, Lcom/amazon/krf/platform/KRFVirtualViewManager$1;->$SwitchMap$com$amazon$krf$platform$constants$ContentAccessibilityVerbosity:[I

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aget v15, v15, v16

    if-eq v15, v9, :cond_5

    const/4 v8, 0x2

    if-eq v15, v8, :cond_4

    .line 117
    invoke-direct/range {p0 .. p0}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->getMainView()Lcom/amazon/krf/internal/VirtualViewImpl;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 118
    invoke-virtual {v8}, Lcom/amazon/krf/internal/VirtualViewImpl;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    invoke-direct {v1, v10, v13}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->isRectCoveredInList(Ljava/util/ArrayList;Landroid/graphics/Rect;)Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_1
    const/4 v8, 0x0

    .line 121
    :cond_2
    invoke-direct {v1, v10, v12}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->populateVirtualViewListForGraphics(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 122
    invoke-direct {v1, v10, v11}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->populateVirtualViewListForDecorationItem(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    if-eqz v8, :cond_3

    .line 124
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_3
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 127
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 113
    :cond_4
    invoke-direct {v1, v10, v13, v9}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->populateVirtualViewListForContentElements(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 114
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    .line 109
    invoke-direct {v1, v10, v13, v8}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->populateVirtualViewListForContentElements(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 110
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 130
    :goto_2
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 131
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 135
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v11, v6

    const/4 v10, 0x0

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amazon/krf/internal/VirtualViewImpl;

    add-int/lit8 v13, v10, 0x1

    .line 136
    invoke-virtual {v12, v10}, Lcom/amazon/krf/internal/VirtualViewImpl;->setOrder(I)V

    .line 137
    invoke-virtual {v12}, Lcom/amazon/krf/internal/VirtualViewImpl;->getViewType()Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    move-result-object v10

    sget-object v15, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->MAIN_VIEW:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    const/4 v8, 0x4

    if-ne v10, v15, :cond_6

    .line 138
    invoke-virtual {v12, v8}, Lcom/amazon/krf/internal/VirtualViewImpl;->setId(I)V

    :goto_4
    move v10, v13

    const/4 v8, 0x0

    goto :goto_3

    :cond_6
    add-int/lit8 v10, v11, 0x1

    .line 141
    invoke-virtual {v12, v11}, Lcom/amazon/krf/internal/VirtualViewImpl;->setId(I)V

    if-gez v10, :cond_7

    const/4 v11, 0x4

    goto :goto_4

    :cond_7
    move v11, v10

    goto :goto_4

    :cond_8
    if-eqz v0, :cond_9

    .line 149
    invoke-direct {v1, v14, v2, v3}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->addNodesToSupportPageTurn(Ljava/util/ArrayList;Lcom/amazon/krf/platform/VirtualView$VirtualViewType;I)V

    .line 153
    :cond_9
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/krf/internal/VirtualViewImpl;

    .line 154
    invoke-virtual {v2}, Lcom/amazon/krf/internal/VirtualViewImpl;->getId()I

    move-result v3

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    invoke-virtual {v2}, Lcom/amazon/krf/internal/VirtualViewImpl;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    move v11, v6

    .line 159
    :cond_b
    monitor-enter p0

    .line 162
    :try_start_1
    iget-object v0, v1, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mVisibleVirtualViewIDOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_c

    const/4 v0, 0x1

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_d

    .line 163
    iget-object v0, v1, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mVisibleVirtualViewIDOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_f

    .line 165
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 166
    iget-object v3, v1, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mVisibleVirtualViewMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/krf/internal/VirtualViewImpl;

    .line 167
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/internal/VirtualViewImpl;

    .line 168
    invoke-virtual {v3, v0}, Lcom/amazon/krf/internal/VirtualViewImpl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_f
    if-nez v0, :cond_10

    .line 175
    iput-object v4, v1, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mVisibleVirtualViewMap:Landroid/util/SparseArray;

    .line 176
    iput-object v5, v1, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mVisibleVirtualViewIDOrder:Ljava/util/ArrayList;

    .line 177
    iput v6, v1, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mFirstContentVirtualViewId:I

    .line 178
    iput v11, v1, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mNextContentVirtualViewId:I

    const/4 v8, 0x1

    goto :goto_8

    :cond_10
    const/4 v8, 0x0

    .line 181
    :goto_8
    monitor-exit p0

    return v8

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 91
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public declared-synchronized getIDOfVirtualViewWithLowestZOrder()I
    .locals 5

    monitor-enter p0

    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 327
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mVisibleVirtualViewMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 328
    iget-object v3, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mVisibleVirtualViewMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/krf/internal/VirtualViewImpl;

    .line 329
    invoke-virtual {v3}, Lcom/amazon/krf/internal/VirtualViewImpl;->getZOrder()I

    move-result v4

    if-ge v4, v1, :cond_0

    .line 333
    invoke-virtual {v3}, Lcom/amazon/krf/internal/VirtualViewImpl;->getId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 337
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMainViewID()I
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 191
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mVisibleVirtualViewMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mVisibleVirtualViewMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/internal/VirtualViewImpl;

    .line 193
    invoke-virtual {v1}, Lcom/amazon/krf/internal/VirtualViewImpl;->getViewType()Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    move-result-object v2

    sget-object v3, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->MAIN_VIEW:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    if-ne v2, v3, :cond_0

    .line 194
    invoke-virtual {v1}, Lcom/amazon/krf/internal/VirtualViewImpl;->getId()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 197
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVirtualViewIdWithCoordinates(FF)I
    .locals 5

    monitor-enter p0

    .line 291
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 292
    :goto_0
    iget-object v3, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mVisibleVirtualViewMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 293
    iget-object v3, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mVisibleVirtualViewMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/krf/internal/VirtualViewImpl;

    .line 294
    invoke-virtual {v3, p1, p2}, Lcom/amazon/krf/internal/VirtualViewImpl;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 295
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/high16 p1, -0x80000000

    const/high16 p2, -0x80000000

    .line 303
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 304
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/krf/internal/VirtualViewImpl;

    .line 305
    invoke-virtual {v2}, Lcom/amazon/krf/internal/VirtualViewImpl;->getZOrder()I

    move-result v3

    if-lt v3, p2, :cond_2

    .line 308
    invoke-virtual {v2}, Lcom/amazon/krf/internal/VirtualViewImpl;->getId()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 312
    :cond_3
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getVirtualViewWithId(I)Lcom/amazon/krf/internal/VirtualViewImpl;
    .locals 1

    monitor-enter p0

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mVisibleVirtualViewMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/krf/internal/VirtualViewImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getVisibleVirtualViewIDsInAccessibilityOrder(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 260
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 261
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mVisibleVirtualViewIDOrder:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 263
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getVisibleVirtualViews()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/amazon/krf/internal/VirtualViewImpl;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mVisibleVirtualViewMap:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isRectInView(Landroid/graphics/Rect;)Z
    .locals 5

    .line 348
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFVirtualViewManager;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 350
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 351
    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
