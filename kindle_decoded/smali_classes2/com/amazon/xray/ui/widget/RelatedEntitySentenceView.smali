.class public Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;
.super Landroid/view/ViewGroup;
.source "RelatedEntitySentenceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnMenuItemClickListener;,
        Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnClickListener;,
        Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$InternalButtonListener;,
        Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;,
        Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$EntityOnClickListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_ROWS:I

.field private static final LABEL_VIEW_TAG:Ljava/lang/Object;

.field private static final MEASURE_UNSPECIFIED:I

.field private static final OVERFLOW_VIEW_TAG:Ljava/lang/Object;

.field private static final SEPARATOR_VIEW_TAG:Ljava/lang/Object;


# instance fields
.field private contentViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private entities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private entityOnClickListener:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$EntityOnClickListener;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final internalButtonListener:Landroid/view/View$OnClickListener;

.field private labelView:Landroid/widget/TextView;

.field private maxRows:I

.field private overflowEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private final overflowMenuClickListener:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnMenuItemClickListener;

.field private final overflowOnClickListener:Landroid/view/View$OnClickListener;

.field private overflowPopupMenu:Landroid/widget/PopupMenu;

.field private overflowView:Landroid/widget/Button;

.field private recycledButtons:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private recycledSeparators:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field rowViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private visibleButtons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->LABEL_VIEW_TAG:Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->OVERFLOW_VIEW_TAG:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->SEPARATOR_VIEW_TAG:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 39
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->MEASURE_UNSPECIFIED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 93
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$InternalButtonListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$InternalButtonListener;-><init>(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$1;)V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->internalButtonListener:Landroid/view/View$OnClickListener;

    .line 51
    new-instance v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnClickListener;-><init>(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$1;)V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->overflowOnClickListener:Landroid/view/View$OnClickListener;

    .line 54
    new-instance v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnMenuItemClickListener;

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnMenuItemClickListener;-><init>(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$1;)V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->overflowMenuClickListener:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnMenuItemClickListener;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->rowViews:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->contentViews:Ljava/util/List;

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->visibleButtons:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->recycledButtons:Ljava/util/Stack;

    .line 84
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->recycledSeparators:Ljava/util/Stack;

    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->inflater:Landroid/view/LayoutInflater;

    const/4 p1, 0x0

    .line 96
    iput p1, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->maxRows:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$InternalButtonListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$InternalButtonListener;-><init>(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$1;)V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->internalButtonListener:Landroid/view/View$OnClickListener;

    .line 51
    new-instance v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnClickListener;-><init>(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$1;)V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->overflowOnClickListener:Landroid/view/View$OnClickListener;

    .line 54
    new-instance v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnMenuItemClickListener;

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnMenuItemClickListener;-><init>(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$1;)V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->overflowMenuClickListener:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnMenuItemClickListener;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->rowViews:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->contentViews:Ljava/util/List;

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->visibleButtons:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->recycledButtons:Ljava/util/Stack;

    .line 84
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->recycledSeparators:Ljava/util/Stack;

    .line 110
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->inflater:Landroid/view/LayoutInflater;

    .line 113
    sget v2, Lcom/amazon/kindle/xray/R$layout;->xray_view_related_entity_sentence_label:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->labelView:Landroid/widget/TextView;

    .line 114
    sget v2, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->MEASURE_UNSPECIFIED:I

    invoke-virtual {v0, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 115
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->labelView:Landroid/widget/TextView;

    sget-object v2, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->LABEL_VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/amazon/kindle/xray/R$layout;->xray_view_related_entity_sentence_overflow:I

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->overflowView:Landroid/widget/Button;

    .line 118
    sget-object v2, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->OVERFLOW_VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->overflowView:Landroid/widget/Button;

    iget-object v2, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->overflowOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    sget-object v0, Lcom/amazon/kindle/xray/R$styleable;->XrayRelatedEntitySentenceViewAttributes:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 123
    :try_start_0
    sget p2, Lcom/amazon/kindle/xray/R$styleable;->XrayRelatedEntitySentenceViewAttributes_xray_max_rows:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->maxRows:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 129
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object p1

    .line 130
    iget-object p2, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->labelView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryTextColor()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object p2, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->overflowView:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryButtonColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 132
    iget-object p2, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->overflowView:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getInlineCaretIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, v1, v1, p1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :catchall_0
    move-exception p2

    .line 125
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    throw p2
.end method

.method static synthetic access$500(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$EntityOnClickListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->entityOnClickListener:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$EntityOnClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->overflowEntities:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)Landroid/widget/PopupMenu;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->overflowPopupMenu:Landroid/widget/PopupMenu;

    return-object p0
.end method

.method static synthetic access$702(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->overflowPopupMenu:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$800(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)Landroid/widget/Button;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->overflowView:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;)Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnMenuItemClickListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->overflowMenuClickListener:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$OverflowOnMenuItemClickListener;

    return-object p0
.end method

.method private applyViewPositions(Ljava/util/List;III)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;III)V"
        }
    .end annotation

    .line 355
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 356
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;

    .line 357
    invoke-static {v1, p2}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;->access$302(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;I)I

    add-int v2, p3, p4

    .line 358
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;->access$402(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;I)I

    .line 359
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getButton(Lcom/amazon/xray/model/object/Entity;)Landroid/widget/Button;
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->recycledButtons:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/amazon/kindle/xray/R$layout;->xray_view_related_entity_sentence_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 190
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->internalButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryButtonColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->recycledButtons:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 197
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Entity;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method private getSeparator()Landroid/widget/TextView;
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->recycledSeparators:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/amazon/kindle/xray/R$layout;->xray_view_related_entity_sentence_separator:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 173
    sget-object v1, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->SEPARATOR_VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 174
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 176
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->recycledSeparators:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_0
    return-object v0
.end method

.method private resetContent()V
    .locals 3

    const/4 v0, 0x0

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->visibleButtons:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->recycledButtons:Ljava/util/Stack;

    iget-object v2, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->visibleButtons:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->visibleButtons:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 163
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 390
    instance-of p1, p1, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;

    return p1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->generateDefaultLayoutParams()Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;
    .locals 2

    .line 380
    new-instance v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;
    .locals 2

    .line 375
    new-instance v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;
    .locals 1

    .line 385
    new-instance v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 395
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 398
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->overflowPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 365
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 366
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->contentViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 367
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;

    const/4 p4, -0x1

    const/4 p5, 0x1

    .line 368
    invoke-virtual {p0, p2, p4, p3, p5}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 369
    invoke-static {p3}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;->access$300(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;)I

    move-result p4

    invoke-static {p3}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;->access$400(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;)I

    move-result p5

    invoke-static {p3}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;->access$300(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p3}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;->access$400(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$LayoutParams;)I

    move-result p3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr p3, v1

    invoke-virtual {p2, p4, p5, v0, p3}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 205
    iget-object v3, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->contentViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 206
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 207
    sget-object v6, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->SEPARATOR_VIEW_TAG:Ljava/lang/Object;

    if-ne v5, v6, :cond_0

    .line 208
    iget-object v5, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->recycledSeparators:Ljava/util/Stack;

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 211
    :cond_1
    iget-object v3, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->contentViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 214
    iget-object v3, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->entities:Ljava/util/List;

    if-eqz v3, :cond_e

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_7

    .line 232
    :cond_2
    iget-object v3, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->labelView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    const/4 v4, 0x0

    add-int/2addr v3, v4

    .line 233
    iget-object v5, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->labelView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 234
    iget-object v6, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->rowViews:Ljava/util/List;

    iget-object v7, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->labelView:Landroid/widget/TextView;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 238
    :goto_1
    iget-object v11, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->entities:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_d

    .line 240
    iget-object v11, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->visibleButtons:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    if-nez v11, :cond_3

    .line 242
    iget-object v11, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->entities:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/amazon/xray/model/object/Entity;

    invoke-direct {v0, v11}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->getButton(Lcom/amazon/xray/model/object/Entity;)Landroid/widget/Button;

    move-result-object v11

    .line 243
    sget v12, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->MEASURE_UNSPECIFIED:I

    invoke-virtual {v11, v12, v12}, Landroid/widget/Button;->measure(II)V

    .line 244
    iget-object v12, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->visibleButtons:Landroid/util/SparseArray;

    invoke-virtual {v12, v7, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    const/4 v12, 0x0

    .line 250
    iget-object v13, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->entities:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    if-eq v7, v13, :cond_4

    .line 251
    invoke-direct/range {p0 .. p0}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->getSeparator()Landroid/widget/TextView;

    move-result-object v12

    .line 252
    sget v13, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->MEASURE_UNSPECIFIED:I

    invoke-virtual {v12, v13, v13}, Landroid/widget/TextView;->measure(II)V

    .line 253
    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v13

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    .line 257
    :goto_2
    invoke-virtual {v11}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v3

    add-int/2addr v15, v13

    if-gt v15, v6, :cond_5

    const/4 v13, 0x1

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    .line 258
    :goto_3
    iget v15, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->maxRows:I

    if-eqz v15, :cond_6

    add-int/lit8 v15, v15, -0x1

    if-ne v8, v15, :cond_6

    const/4 v15, 0x1

    goto :goto_4

    :cond_6
    const/4 v15, 0x0

    :goto_4
    if-nez v13, :cond_a

    if-eqz v15, :cond_a

    .line 261
    iget-object v8, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->overflowView:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v13, Lcom/amazon/kindle/xray/R$string;->xray_related_entities_more:I

    new-array v15, v14, [Ljava/lang/Object;

    iget-object v14, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->entities:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v15, v4

    invoke-virtual {v11, v13, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v8, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->overflowView:Landroid/widget/Button;

    sget v11, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->MEASURE_UNSPECIFIED:I

    invoke-virtual {v8, v11, v11}, Landroid/widget/Button;->measure(II)V

    :goto_5
    if-lez v7, :cond_9

    .line 266
    iget-object v8, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->overflowView:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v8

    sub-int v11, v6, v3

    if-le v8, v11, :cond_9

    .line 268
    iget-object v8, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->rowViews:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x1

    sub-int/2addr v11, v13

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 271
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    sget-object v13, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->SEPARATOR_VIEW_TAG:Ljava/lang/Object;

    if-ne v11, v13, :cond_7

    .line 272
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v3, v11

    .line 273
    iget-object v11, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->rowViews:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 274
    iget-object v11, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->recycledSeparators:Ljava/util/Stack;

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v11, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v8, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->rowViews:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    const/4 v13, 0x1

    sub-int/2addr v11, v13

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 281
    :cond_7
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/amazon/xray/model/object/Entity;

    if-eqz v11, :cond_8

    .line 282
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v3, v11

    .line 283
    iget-object v11, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->rowViews:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v7, v7, -0x1

    .line 288
    iget-object v8, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->overflowView:Landroid/widget/Button;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v13, Lcom/amazon/kindle/xray/R$string;->xray_related_entities_more:I

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    iget-object v14, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->entities:Ljava/util/List;

    .line 289
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v15, v4

    .line 288
    invoke-virtual {v11, v13, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v8, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->overflowView:Landroid/widget/Button;

    sget v11, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->MEASURE_UNSPECIFIED:I

    invoke-virtual {v8, v11, v11}, Landroid/widget/Button;->measure(II)V

    goto :goto_5

    .line 293
    :cond_9
    iget-object v4, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->rowViews:Ljava/util/List;

    iget-object v6, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->overflowView:Landroid/widget/Button;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v4, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->entities:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4, v7, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->overflowEntities:Ljava/util/List;

    if-eqz v12, :cond_d

    .line 300
    iget-object v4, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->recycledSeparators:Ljava/util/Stack;

    invoke-virtual {v4, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_a
    if-nez v13, :cond_b

    .line 308
    iget-object v13, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->rowViews:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v15

    add-int/2addr v15, v10

    invoke-direct {v0, v13, v14, v15, v5}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->applyViewPositions(Ljava/util/List;III)V

    add-int/2addr v10, v5

    .line 310
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 311
    iget-object v3, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->contentViews:Ljava/util/List;

    iget-object v5, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->rowViews:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 312
    iget-object v3, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->rowViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 319
    :cond_b
    invoke-virtual {v11}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v13

    add-int/2addr v3, v13

    .line 320
    invoke-virtual {v11}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v13

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 321
    iget-object v13, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->rowViews:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v12, :cond_c

    .line 323
    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v3, v11

    .line 324
    invoke-virtual {v12}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 325
    iget-object v11, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->rowViews:Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 330
    :cond_d
    :goto_6
    iget-object v4, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->rowViews:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v10

    invoke-direct {v0, v4, v6, v7, v5}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->applyViewPositions(Ljava/util/List;III)V

    add-int/2addr v10, v5

    .line 332
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 333
    iget-object v4, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->contentViews:Ljava/util/List;

    iget-object v5, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->rowViews:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 334
    iget-object v4, v0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->rowViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 337
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3, v1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result v1

    .line 338
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    add-int/2addr v10, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    add-int/2addr v10, v3

    invoke-static {v10, v2}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result v2

    .line 337
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void

    .line 215
    :cond_e
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3, v1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result v1

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3, v2}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result v2

    .line 215
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setEntities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/xray/model/object/Entity;",
            ">;)V"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->entities:Ljava/util/List;

    .line 141
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->resetContent()V

    return-void
.end method

.method public setEntityOnClickListener(Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$EntityOnClickListener;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;->entityOnClickListener:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView$EntityOnClickListener;

    return-void
.end method
