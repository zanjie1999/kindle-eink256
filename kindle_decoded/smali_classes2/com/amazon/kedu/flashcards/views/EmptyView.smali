.class public abstract Lcom/amazon/kedu/flashcards/views/EmptyView;
.super Landroid/widget/RelativeLayout;
.source "EmptyView.java"


# static fields
.field private static final LAYOUT_RESOURCE_ID:I


# instance fields
.field private addButton:Landroid/widget/ImageButton;

.field private addLabel:Landroid/widget/TextView;

.field private emptyDescription:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    sget v0, Lcom/amazon/kedu/flashcards/R$layout;->fc_view_empty:I

    sput v0, Lcom/amazon/kedu/flashcards/views/EmptyView;->LAYOUT_RESOURCE_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/EmptyView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/EmptyView;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 2

    .line 38
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/views/EmptyView;->LAYOUT_RESOURCE_ID:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->empty_add_button:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/views/EmptyView;->addButton:Landroid/widget/ImageButton;

    .line 41
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->empty_add_label:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/views/EmptyView;->addLabel:Landroid/widget/TextView;

    .line 42
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->empty_description:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/views/EmptyView;->emptyDescription:Landroid/widget/TextView;

    .line 44
    new-instance v0, Lcom/amazon/kedu/flashcards/views/EmptyView$1;

    invoke-direct {v0, p0}, Lcom/amazon/kedu/flashcards/views/EmptyView$1;-><init>(Lcom/amazon/kedu/flashcards/views/EmptyView;)V

    .line 52
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/EmptyView;->addButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/EmptyView;->addLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected abstract onClickAdd(Landroid/view/View;)V
.end method

.method protected setDescriptionText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/EmptyView;->emptyDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setLabelText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/EmptyView;->addButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/EmptyView;->addLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
