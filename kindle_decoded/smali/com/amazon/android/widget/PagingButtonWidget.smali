.class public Lcom/amazon/android/widget/PagingButtonWidget;
.super Landroid/widget/LinearLayout;
.source "PagingButtonWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/widget/PagingButtonWidget$OnActionItemsClickListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String;

.field public static final magicLutzInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private actionOnActionItemsClickListener:Lcom/amazon/android/widget/PagingButtonWidget$OnActionItemsClickListener;

.field private final actionOnClickListener:Landroid/view/View$OnClickListener;

.field private activeRow:I

.field private anchorPosition:Lcom/amazon/android/widget/WidgetAnchorPosition;

.field private volatile animatingRowChange:Z

.field private backgroundRect:Landroid/graphics/RectF;

.field private buttonsStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private caretPaint:Landroid/graphics/Paint;

.field private caretPath:Landroid/graphics/Path;

.field private caretTriangle:Lcom/amazon/android/widget/CaretTrianglePathMaker;

.field private final categoryOnClickListener:Landroid/view/View$OnClickListener;

.field private clipRect:Landroid/graphics/RectF;

.field private cornerRadius:F

.field private originalPaddingRect:Landroid/graphics/Rect;

.field private pagingButtonWidgetAttrs:Lcom/amazon/android/widget/PagingButtonWidgetAttrs;

.field private scrollViews:[Lcom/amazon/android/widget/HorizontalPagingView;

.field private strokePaint:Landroid/graphics/Paint;

.field private final upButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private viewToActionItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/amazon/android/widget/AbstractActionWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private viewToCategoryItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/View;",
            "Lcom/amazon/android/widget/AbstractCategoryWidgetItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/amazon/android/widget/PagingButtonWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/widget/PagingButtonWidget;->TAG:Ljava/lang/String;

    .line 776
    new-instance v0, Lcom/amazon/android/widget/PagingButtonWidget$7;

    invoke-direct {v0}, Lcom/amazon/android/widget/PagingButtonWidget$7;-><init>()V

    sput-object v0, Lcom/amazon/android/widget/PagingButtonWidget;->magicLutzInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 183
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->activeRow:I

    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->caretPath:Landroid/graphics/Path;

    .line 78
    iput-object v1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->anchorPosition:Lcom/amazon/android/widget/WidgetAnchorPosition;

    .line 84
    iput-boolean v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->animatingRowChange:Z

    .line 90
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->clipRect:Landroid/graphics/RectF;

    .line 97
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->backgroundRect:Landroid/graphics/RectF;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->originalPaddingRect:Landroid/graphics/Rect;

    .line 109
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->buttonsStack:Ljava/util/Stack;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->viewToActionItemMap:Ljava/util/Map;

    .line 117
    new-instance v0, Lcom/amazon/android/widget/PagingButtonWidget$1;

    invoke-direct {v0, p0}, Lcom/amazon/android/widget/PagingButtonWidget$1;-><init>(Lcom/amazon/android/widget/PagingButtonWidget;)V

    iput-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->actionOnClickListener:Landroid/view/View$OnClickListener;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->viewToCategoryItemMap:Ljava/util/Map;

    .line 148
    new-instance v0, Lcom/amazon/android/widget/PagingButtonWidget$2;

    invoke-direct {v0, p0}, Lcom/amazon/android/widget/PagingButtonWidget$2;-><init>(Lcom/amazon/android/widget/PagingButtonWidget;)V

    iput-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->categoryOnClickListener:Landroid/view/View$OnClickListener;

    .line 168
    new-instance v0, Lcom/amazon/android/widget/PagingButtonWidget$3;

    invoke-direct {v0, p0}, Lcom/amazon/android/widget/PagingButtonWidget$3;-><init>(Lcom/amazon/android/widget/PagingButtonWidget;)V

    iput-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->upButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 184
    invoke-direct {p0, p1, v1}, Lcom/amazon/android/widget/PagingButtonWidget;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 188
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 62
    iput v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->activeRow:I

    const/4 v1, 0x0

    .line 71
    iput-object v1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->caretPath:Landroid/graphics/Path;

    .line 78
    iput-object v1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->anchorPosition:Lcom/amazon/android/widget/WidgetAnchorPosition;

    .line 84
    iput-boolean v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->animatingRowChange:Z

    .line 90
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->clipRect:Landroid/graphics/RectF;

    .line 97
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->backgroundRect:Landroid/graphics/RectF;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->originalPaddingRect:Landroid/graphics/Rect;

    .line 109
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->buttonsStack:Ljava/util/Stack;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->viewToActionItemMap:Ljava/util/Map;

    .line 117
    new-instance v0, Lcom/amazon/android/widget/PagingButtonWidget$1;

    invoke-direct {v0, p0}, Lcom/amazon/android/widget/PagingButtonWidget$1;-><init>(Lcom/amazon/android/widget/PagingButtonWidget;)V

    iput-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->actionOnClickListener:Landroid/view/View$OnClickListener;

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->viewToCategoryItemMap:Ljava/util/Map;

    .line 148
    new-instance v0, Lcom/amazon/android/widget/PagingButtonWidget$2;

    invoke-direct {v0, p0}, Lcom/amazon/android/widget/PagingButtonWidget$2;-><init>(Lcom/amazon/android/widget/PagingButtonWidget;)V

    iput-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->categoryOnClickListener:Landroid/view/View$OnClickListener;

    .line 168
    new-instance v0, Lcom/amazon/android/widget/PagingButtonWidget$3;

    invoke-direct {v0, p0}, Lcom/amazon/android/widget/PagingButtonWidget$3;-><init>(Lcom/amazon/android/widget/PagingButtonWidget;)V

    iput-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->upButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/widget/PagingButtonWidget;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 193
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 62
    iput p3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->activeRow:I

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->caretPath:Landroid/graphics/Path;

    .line 78
    iput-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->anchorPosition:Lcom/amazon/android/widget/WidgetAnchorPosition;

    .line 84
    iput-boolean p3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->animatingRowChange:Z

    .line 90
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->clipRect:Landroid/graphics/RectF;

    .line 97
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->backgroundRect:Landroid/graphics/RectF;

    .line 103
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->originalPaddingRect:Landroid/graphics/Rect;

    .line 109
    new-instance p3, Ljava/util/Stack;

    invoke-direct {p3}, Ljava/util/Stack;-><init>()V

    iput-object p3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->buttonsStack:Ljava/util/Stack;

    .line 115
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->viewToActionItemMap:Ljava/util/Map;

    .line 117
    new-instance p3, Lcom/amazon/android/widget/PagingButtonWidget$1;

    invoke-direct {p3, p0}, Lcom/amazon/android/widget/PagingButtonWidget$1;-><init>(Lcom/amazon/android/widget/PagingButtonWidget;)V

    iput-object p3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->actionOnClickListener:Landroid/view/View$OnClickListener;

    .line 146
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->viewToCategoryItemMap:Ljava/util/Map;

    .line 148
    new-instance p3, Lcom/amazon/android/widget/PagingButtonWidget$2;

    invoke-direct {p3, p0}, Lcom/amazon/android/widget/PagingButtonWidget$2;-><init>(Lcom/amazon/android/widget/PagingButtonWidget;)V

    iput-object p3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->categoryOnClickListener:Landroid/view/View$OnClickListener;

    .line 168
    new-instance p3, Lcom/amazon/android/widget/PagingButtonWidget$3;

    invoke-direct {p3, p0}, Lcom/amazon/android/widget/PagingButtonWidget$3;-><init>(Lcom/amazon/android/widget/PagingButtonWidget;)V

    iput-object p3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->upButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/widget/PagingButtonWidget;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 198
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 62
    iput p3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->activeRow:I

    const/4 p4, 0x0

    .line 71
    iput-object p4, p0, Lcom/amazon/android/widget/PagingButtonWidget;->caretPath:Landroid/graphics/Path;

    .line 78
    iput-object p4, p0, Lcom/amazon/android/widget/PagingButtonWidget;->anchorPosition:Lcom/amazon/android/widget/WidgetAnchorPosition;

    .line 84
    iput-boolean p3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->animatingRowChange:Z

    .line 90
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->clipRect:Landroid/graphics/RectF;

    .line 97
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->backgroundRect:Landroid/graphics/RectF;

    .line 103
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->originalPaddingRect:Landroid/graphics/Rect;

    .line 109
    new-instance p3, Ljava/util/Stack;

    invoke-direct {p3}, Ljava/util/Stack;-><init>()V

    iput-object p3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->buttonsStack:Ljava/util/Stack;

    .line 115
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->viewToActionItemMap:Ljava/util/Map;

    .line 117
    new-instance p3, Lcom/amazon/android/widget/PagingButtonWidget$1;

    invoke-direct {p3, p0}, Lcom/amazon/android/widget/PagingButtonWidget$1;-><init>(Lcom/amazon/android/widget/PagingButtonWidget;)V

    iput-object p3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->actionOnClickListener:Landroid/view/View$OnClickListener;

    .line 146
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->viewToCategoryItemMap:Ljava/util/Map;

    .line 148
    new-instance p3, Lcom/amazon/android/widget/PagingButtonWidget$2;

    invoke-direct {p3, p0}, Lcom/amazon/android/widget/PagingButtonWidget$2;-><init>(Lcom/amazon/android/widget/PagingButtonWidget;)V

    iput-object p3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->categoryOnClickListener:Landroid/view/View$OnClickListener;

    .line 168
    new-instance p3, Lcom/amazon/android/widget/PagingButtonWidget$3;

    invoke-direct {p3, p0}, Lcom/amazon/android/widget/PagingButtonWidget$3;-><init>(Lcom/amazon/android/widget/PagingButtonWidget;)V

    iput-object p3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->upButtonOnClickListener:Landroid/view/View$OnClickListener;

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/widget/PagingButtonWidget;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/widget/PagingButtonWidget;)Ljava/util/Map;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->viewToActionItemMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/android/widget/PagingButtonWidget;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->animatingRowChange:Z

    return p0
.end method

.method static synthetic access$102(Lcom/amazon/android/widget/PagingButtonWidget;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->animatingRowChange:Z

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/amazon/android/widget/PagingButtonWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/android/widget/PagingButtonWidget;)Lcom/amazon/android/widget/PagingButtonWidget$OnActionItemsClickListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->actionOnActionItemsClickListener:Lcom/amazon/android/widget/PagingButtonWidget$OnActionItemsClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/android/widget/PagingButtonWidget;)Ljava/util/Map;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->viewToCategoryItemMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/android/widget/PagingButtonWidget;Lcom/amazon/android/widget/WidgetItemGroup;)Ljava/util/List;
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/PagingButtonWidget;->convertModelToButtons(Lcom/amazon/android/widget/WidgetItemGroup;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/android/widget/PagingButtonWidget;)Ljava/util/Stack;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->buttonsStack:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/android/widget/PagingButtonWidget;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/PagingButtonWidget;->updateWidgetFromStack(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/android/widget/PagingButtonWidget;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/amazon/android/widget/PagingButtonWidget;->popVisibleButtons()V

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/android/widget/PagingButtonWidget;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/PagingButtonWidget;->toggleActiveRow(Z)V

    return-void
.end method

.method private convertModelToButtons(Lcom/amazon/android/widget/WidgetItemGroup;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/widget/WidgetItemGroup;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 589
    invoke-virtual {p1}, Lcom/amazon/android/widget/WidgetItemGroup;->getItems()Ljava/util/List;

    move-result-object p1

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 592
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/widget/IInternalWidgetItem;

    const/4 v2, 0x0

    .line 595
    instance-of v3, v1, Lcom/amazon/android/widget/AbstractActionWidgetItem;

    if-eqz v3, :cond_1

    .line 596
    check-cast v1, Lcom/amazon/android/widget/AbstractActionWidgetItem;

    .line 597
    iget-object v2, p0, Lcom/amazon/android/widget/PagingButtonWidget;->actionOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v1, v2}, Lcom/amazon/android/widget/PagingButtonWidget;->makeClickableWidgetItem(Lcom/amazon/android/widget/AbstractInternalWidgetItem;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 599
    iget-object v3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->viewToActionItemMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 601
    :cond_1
    instance-of v3, v1, Lcom/amazon/android/widget/AbstractCategoryWidgetItem;

    if-eqz v3, :cond_2

    .line 602
    check-cast v1, Lcom/amazon/android/widget/AbstractCategoryWidgetItem;

    .line 603
    iget-object v2, p0, Lcom/amazon/android/widget/PagingButtonWidget;->categoryOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0, v1, v2}, Lcom/amazon/android/widget/PagingButtonWidget;->makeClickableWidgetItem(Lcom/amazon/android/widget/AbstractInternalWidgetItem;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 605
    iget-object v3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->viewToCategoryItemMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 607
    :cond_2
    instance-of v3, v1, Lcom/amazon/android/widget/AbstractInputAreaWidgetItem;

    if-eqz v3, :cond_3

    .line 608
    check-cast v1, Lcom/amazon/android/widget/AbstractInputAreaWidgetItem;

    invoke-direct {p0, v1}, Lcom/amazon/android/widget/PagingButtonWidget;->makeInputAreaItem(Lcom/amazon/android/widget/AbstractInputAreaWidgetItem;)Landroid/widget/EditText;

    move-result-object v2

    goto :goto_1

    .line 610
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown type of button: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_4
    :goto_1
    if-eqz v2, :cond_0

    .line 614
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private createCaretPath(IIII)V
    .locals 8

    .line 733
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->anchorPosition:Lcom/amazon/android/widget/WidgetAnchorPosition;

    iget v1, v0, Lcom/amazon/android/widget/WidgetAnchorPosition;->leftBound:I

    sub-int v3, v1, p1

    .line 734
    iget v1, v0, Lcom/amazon/android/widget/WidgetAnchorPosition;->rightBound:I

    sub-int v4, v1, p1

    .line 735
    sget-object v1, Lcom/amazon/android/widget/PagingButtonWidget$8;->$SwitchMap$com$amazon$android$widget$WidgetAnchorPosition$Location:[I

    iget-object v0, v0, Lcom/amazon/android/widget/WidgetAnchorPosition;->location:Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p2, 0x2

    if-eq v0, p2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 743
    iput-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->caretPath:Landroid/graphics/Path;

    .line 744
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->caretTriangle:Lcom/amazon/android/widget/CaretTrianglePathMaker;

    invoke-virtual {p1}, Lcom/amazon/android/widget/CaretTrianglePathMaker;->resetCaretRect()V

    goto :goto_0

    .line 737
    :cond_1
    iget-object p2, p0, Lcom/amazon/android/widget/PagingButtonWidget;->caretTriangle:Lcom/amazon/android/widget/CaretTrianglePathMaker;

    const/4 p4, 0x0

    sub-int/2addr p3, p1

    invoke-virtual {p2, v3, v4, p4, p3}, Lcom/amazon/android/widget/CaretTrianglePathMaker;->createPathTopAroundLine(IIII)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->caretPath:Landroid/graphics/Path;

    goto :goto_0

    .line 740
    :cond_2
    iget-object v2, p0, Lcom/amazon/android/widget/PagingButtonWidget;->caretTriangle:Lcom/amazon/android/widget/CaretTrianglePathMaker;

    const/4 v5, 0x0

    sub-int v6, p3, p1

    sub-int v7, p4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/android/widget/CaretTrianglePathMaker;->createPathBottomAroundLine(IIIII)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->caretPath:Landroid/graphics/Path;

    :goto_0
    return-void
.end method

.method private getPaddingStartFromCaretForViewWidth(II)I
    .locals 5

    .line 284
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->caretTriangle:Lcom/amazon/android/widget/CaretTrianglePathMaker;

    invoke-virtual {v0}, Lcom/amazon/android/widget/CaretTrianglePathMaker;->getCaretRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->originalPaddingRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v2

    .line 287
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 288
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 290
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 292
    div-int/lit8 p1, p1, 0x2

    sub-int v3, v0, p1

    add-int/2addr v0, p1

    .line 296
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result p1

    const/4 v4, 0x1

    if-eq p1, v4, :cond_3

    if-ge v3, v1, :cond_0

    move v3, v1

    :cond_0
    if-le v0, v2, :cond_1

    sub-int/2addr v0, v2

    sub-int/2addr v3, v0

    :cond_1
    if-ge v3, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    sub-int p1, v2, v0

    if-ge v3, v1, :cond_4

    sub-int/2addr v1, v3

    sub-int/2addr p1, v1

    :cond_4
    if-le v0, v2, :cond_5

    sub-int p1, p2, v2

    :cond_5
    move v1, p1

    if-le v1, v2, :cond_6

    sub-int v1, p2, v2

    :cond_6
    :goto_0
    return v1

    :cond_7
    sub-int/2addr v2, v1

    .line 332
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 333
    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v2, p1

    return v2
.end method

.method private getPaddingTopFromCaretForViewHeight(III)I
    .locals 4

    .line 349
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->caretTriangle:Lcom/amazon/android/widget/CaretTrianglePathMaker;

    invoke-virtual {v0}, Lcom/amazon/android/widget/CaretTrianglePathMaker;->getCaretRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_2

    .line 351
    sget-object v1, Lcom/amazon/android/widget/PagingButtonWidget$8;->$SwitchMap$com$amazon$android$widget$WidgetAnchorPosition$Location:[I

    iget-object v3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->anchorPosition:Lcom/amazon/android/widget/WidgetAnchorPosition;

    iget-object v3, v3, Lcom/amazon/android/widget/WidgetAnchorPosition;->location:Lcom/amazon/android/widget/WidgetAnchorPosition$Location;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    return p1

    .line 353
    :cond_1
    iget p2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p1

    return p2

    .line 359
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->originalPaddingRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    .line 360
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p3, v0

    sub-int/2addr p3, p2

    .line 361
    div-int/lit8 p3, p3, 0x3

    .line 362
    div-int/2addr p1, v2

    sub-int/2addr p3, p1

    return p3
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 208
    new-instance v0, Lcom/amazon/android/widget/PagingButtonWidgetAttrs;

    invoke-direct {v0, p1, p2}, Lcom/amazon/android/widget/PagingButtonWidgetAttrs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->pagingButtonWidgetAttrs:Lcom/amazon/android/widget/PagingButtonWidgetAttrs;

    .line 210
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/wl/R$dimen;->paging_widget_corner_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->cornerRadius:F

    .line 212
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->caretPaint:Landroid/graphics/Paint;

    .line 213
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 214
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->caretPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 215
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->caretPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->pagingButtonWidgetAttrs:Lcom/amazon/android/widget/PagingButtonWidgetAttrs;

    iget v0, v0, Lcom/amazon/android/widget/PagingButtonWidgetAttrs;->mButtonColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 217
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->strokePaint:Landroid/graphics/Paint;

    .line 218
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 219
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 220
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->strokePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->pagingButtonWidgetAttrs:Lcom/amazon/android/widget/PagingButtonWidgetAttrs;

    iget v0, v0, Lcom/amazon/android/widget/PagingButtonWidgetAttrs;->mWidgetStrokeColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->strokePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->pagingButtonWidgetAttrs:Lcom/amazon/android/widget/PagingButtonWidgetAttrs;

    iget v0, v0, Lcom/amazon/android/widget/PagingButtonWidgetAttrs;->mWidgetStrokeWidth:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 223
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/wl/R$dimen;->paging_widget_caret_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 224
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/wl/R$dimen;->paging_widget_caret_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 225
    new-instance v1, Lcom/amazon/android/widget/CaretTrianglePathMaker;

    add-int/2addr p1, p2

    invoke-direct {v1, v0, p1}, Lcom/amazon/android/widget/CaretTrianglePathMaker;-><init>(II)V

    iput-object v1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->caretTriangle:Lcom/amazon/android/widget/CaretTrianglePathMaker;

    return-void
.end method

.method private makeClickableWidgetItem(Lcom/amazon/android/widget/AbstractInternalWidgetItem;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 4

    .line 634
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 635
    invoke-virtual {p1, v0}, Lcom/amazon/android/widget/AbstractInternalWidgetItem;->getImage(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 636
    invoke-virtual {p1, v0}, Lcom/amazon/android/widget/AbstractInternalWidgetItem;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 639
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-eqz v1, :cond_1

    .line 645
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/wl/R$layout;->image_button:I

    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 646
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 647
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 650
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/wl/R$layout;->text_button:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 651
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 652
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->pagingButtonWidgetAttrs:Lcom/amazon/android/widget/PagingButtonWidgetAttrs;

    iget p1, p1, Lcom/amazon/android/widget/PagingButtonWidgetAttrs;->mButtonTextColor:I

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 656
    :goto_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0

    .line 640
    :cond_2
    :goto_1
    sget-object p1, Lcom/amazon/android/widget/PagingButtonWidget;->TAG:Ljava/lang/String;

    const-string p2, "Tried to make a button for an AbstractInternalWidgetItem, but no text was provided"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private makeInputAreaItem(Lcom/amazon/android/widget/AbstractInputAreaWidgetItem;)Landroid/widget/EditText;
    .locals 6

    .line 666
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 667
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/wl/R$layout;->input_area_button:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 668
    invoke-virtual {p1, v0}, Lcom/amazon/android/widget/AbstractInputAreaWidgetItem;->getData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    if-eqz v2, :cond_1

    .line 669
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 674
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 675
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 670
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lcom/amazon/android/widget/AbstractInputAreaWidgetItem;->getPlaceholderText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 671
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 672
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 678
    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 679
    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->pagingButtonWidgetAttrs:Lcom/amazon/android/widget/PagingButtonWidgetAttrs;

    iget p1, p1, Lcom/amazon/android/widget/PagingButtonWidgetAttrs;->mButtonTextColor:I

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setTextColor(I)V

    return-object v1
.end method

.method private popVisibleButtons()V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->buttonsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 414
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->buttonsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 415
    invoke-direct {p0, v1}, Lcom/amazon/android/widget/PagingButtonWidget;->updateWidgetFromStack(Z)V

    :cond_0
    return-void
.end method

.method private resetPaddingForMeasure()V
    .locals 4

    .line 269
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->originalPaddingRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    return-void
.end method

.method private setClipRect(FFFF)V
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 717
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 718
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private toggleActiveRow(Z)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 426
    iput-boolean v1, v0, Lcom/amazon/android/widget/PagingButtonWidget;->animatingRowChange:Z

    .line 428
    iget-object v2, v0, Lcom/amazon/android/widget/PagingButtonWidget;->scrollViews:[Lcom/amazon/android/widget/HorizontalPagingView;

    iget v3, v0, Lcom/amazon/android/widget/PagingButtonWidget;->activeRow:I

    aget-object v4, v2, v3

    xor-int/2addr v3, v1

    .line 429
    iput v3, v0, Lcom/amazon/android/widget/PagingButtonWidget;->activeRow:I

    .line 430
    aget-object v2, v2, v3

    .line 432
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 434
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    if-eqz p1, :cond_0

    .line 438
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, -0x2

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 441
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v6

    .line 442
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v7

    .line 443
    invoke-direct/range {p0 .. p0}, Lcom/amazon/android/widget/PagingButtonWidget;->resetPaddingForMeasure()V

    .line 445
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 446
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 447
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v10

    invoke-direct {v0, v8, v10}, Lcom/amazon/android/widget/PagingButtonWidget;->getPaddingStartFromCaretForViewWidth(II)I

    move-result v10

    .line 449
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v11

    .line 450
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v12

    .line 453
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v13

    if-ne v13, v1, :cond_1

    sub-int v13, v6, v10

    int-to-float v13, v13

    .line 454
    invoke-virtual {v2, v13}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_1
    sub-int v13, v10, v6

    int-to-float v13, v13

    .line 456
    invoke-virtual {v2, v13}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    new-array v13, v1, [F

    const/4 v14, -0x1

    if-eqz p1, :cond_2

    const/4 v15, 0x1

    goto :goto_1

    :cond_2
    const/4 v15, -0x1

    :goto_1
    mul-int v15, v15, v5

    int-to-float v15, v15

    const/16 v16, 0x0

    aput v15, v13, v16

    const-string/jumbo v15, "translationY"

    .line 460
    invoke-static {v4, v15, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 461
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v13, v1, [F

    mul-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    aput v5, v13, v16

    .line 464
    invoke-static {v2, v15, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 465
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v5

    if-ne v5, v1, :cond_3

    .line 470
    new-instance v5, Landroid/graphics/RectF;

    .line 471
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v13

    sub-int/2addr v13, v6

    sub-int/2addr v13, v11

    int-to-float v11, v13

    int-to-float v13, v7

    .line 473
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v14

    sub-int/2addr v14, v6

    int-to-float v6, v14

    add-int/2addr v12, v7

    int-to-float v12, v12

    invoke-direct {v5, v11, v13, v6, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 477
    new-instance v6, Landroid/graphics/RectF;

    .line 478
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v11

    sub-int/2addr v11, v8

    sub-int/2addr v11, v10

    int-to-float v8, v11

    .line 480
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v11

    sub-int/2addr v11, v10

    int-to-float v10, v11

    add-int/2addr v7, v9

    int-to-float v7, v7

    invoke-direct {v6, v8, v13, v10, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_2

    .line 484
    :cond_3
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v13, v6

    int-to-float v14, v7

    add-int/2addr v6, v11

    int-to-float v6, v6

    add-int/2addr v12, v7

    int-to-float v11, v12

    invoke-direct {v5, v13, v14, v6, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 490
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v11, v10

    add-int/2addr v10, v8

    int-to-float v8, v10

    add-int/2addr v7, v9

    int-to-float v7, v7

    invoke-direct {v6, v11, v14, v8, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 497
    :goto_2
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 498
    new-instance v8, Lcom/amazon/android/widget/PagingButtonWidget$4;

    invoke-direct {v8, v0, v7}, Lcom/amazon/android/widget/PagingButtonWidget$4;-><init>(Lcom/amazon/android/widget/PagingButtonWidget;Landroid/graphics/RectF;)V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v16

    aput-object v6, v7, v1

    const-string v1, "clipRect"

    invoke-static {v0, v1, v8, v7}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 510
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 513
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 514
    new-instance v3, Lcom/amazon/android/widget/PagingButtonWidget$5;

    invoke-direct {v3, v0, v4, v2}, Lcom/amazon/android/widget/PagingButtonWidget$5;-><init>(Lcom/amazon/android/widget/PagingButtonWidget;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0xc8

    .line 532
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 533
    sget-object v2, Lcom/amazon/android/widget/PagingButtonWidget;->magicLutzInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 534
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private updateWidgetFromStack(Z)V
    .locals 4

    .line 567
    iget v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->activeRow:I

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 568
    iget-object v2, p0, Lcom/amazon/android/widget/PagingButtonWidget;->scrollViews:[Lcom/amazon/android/widget/HorizontalPagingView;

    aget-object v0, v2, v0

    .line 569
    invoke-virtual {v0}, Lcom/amazon/android/widget/HorizontalPagingView;->clearButtons()V

    const/4 v2, 0x0

    .line 570
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 571
    iget-object v2, p0, Lcom/amazon/android/widget/PagingButtonWidget;->buttonsStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lcom/amazon/android/widget/PagingButtonWidget;->buttonsStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-le v3, v1, :cond_0

    iget-object v1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->upButtonOnClickListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/widget/HorizontalPagingView;->addButtons(Ljava/util/List;Landroid/view/View$OnClickListener;)V

    .line 573
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 574
    new-instance v0, Lcom/amazon/android/widget/PagingButtonWidget$6;

    invoke-direct {v0, p0, p1}, Lcom/amazon/android/widget/PagingButtonWidget$6;-><init>(Lcom/amazon/android/widget/PagingButtonWidget;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method public attachItems(Lcom/amazon/android/widget/WidgetItemGroup;)V
    .locals 4

    .line 544
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->viewToActionItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 545
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->viewToCategoryItemMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 546
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->buttonsStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 547
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->scrollViews:[Lcom/amazon/android/widget/HorizontalPagingView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 548
    invoke-virtual {v3}, Lcom/amazon/android/widget/HorizontalPagingView;->clearButtons()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/android/widget/PagingButtonWidget;->convertModelToButtons(Lcom/amazon/android/widget/WidgetItemGroup;)Ljava/util/List;

    move-result-object p1

    .line 552
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->buttonsStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 554
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->scrollViews:[Lcom/amazon/android/widget/HorizontalPagingView;

    iget v1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->activeRow:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    .line 555
    invoke-virtual {v0, p1, v1}, Lcom/amazon/android/widget/HorizontalPagingView;->addButtons(Ljava/util/List;Landroid/view/View$OnClickListener;)V

    .line 557
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->forceLayout()V

    .line 558
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public getPagingViewSize()Landroid/graphics/Point;
    .locals 3

    .line 401
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 402
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 403
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 753
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->backgroundRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->cornerRadius:F

    iget-object v2, p0, Lcom/amazon/android/widget/PagingButtonWidget;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->caretPath:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    .line 758
    iget-object v1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 759
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->caretPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->caretPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->backgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 763
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->backgroundRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->cornerRadius:F

    iget-object v2, p0, Lcom/amazon/android/widget/PagingButtonWidget;->caretPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 766
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 767
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 770
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const/4 v0, 0x1

    .line 230
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 231
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 233
    sget v2, Lcom/amazon/kindle/wl/R$layout;->horizontal_paging_view:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/widget/HorizontalPagingView;

    .line 234
    sget v4, Lcom/amazon/kindle/wl/R$id;->scroll_page_one:I

    invoke-virtual {v2, v4}, Landroid/widget/HorizontalScrollView;->setId(I)V

    .line 235
    sget v4, Lcom/amazon/kindle/wl/R$layout;->horizontal_paging_view:I

    invoke-virtual {v1, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/widget/HorizontalPagingView;

    .line 236
    sget v4, Lcom/amazon/kindle/wl/R$id;->scroll_page_two:I

    invoke-virtual {v1, v4}, Landroid/widget/HorizontalScrollView;->setId(I)V

    .line 238
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 239
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 241
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 243
    iget-object v4, p0, Lcom/amazon/android/widget/PagingButtonWidget;->pagingButtonWidgetAttrs:Lcom/amazon/android/widget/PagingButtonWidgetAttrs;

    iget-object v4, v4, Lcom/amazon/android/widget/PagingButtonWidgetAttrs;->mButtonDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Lcom/amazon/android/widget/HorizontalPagingView;->setButtonDivider(Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v4, p0, Lcom/amazon/android/widget/PagingButtonWidget;->pagingButtonWidgetAttrs:Lcom/amazon/android/widget/PagingButtonWidgetAttrs;

    invoke-virtual {v2, v4}, Lcom/amazon/android/widget/HorizontalPagingView;->setPagingButtonWidgetAttrs(Lcom/amazon/android/widget/PagingButtonWidgetAttrs;)V

    .line 245
    iget-object v4, p0, Lcom/amazon/android/widget/PagingButtonWidget;->pagingButtonWidgetAttrs:Lcom/amazon/android/widget/PagingButtonWidgetAttrs;

    iget-object v4, v4, Lcom/amazon/android/widget/PagingButtonWidgetAttrs;->mButtonDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Lcom/amazon/android/widget/HorizontalPagingView;->setButtonDivider(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v4, p0, Lcom/amazon/android/widget/PagingButtonWidget;->pagingButtonWidgetAttrs:Lcom/amazon/android/widget/PagingButtonWidgetAttrs;

    invoke-virtual {v1, v4}, Lcom/amazon/android/widget/HorizontalPagingView;->setPagingButtonWidgetAttrs(Lcom/amazon/android/widget/PagingButtonWidgetAttrs;)V

    .line 247
    iget-object v4, p0, Lcom/amazon/android/widget/PagingButtonWidget;->strokePaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/amazon/android/widget/PagingButtonWidget;->pagingButtonWidgetAttrs:Lcom/amazon/android/widget/PagingButtonWidgetAttrs;

    iget-object v5, v5, Lcom/amazon/android/widget/PagingButtonWidgetAttrs;->mButtonDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/amazon/android/widget/HorizontalPagingView;

    aput-object v2, v4, v3

    aput-object v1, v4, v0

    .line 248
    iput-object v4, p0, Lcom/amazon/android/widget/PagingButtonWidget;->scrollViews:[Lcom/amazon/android/widget/HorizontalPagingView;

    .line 249
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->originalPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 252
    sget-object v0, Lcom/amazon/android/widget/WidgetAnchorPosition;->NONE:Lcom/amazon/android/widget/WidgetAnchorPosition;

    invoke-virtual {p0, v0}, Lcom/amazon/android/widget/PagingButtonWidget;->setAnchorPosition(Lcom/amazon/android/widget/WidgetAnchorPosition;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 369
    iget-object v0, p0, Lcom/amazon/android/widget/PagingButtonWidget;->scrollViews:[Lcom/amazon/android/widget/HorizontalPagingView;

    iget v1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->activeRow:I

    aget-object v0, v0, v1

    .line 370
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    .line 371
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v2

    .line 372
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/amazon/android/widget/PagingButtonWidget;->createCaretPath(IIII)V

    sub-int v3, p4, p2

    .line 374
    invoke-direct {p0, v1, v3}, Lcom/amazon/android/widget/PagingButtonWidget;->getPaddingStartFromCaretForViewWidth(II)I

    move-result v3

    sub-int v4, p5, p3

    const/4 v5, 0x0

    .line 375
    invoke-direct {p0, v2, v5, v4}, Lcom/amazon/android/widget/PagingButtonWidget;->getPaddingTopFromCaretForViewHeight(III)I

    move-result v4

    .line 378
    iget-boolean v6, p0, Lcom/amazon/android/widget/PagingButtonWidget;->animatingRowChange:Z

    if-nez v6, :cond_0

    .line 379
    invoke-virtual {p0, v3, v4, v5, v5}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 382
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 385
    iget-boolean p1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->animatingRowChange:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->clipRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 386
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    sub-int/2addr p4, v3

    sub-int p1, p4, v1

    int-to-float p1, p1

    int-to-float p2, v4

    int-to-float p3, p4

    add-int/2addr v4, v2

    int-to-float p4, v4

    .line 387
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/android/widget/PagingButtonWidget;->setClipRect(FFFF)V

    goto :goto_0

    :cond_2
    int-to-float p1, v3

    int-to-float p2, v4

    add-int/2addr v3, v1

    int-to-float p3, v3

    add-int/2addr v4, v2

    int-to-float p4, v4

    .line 389
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/android/widget/PagingButtonWidget;->setClipRect(FFFF)V

    .line 392
    :goto_0
    invoke-virtual {v0, v5}, Lcom/amazon/android/widget/HorizontalPagingView;->setSkipScroll(Z)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/amazon/android/widget/PagingButtonWidget;->resetPaddingForMeasure()V

    .line 263
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setAnchorPosition(Lcom/amazon/android/widget/WidgetAnchorPosition;)V
    .locals 0

    .line 689
    iput-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->anchorPosition:Lcom/amazon/android/widget/WidgetAnchorPosition;

    return-void
.end method

.method public setClipRect(Landroid/graphics/RectF;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 700
    invoke-direct {p0, p1, p1, p1, p1}, Lcom/amazon/android/widget/PagingButtonWidget;->setClipRect(FFFF)V

    goto :goto_0

    .line 702
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/amazon/android/widget/PagingButtonWidget;->setClipRect(FFFF)V

    :goto_0
    return-void
.end method

.method public setOnActionItemsClickListener(Lcom/amazon/android/widget/PagingButtonWidget$OnActionItemsClickListener;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/amazon/android/widget/PagingButtonWidget;->actionOnActionItemsClickListener:Lcom/amazon/android/widget/PagingButtonWidget$OnActionItemsClickListener;

    return-void
.end method

.method public final setOrientation(I)V
    .locals 0

    return-void
.end method
