.class public Lcom/amazon/kcp/home/ui/ResumeShovelerView;
.super Lcom/amazon/kcp/home/ui/ShovelerView;
.source "ResumeShovelerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/ui/ShovelerView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/home/ui/ShovelerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 63
    invoke-virtual {p0}, Lcom/amazon/kcp/home/ui/ResumeShovelerView;->updateShovelerHeight()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/amazon/kcp/home/ui/ShovelerView;->onFinishInflate()V

    .line 38
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->resume_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ShovelerView;->title:Landroid/widget/TextView;

    .line 39
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->resume_shoveler:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/ShovelerView;->shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ShovelerView;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/home/ui/ResumeShovelerView;->setTitleAction(Landroid/widget/TextView;)V

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ShovelerView;->shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/home/ui/ShovelerView;->setShoveler(Lcom/amazon/kcp/library/ui/NestedRecyclerView;)V

    :cond_0
    return-void
.end method

.method public scrollToBeginning()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ShovelerView;->shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ShovelerView;->shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ShovelerView;->shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kcp/home/ui/ShovelerView;->setLayoutManagerForShoveler(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    :cond_0
    return-void
.end method

.method public setTitleAction(Landroid/widget/TextView;)V
    .locals 1

    .line 49
    new-instance v0, Lcom/amazon/kcp/home/ui/ResumeShovelerView$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/home/ui/ResumeShovelerView$1;-><init>(Lcom/amazon/kcp/home/ui/ResumeShovelerView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateShovelerHeight()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ShovelerView;->shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/librarymodule/R$dimen;->shoveler_default_cover_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 87
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 88
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 89
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
