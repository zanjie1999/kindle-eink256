.class public Lcom/amazon/kcp/library/ui/EmptyLibraryView;
.super Landroid/widget/LinearLayout;
.source "EmptyLibraryView.java"


# instance fields
.field private buttonContainer:Landroid/view/ViewGroup;

.field private emptyLibrarySeparator:Landroid/view/View;

.field private emptyLibraryTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public addButton(IILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 128
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/library/ui/EmptyLibraryView;->addButton(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected addButton(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 81
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/EmptyLibraryView;->getEmptyLibraryButtonLayout()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/library/ui/EmptyLibraryView;->buttonContainer:Landroid/view/ViewGroup;

    invoke-static {v0, v1, v2}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/EmptyLibraryView;->buttonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/amazon/kcp/library/ui/EmptyLibraryView$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/ui/EmptyLibraryView$1;-><init>(Lcom/amazon/kcp/library/ui/EmptyLibraryView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    :cond_0
    sget p1, Lcom/amazon/kindle/librarymodule/R$id;->description:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 111
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_1
    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/EmptyLibraryView;->emptyLibrarySeparator:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public clearButtons()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/EmptyLibraryView;->buttonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/EmptyLibraryView;->emptyLibrarySeparator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected getEmptyLibraryButtonLayout()I
    .locals 1

    .line 138
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->ruby_empty_library_button:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 46
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 47
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->empty_library_buttons:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/EmptyLibraryView;->buttonContainer:Landroid/view/ViewGroup;

    .line 48
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->empty_library_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/EmptyLibraryView;->emptyLibraryTitleView:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->empty_library_separator:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/EmptyLibraryView;->emptyLibrarySeparator:Landroid/view/View;

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 68
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/ui/EmptyLibraryView;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/EmptyLibraryView;->emptyLibraryTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
