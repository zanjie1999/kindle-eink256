.class public Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "LibraryRefineMenuAdapter.java"


# instance fields
.field final activity:Landroid/app/Activity;

.field filterGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryFilterGroup;",
            ">;"
        }
    .end annotation
.end field

.field final libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

.field final libraryFilterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/amazon/kcp/library/LibraryFilterStateManager;Lcom/amazon/kcp/library/ILibraryFilter;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->activity:Landroid/app/Activity;

    .line 35
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->filterGroups:Ljava/util/List;

    .line 36
    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->libraryFilterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    .line 37
    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    return-void
.end method

.method private getFilterItemsFromIds(Ljava/util/Set;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    invoke-interface {v2}, Lcom/amazon/kcp/library/ILibraryFilter;->getItemsMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->filterGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/LibraryFilterGroup;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildType(II)I
    .locals 0

    .line 228
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/LibraryFilterItem;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFilterItem;->getFilterViewType()Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    return p1
.end method

.method public getChildTypeCount()I
    .locals 1

    .line 233
    invoke-static {}, Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;->values()[Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 112
    check-cast p4, Lcom/amazon/kcp/widget/LibraryFilterItemView;

    if-nez p4, :cond_1

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kcp/library/LibraryFilterItem;

    .line 115
    sget-object p4, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter$1;->$SwitchMap$com$amazon$kcp$library$LibraryFilterItem$FilterViewType:[I

    invoke-virtual {p3}, Lcom/amazon/kcp/library/LibraryFilterItem;->getFilterViewType()Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, p4, p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eq p3, p4, :cond_0

    .line 122
    iget-object p3, p0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    sget p4, Lcom/amazon/kindle/librarymodule/R$layout;->lib_refine_menu_item:I

    invoke-virtual {p3, p4, p5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    move-object p4, p3

    check-cast p4, Lcom/amazon/kcp/widget/LibraryFilterItemView;

    goto :goto_0

    .line 117
    :cond_0
    iget-object p3, p0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    sget p4, Lcom/amazon/kindle/librarymodule/R$layout;->filter_toggle_item:I

    invoke-virtual {p3, p4, p5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    move-object p4, p3

    check-cast p4, Lcom/amazon/kcp/widget/LibraryFilterItemView;

    .line 127
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->setChildViewProperties(IILcom/amazon/kcp/widget/LibraryFilterItemView;)V

    return-object p4
.end method

.method public getChildrenCount(I)I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->filterGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/LibraryFilterGroup;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method getCountWithFiltersSelected(Lcom/amazon/kcp/library/LibraryFilterItem;I)J
    .locals 5

    .line 189
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/library/LibraryFilterGroup;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->filterGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/LibraryFilterGroup;

    .line 192
    invoke-virtual {v2}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->libraryFilterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->getSelectedItemIdsForGroup(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 197
    invoke-direct {p0, v2}, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->getFilterItemsFromIds(Ljava/util/Set;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-static {v0}, Lcom/amazon/kcp/library/LibraryFilterConstraintCombiner;->combineFilterConstraintsByAnd(Ljava/util/List;)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object p1

    .line 202
    iget-object p2, p0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    invoke-interface {p2, p1}, Lcom/amazon/kcp/library/ILibraryFilter;->applyDefaultFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object p1

    .line 203
    invoke-static {p1}, Lcom/amazon/kcp/library/LibraryCursorFactory;->queryNumberOfLibraryItems(Lcom/amazon/kcp/library/LibraryContentFilter;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->filterGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->filterGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p3, :cond_0

    .line 90
    iget-object p2, p0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/amazon/kindle/librarymodule/R$layout;->lib_refine_menu_group:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 93
    :cond_0
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->refine_menu_group_divider:I

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 94
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/LibraryFilterGroup;

    if-eqz p2, :cond_2

    .line 97
    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getTitleResId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 100
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getTitleResId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->activity:Landroid/app/Activity;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->header:I

    .line 101
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 105
    :cond_2
    :goto_0
    check-cast p4, Landroid/widget/ExpandableListView;

    invoke-virtual {p4, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    return-object p3
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method protected setChildViewProperties(IILcom/amazon/kcp/widget/LibraryFilterItemView;)V
    .locals 6

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/library/LibraryFilterItem;

    .line 134
    invoke-virtual {p0, p3, p2}, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->setItemTitleAndLabel(Lcom/amazon/kcp/widget/LibraryFilterItemView;Lcom/amazon/kcp/library/LibraryFilterItem;)V

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->libraryFilterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    .line 137
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/LibraryFilterGroup;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->isItemIdSelected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 138
    invoke-virtual {p3, v0}, Lcom/amazon/kcp/cover/CheckableFrameLayout;->setChecked(Z)V

    .line 139
    invoke-virtual {p0, p2, p1}, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->getCountWithFiltersSelected(Lcom/amazon/kcp/library/LibraryFilterItem;I)J

    move-result-wide v0

    .line 140
    invoke-virtual {p3, v0, v1}, Lcom/amazon/kcp/widget/LibraryFilterItemView;->setItemCount(J)V

    .line 142
    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryFilterItem;->getContentDescriptionFormatArgs()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryFilterItem;->getContentDescriptionResId()I

    move-result v2

    .line 144
    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryFilterItem;->getContentDescriptionFormatArgs()[Ljava/lang/Object;

    move-result-object v3

    .line 143
    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryFilterItem;->getContentDescriptionResId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 149
    :goto_0
    sget-object v2, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter$1;->$SwitchMap$com$amazon$kcp$library$LibraryFilterItem$FilterViewType:[I

    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryFilterItem;->getFilterViewType()Lcom/amazon/kcp/library/LibraryFilterItem$FilterViewType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    .line 156
    iget-object p2, p0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->activity:Landroid/app/Activity;

    const-wide/16 v3, 0x1

    cmp-long v5, v0, v3

    if-nez v5, :cond_1

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->item_count_desc_singular:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->item_count_desc:I

    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 159
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v4, v2

    .line 156
    invoke-virtual {p2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 151
    :cond_2
    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public setFilterGroups(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/LibraryFilterGroup;",
            ">;)V"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->filterGroups:Ljava/util/List;

    .line 223
    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected setItemTitleAndLabel(Lcom/amazon/kcp/widget/LibraryFilterItemView;Lcom/amazon/kcp/library/LibraryFilterItem;)V
    .locals 5

    .line 165
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryRefineMenuAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 166
    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryFilterItem;->getTitleResId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 168
    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryFilterItem;->getTitleFormatArgs()[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryFilterItem;->getTitleResId()I

    move-result v1

    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryFilterItem;->getTitleFormatArgs()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kcp/library/LibraryFilterItem;->getTitleResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    :goto_0
    invoke-virtual {p1, v1}, Lcom/amazon/kcp/widget/LibraryFilterItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 174
    invoke-virtual {p1, v2}, Lcom/amazon/kcp/widget/LibraryFilterItemView;->setTitleImage(Landroid/graphics/drawable/Drawable;)V

    .line 177
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 178
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v1

    sget-object v4, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v1, v4}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    .line 179
    :goto_1
    invoke-virtual {p2, v1}, Lcom/amazon/kcp/library/LibraryFilterItem;->getImageResId(Lcom/amazon/kindle/krx/theme/Theme;)I

    move-result p2

    if-eq p2, v3, :cond_3

    .line 181
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/widget/LibraryFilterItemView;->setTitleImage(Landroid/graphics/drawable/Drawable;)V

    .line 182
    invoke-virtual {p1, v2}, Lcom/amazon/kcp/widget/LibraryFilterItemView;->setLabel(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setLibraryGroupType(Lcom/amazon/kindle/krx/library/LibraryGroupType;)V
    .locals 0

    return-void
.end method
