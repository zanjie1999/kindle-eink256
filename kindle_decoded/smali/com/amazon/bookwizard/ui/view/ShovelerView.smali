.class public Lcom/amazon/bookwizard/ui/view/ShovelerView;
.super Landroid/widget/LinearLayout;
.source "ShovelerView.java"


# instance fields
.field private adapter:Lcom/amazon/bookwizard/ratings/ShovelerAdapter;

.field private contentPane:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

.field private header:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 69
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 71
    sget v0, Lcom/amazon/bookwizard/R$id;->header_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/bookwizard/ui/view/ShovelerView;->header:Landroid/widget/TextView;

    .line 72
    sget v0, Lcom/amazon/bookwizard/R$id;->content_pane:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    iput-object v0, p0, Lcom/amazon/bookwizard/ui/view/ShovelerView;->contentPane:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    return-void
.end method

.method public setAdapter(Lcom/amazon/bookwizard/ratings/ShovelerAdapter;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/ShovelerView;->adapter:Lcom/amazon/bookwizard/ratings/ShovelerAdapter;

    if-ne v0, p1, :cond_0

    return-void

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/amazon/bookwizard/ui/view/ShovelerView;->adapter:Lcom/amazon/bookwizard/ratings/ShovelerAdapter;

    .line 87
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/ShovelerView;->header:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/amazon/bookwizard/ratings/ShovelerAdapter;->getHeaderText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/amazon/bookwizard/ui/view/ShovelerView;->contentPane:Lcom/amazon/bookwizard/ui/view/HorizontalListView;

    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/ui/view/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
