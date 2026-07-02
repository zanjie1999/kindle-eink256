.class public abstract Lcom/amazon/kcp/home/ui/ShovelerView;
.super Landroid/widget/LinearLayout;
.source "ShovelerView.java"


# instance fields
.field private lastVisibleShovelerPosition:I

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field protected shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

.field protected title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/home/ui/ShovelerView;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kcp/home/ui/ShovelerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/kcp/home/ui/ShovelerView;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/amazon/kcp/home/ui/ShovelerView;->lastVisibleShovelerPosition:I

    return p1
.end method


# virtual methods
.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ShovelerView;->shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method public getLastVisibleShovelerPosition()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/amazon/kcp/home/ui/ShovelerView;->lastVisibleShovelerPosition:I

    return v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ShovelerView;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 0

    .line 91
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/ShovelerView;->shoveler:Lcom/amazon/kcp/library/ui/NestedRecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method protected setLayoutManagerForShoveler(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .line 139
    iput-object p2, p0, Lcom/amazon/kcp/home/ui/ShovelerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 140
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method protected setShoveler(Lcom/amazon/kcp/library/ui/NestedRecyclerView;)V
    .locals 3

    const/4 v0, 0x1

    .line 107
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 108
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/home/ui/ShovelerView;->setLayoutManagerForShoveler(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 111
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$dimen;->shoveler_slot_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 112
    new-instance v1, Lcom/amazon/kcp/home/ui/ShovelerView$2;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/home/ui/ShovelerView$2;-><init>(Lcom/amazon/kcp/home/ui/ShovelerView;I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 121
    new-instance v0, Lcom/amazon/kcp/home/ui/ShovelerView$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/home/ui/ShovelerView$3;-><init>(Lcom/amazon/kcp/home/ui/ShovelerView;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public abstract setTitleAction(Landroid/widget/TextView;)V
.end method
