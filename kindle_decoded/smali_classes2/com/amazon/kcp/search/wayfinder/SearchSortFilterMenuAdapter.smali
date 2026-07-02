.class public final Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SearchSortFilterMenuAdapter.kt"

# interfaces
.implements Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider$Listener;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final menuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menuProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;->menuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getChild(II)Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;->menuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    invoke-interface {v0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object p1
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;->getChild(II)Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    return-object p1
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p1, p2

    return-wide p1
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 36
    instance-of p3, p4, Lcom/amazon/kcp/widget/LibraryFilterItemView;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object p3, v0

    goto :goto_0

    :cond_0
    move-object p3, p4

    :goto_0
    check-cast p3, Lcom/amazon/kcp/widget/LibraryFilterItemView;

    if-eqz p3, :cond_1

    .line 37
    check-cast p4, Lcom/amazon/kcp/widget/LibraryFilterItemView;

    goto :goto_1

    .line 39
    :cond_1
    iget-object p3, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {p3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p3

    sget p4, Lcom/amazon/kindle/librarymodule/R$layout;->lib_refine_menu_item:I

    const/4 v1, 0x0

    invoke-virtual {p3, p4, p5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_5

    move-object p4, p3

    check-cast p4, Lcom/amazon/kcp/widget/LibraryFilterItemView;

    .line 41
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;->getChild(II)Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 43
    invoke-virtual {p1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;->getImageResId()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_2

    .line 44
    iget-object p2, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;->getImageResId()I

    move-result p5

    invoke-virtual {p2, p5}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/amazon/kcp/widget/LibraryFilterItemView;->setTitleImage(Landroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-virtual {p4, v0}, Lcom/amazon/kcp/widget/LibraryFilterItemView;->setLabel(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 48
    :cond_2
    iget-object p2, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;->getTitleResId()I

    move-result p5

    invoke-virtual {p2, p5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/amazon/kcp/widget/LibraryFilterItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p4, v0}, Lcom/amazon/kcp/widget/LibraryFilterItemView;->setTitleImage(Landroid/graphics/drawable/Drawable;)V

    .line 51
    :goto_2
    invoke-virtual {p1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;->getContentDescriptionResId()I

    move-result p2

    if-eq p2, p3, :cond_3

    .line 52
    iget-object p2, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;->getContentDescriptionResId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 54
    :cond_3
    invoke-virtual {p4, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 56
    :goto_3
    iget-object p2, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;->menuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    invoke-interface {p2}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;->getSelectedItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p4, p1}, Lcom/amazon/kcp/cover/CheckableFrameLayout;->setChecked(Z)V

    :cond_4
    return-object p4

    .line 39
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.amazon.kcp.widget.LibraryFilterItemView"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getChildrenCount(I)I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;->menuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    invoke-interface {v0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getCombinedChildId(JJ)J
    .locals 2

    const/16 v0, 0x64

    int-to-long v0, v0

    mul-long p1, p1, v0

    add-long/2addr p1, p3

    return-wide p1
.end method

.method public getCombinedGroupId(J)J
    .locals 0

    return-wide p1
.end method

.method public getGroup(I)Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;->menuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    invoke-interface {v0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;

    return-object p1
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;->getGroup(I)Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;

    move-result-object p1

    return-object p1
.end method

.method public getGroupCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;->menuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    invoke-interface {v0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;->getGroups()Ljava/util/List;

    move-result-object v0

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

    if-eqz p3, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iget-object p2, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/amazon/kcp/search/R$layout;->lib_refine_menu_group:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 75
    :goto_0
    sget p2, Lcom/amazon/kcp/search/R$id;->refine_menu_group_divider:I

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "groupView.findViewById(R\u2026efine_menu_group_divider)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;->getGroup(I)Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;->getTitleResId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 81
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;->getTitleResId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;->activity:Landroid/app/Activity;

    sget v2, Lcom/amazon/kcp/search/R$string;->header:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz p4, :cond_2

    .line 85
    check-cast p4, Landroid/widget/ExpandableListView;

    invoke-virtual {p4, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    return-object p3

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.widget.ExpandableListView"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
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

.method public isEmpty()Z
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuAdapter;->menuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    invoke-interface {v0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;->getGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;

    .line 102
    invoke-virtual {v1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public onUpdatedMenuState()V
    .locals 0

    .line 21
    invoke-virtual {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method
