.class Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "AuthorTextListSentenceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LayoutParams"
.end annotation


# instance fields
.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 343
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 339
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;)I
    .locals 0

    .line 333
    iget p0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;->x:I

    return p0
.end method

.method static synthetic access$002(Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;I)I
    .locals 0

    .line 333
    iput p1, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;->x:I

    return p1
.end method

.method static synthetic access$100(Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;)I
    .locals 0

    .line 333
    iget p0, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;->y:I

    return p0
.end method

.method static synthetic access$102(Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;I)I
    .locals 0

    .line 333
    iput p1, p0, Lcom/amazon/startactions/ui/helpers/AuthorTextListSentenceView$LayoutParams;->y:I

    return p1
.end method
