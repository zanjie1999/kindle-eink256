.class public Lcom/amazon/kcp/library/fragments/HeaderGridView;
.super Landroid/widget/GridView;
.source "HeaderGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;,
        Lcom/amazon/kcp/library/fragments/HeaderGridView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kcp/library/fragments/HeaderGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lcom/amazon/kcp/library/fragments/HeaderGridView;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/fragments/HeaderGridView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 78
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/HeaderGridView;->initHeaderGridView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 83
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/HeaderGridView;->initHeaderGridView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 88
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/HeaderGridView;->initHeaderGridView()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcom/amazon/kcp/library/fragments/HeaderGridView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getInnermostAdapter(Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 1

    .line 230
    instance-of v0, p1, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;

    if-eqz v0, :cond_0

    .line 231
    check-cast p1, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/HeaderGridView;->getInnermostAdapter(Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private initHeaderGridView()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-super {p0, v0}, Landroid/widget/GridView;->setClipChildren(Z)V

    const v0, 0x800003

    .line 94
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setGravity(I)V

    return-void
.end method


# virtual methods
.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .line 345
    invoke-super {p0}, Landroid/widget/GridView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedItemPositionsWithHeader()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/HeaderGridView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 325
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 326
    :goto_0
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 327
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 328
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/HeaderGridView;->getHeaderViewCount()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v5

    mul-int v4, v4, v5

    sub-int v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public getHeaderViewCount()I
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 99
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 100
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    .line 101
    instance-of p2, p1, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;

    if-eqz p2, :cond_0

    .line 102
    check-cast p1, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->setNumColumns(I)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 653
    check-cast p1, Landroid/os/Bundle;

    const-string/jumbo v0, "parentSavedState"

    .line 654
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/GridView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, -0x1

    const-string/jumbo v1, "numColumns"

    .line 655
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 656
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/HeaderGridView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 657
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    instance-of v2, v2, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;

    if-eqz v2, :cond_1

    .line 658
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;

    invoke-static {v2}, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->access$100(Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;)I

    move-result v2

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_1

    if-eqz v1, :cond_1

    .line 661
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    invoke-virtual {p0}, Lcom/amazon/kcp/library/fragments/HeaderGridView;->getHeaderViewCount()I

    move-result v0

    mul-int p1, p1, v0

    mul-int v0, v0, v2

    sub-int/2addr v0, p1

    .line 668
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 670
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 671
    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3, v1}, Lcom/amazon/kcp/library/fragments/HeaderGridView;->setItemChecked(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 674
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 675
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/amazon/kcp/library/fragments/HeaderGridView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 637
    invoke-super {p0}, Landroid/widget/GridView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 638
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "parentSavedState"

    .line 639
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 640
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->access$100(Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;)I

    move-result v0

    const-string/jumbo v2, "numColumns"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-object v1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 56
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 209
    new-instance v0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/fragments/HeaderGridView;->getInnermostAdapter(Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;-><init>(Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 210
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 212
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->setNumColumns(I)V

    .line 214
    :cond_0
    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 216
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 0

    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 0

    .line 338
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->setItemChecked(IZ)V

    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1

    .line 256
    new-instance v0, Lcom/amazon/kcp/library/fragments/HeaderGridView$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/library/fragments/HeaderGridView$1;-><init>(Lcom/amazon/kcp/library/fragments/HeaderGridView;Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    invoke-super {p0, v0}, Landroid/widget/GridView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    .line 626
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/fragments/HeaderGridView$HeaderViewGridAdapter;->setNumColumns(I)V

    .line 629
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .line 359
    new-instance v0, Lcom/amazon/kcp/library/fragments/HeaderGridView$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/library/fragments/HeaderGridView$2;-><init>(Lcom/amazon/kcp/library/fragments/HeaderGridView;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
