.class public Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;
.super Landroid/view/ViewGroup;
.source "AuthorTextListSentenceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;
    }
.end annotation


# static fields
.field private static final LABEL_VIEW_TAG:Ljava/lang/Object;

.field private static final MEASURE_UNSPECIFIED:I

.field private static final SEPARATOR_VIEW_TAG:Ljava/lang/Object;


# instance fields
.field private authorButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private authors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/AuthorBioData;",
            ">;"
        }
    .end annotation
.end field

.field private contentHeight:I

.field private contentViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private contentWidth:I

.field private final inflater:Landroid/view/LayoutInflater;

.field private labelView:Landroid/widget/TextView;

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

.field private rowHeight:I

.field rowViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private rowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->LABEL_VIEW_TAG:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->SEPARATOR_VIEW_TAG:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 33
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->MEASURE_UNSPECIFIED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 72
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-static {}, Lcom/amazon/ea/guava/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->contentViews:Ljava/util/List;

    .line 45
    invoke-static {}, Lcom/amazon/ea/guava/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->authorButtons:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->recycledButtons:Ljava/util/Stack;

    .line 52
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->recycledSeparators:Ljava/util/Stack;

    .line 55
    invoke-static {}, Lcom/amazon/ea/guava/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowViews:Ljava/util/List;

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-static {}, Lcom/amazon/ea/guava/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->contentViews:Ljava/util/List;

    .line 45
    invoke-static {}, Lcom/amazon/ea/guava/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->authorButtons:Ljava/util/List;

    .line 51
    new-instance p2, Ljava/util/Stack;

    invoke-direct {p2}, Ljava/util/Stack;-><init>()V

    iput-object p2, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->recycledButtons:Ljava/util/Stack;

    .line 52
    new-instance p2, Ljava/util/Stack;

    invoke-direct {p2}, Ljava/util/Stack;-><init>()V

    iput-object p2, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->recycledSeparators:Ljava/util/Stack;

    .line 55
    invoke-static {}, Lcom/amazon/ea/guava/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowViews:Ljava/util/List;

    .line 88
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->inflater:Landroid/view/LayoutInflater;

    return-void
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

    .line 292
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 293
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;

    .line 294
    invoke-static {v1, p2}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;->access$002(Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;I)I

    add-int v2, p3, p4

    .line 295
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;->access$102(Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;I)I

    .line 296
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private applyViewToRow()V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowViews:Ljava/util/List;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->contentHeight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->applyViewPositions(Ljava/util/List;III)V

    .line 249
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->contentViews:Ljava/util/List;

    iget-object v1, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowViews:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 250
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private configureNextRow()V
    .locals 2

    .line 257
    iget v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->contentHeight:I

    iget v1, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->contentHeight:I

    .line 258
    iget v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->contentWidth:I

    iget v1, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->contentWidth:I

    const/4 v0, 0x0

    .line 259
    iput v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowHeight:I

    .line 260
    iput v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowWidth:I

    return-void
.end method

.method private getAdjacentView(I)Landroid/view/View;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->authors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 274
    :cond_0
    invoke-direct {p0}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->getSeparator()Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method private getButton(Lcom/amazon/ea/sidecar/def/data/AuthorBioData;)Landroid/widget/Button;
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->recycledButtons:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/amazon/kindle/ea/R$layout;->startactions_widget_author_list_sentence_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 165
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->recycledButtons:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 170
    :goto_0
    iget-object v1, p1, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method

.method private getSeparator()Landroid/widget/TextView;
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->recycledSeparators:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/amazon/kindle/ea/R$layout;->startactions_widget_author_list_sentence_separator:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 149
    sget v1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    sget-object v1, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->SEPARATOR_VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 151
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->recycledSeparators:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_0
    return-object v0
.end method

.method private initialSetup()V
    .locals 1

    const/4 v0, 0x0

    .line 237
    iput v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->contentWidth:I

    .line 238
    iput v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->contentHeight:I

    .line 239
    iput v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowHeight:I

    .line 240
    iput v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowWidth:I

    .line 241
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->contentViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private resetContent()V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->contentViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 106
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 107
    sget-object v3, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->SEPARATOR_VIEW_TAG:Ljava/lang/Object;

    if-ne v2, v3, :cond_1

    .line 108
    iget-object v2, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->recycledSeparators:Ljava/util/Stack;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_1
    instance-of v2, v2, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->recycledButtons:Ljava/util/Stack;

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->contentViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 120
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->authorButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 121
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->authors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/sidecar/def/data/AuthorBioData;

    .line 122
    iget-object v2, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->authorButtons:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->getButton(Lcom/amazon/ea/sidecar/def/data/AuthorBioData;)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 126
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 327
    instance-of p1, p1, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;

    return p1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->generateDefaultLayoutParams()Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;
    .locals 2

    .line 317
    new-instance v0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;
    .locals 2

    .line 312
    new-instance v0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;
    .locals 1

    .line 322
    new-instance v0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getLabelView()Landroid/widget/TextView;
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->labelView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/amazon/kindle/ea/R$layout;->startactions_widget_author_list_sentence_label:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->labelView:Landroid/widget/TextView;

    .line 136
    sget-object v1, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->LABEL_VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->labelView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 302
    invoke-virtual {p0}, Landroid/view/ViewGroup;->detachAllViewsFromParent()V

    .line 303
    iget-object p1, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->contentViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 304
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;

    const/4 p4, -0x1

    const/4 p5, 0x1

    .line 305
    invoke-virtual {p0, p2, p4, p3, p5}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 306
    invoke-static {p3}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;->access$000(Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;)I

    move-result p4

    invoke-static {p3}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;->access$100(Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;)I

    move-result p5

    invoke-static {p3}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;->access$000(Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p3}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;->access$100(Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;)I

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
    .locals 8

    .line 177
    invoke-direct {p0}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->initialSetup()V

    .line 180
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->getLabelView()Landroid/widget/TextView;

    move-result-object v0

    .line 181
    sget v1, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->MEASURE_UNSPECIFIED:I

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 182
    iget v1, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowWidth:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowWidth:I

    .line 183
    iget v1, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowHeight:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowHeight:I

    .line 184
    iget-object v1, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 190
    iget-object v1, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->authors:Ljava/util/List;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 191
    :goto_0
    iget-object v3, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->authors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 193
    iget-object v3, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->authorButtons:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 194
    sget v4, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->MEASURE_UNSPECIFIED:I

    invoke-virtual {v3, v4, v4}, Landroid/widget/Button;->measure(II)V

    .line 197
    invoke-direct {p0, v2}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->getAdjacentView(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 200
    sget v5, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->MEASURE_UNSPECIFIED:I

    invoke-virtual {v4, v5, v5}, Landroid/view/View;->measure(II)V

    .line 201
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 205
    :goto_1
    iget v6, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowWidth:I

    invoke-virtual {v3}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v6, v5

    if-le v6, v0, :cond_1

    .line 207
    invoke-direct {p0}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->applyViewToRow()V

    .line 208
    invoke-direct {p0}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->configureNextRow()V

    .line 212
    :cond_1
    iget v5, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowWidth:I

    invoke-virtual {v3}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowWidth:I

    .line 213
    iget v5, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowHeight:I

    invoke-virtual {v3}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowHeight:I

    .line 214
    iget-object v5, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowViews:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_2

    .line 216
    iget v3, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowWidth:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v3, v5

    iput v3, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowWidth:I

    .line 217
    iget v3, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowHeight:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowHeight:I

    .line 218
    iget-object v3, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowViews:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    :cond_3
    invoke-direct {p0}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->applyViewToRow()V

    .line 225
    iget v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->contentHeight:I

    iget v1, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->contentHeight:I

    .line 226
    iget v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->contentWidth:I

    iget v1, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->rowWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->contentWidth:I

    .line 229
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0, p1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p1

    iget v0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->contentHeight:I

    .line 230
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p2

    .line 229
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAuthors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/ea/sidecar/def/data/AuthorBioData;",
            ">;)V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->authors:Ljava/util/List;

    .line 97
    invoke-direct {p0}, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;->resetContent()V

    return-void
.end method
