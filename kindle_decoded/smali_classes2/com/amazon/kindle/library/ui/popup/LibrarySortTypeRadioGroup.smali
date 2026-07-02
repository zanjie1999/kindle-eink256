.class public Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;
.super Lcom/amazon/kcp/widget/CheckableRadioGroup;
.source "LibrarySortTypeRadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup$SortTypeMenuListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/widget/CheckableRadioGroup<",
        "Lcom/amazon/kcp/library/LibrarySortType;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITEM_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/library/LibrarySortType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->ITEM_MAP:Ljava/util/Map;

    .line 29
    const-class v0, Lcom/amazon/kindle/library/ui/popup/SortItemMapProvider;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/library/ui/popup/SortItemMapProvider;

    if-eqz v0, :cond_0

    .line 31
    sget-object v1, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->ITEM_MAP:Ljava/util/Map;

    invoke-interface {v0}, Lcom/amazon/kindle/library/ui/popup/SortItemMapProvider;->provideItemMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 33
    :cond_0
    sget-object v0, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->ITEM_MAP:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->sortby_recent_option:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->ITEM_MAP:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->sortby_author_option:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->ITEM_MAP:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->sortby_title_option:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->ITEM_MAP:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->sortby_author_reverse_option:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->ITEM_MAP:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_CUSTOM:Lcom/amazon/kcp/library/LibrarySortType;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->sortby_custom_option:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->ITEM_MAP:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_SERIES_ORDER:Lcom/amazon/kcp/library/LibrarySortType;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->sortby_series_order_option:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->ITEM_MAP:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_SERIES_ORDER_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->sortby_series_order_reversed_option:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->ITEM_MAP:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_PUBLICATION_DATE:Lcom/amazon/kcp/library/LibrarySortType;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->sortby_publication_date_option:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->ITEM_MAP:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_PUBLICATION_DATE_SERIES:Lcom/amazon/kcp/library/LibrarySortType;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->sortby_publication_date_option:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->ITEM_MAP:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_PUBLICATION_DATE_SERIES_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->sortby_publication_date_reversed_option:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/widget/CheckableRadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public configureOptionItem(ILcom/amazon/kcp/library/LibrarySortType;)V
    .locals 1

    .line 80
    sget-object v0, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->ITEM_MAP:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/widget/CheckableRadioGroup;->configureOptionItem(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic configureOptionItem(ILjava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p2, Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->configureOptionItem(ILcom/amazon/kcp/library/LibrarySortType;)V

    return-void
.end method

.method protected getItemMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/library/LibrarySortType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->ITEM_MAP:Ljava/util/Map;

    return-object v0
.end method

.method public onFinishInflate()V
    .locals 2

    .line 65
    invoke-super {p0}, Lcom/amazon/kcp/widget/CheckableRadioGroup;->onFinishInflate()V

    .line 66
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_sort_recent:I

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->configureOptionItem(ILcom/amazon/kcp/library/LibrarySortType;)V

    .line 67
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_sort_author:I

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->configureOptionItem(ILcom/amazon/kcp/library/LibrarySortType;)V

    .line 68
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_sort_title:I

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_TITLE:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->configureOptionItem(ILcom/amazon/kcp/library/LibrarySortType;)V

    .line 69
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_sort_author_reverse:I

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_AUTHOR_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->configureOptionItem(ILcom/amazon/kcp/library/LibrarySortType;)V

    .line 70
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_sort_custom:I

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_CUSTOM:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->configureOptionItem(ILcom/amazon/kcp/library/LibrarySortType;)V

    .line 71
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_sort_series_order:I

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_SERIES_ORDER:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->configureOptionItem(ILcom/amazon/kcp/library/LibrarySortType;)V

    .line 72
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_sort_series_order_reversed:I

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_SERIES_ORDER_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->configureOptionItem(ILcom/amazon/kcp/library/LibrarySortType;)V

    .line 73
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_sort_publication_date:I

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_PUBLICATION_DATE:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->configureOptionItem(ILcom/amazon/kcp/library/LibrarySortType;)V

    .line 74
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_sort_publication_date_series:I

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_PUBLICATION_DATE_SERIES:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->configureOptionItem(ILcom/amazon/kcp/library/LibrarySortType;)V

    .line 75
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_sort_publication_date_series_reversed:I

    sget-object v1, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_PUBLICATION_DATE_SERIES_REVERSE:Lcom/amazon/kcp/library/LibrarySortType;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kindle/library/ui/popup/LibrarySortTypeRadioGroup;->configureOptionItem(ILcom/amazon/kcp/library/LibrarySortType;)V

    return-void
.end method

.method public setEnabledSortType([Lcom/amazon/kcp/library/LibrarySortType;Z)V
    .locals 4

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 96
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/widget/CheckableRadioGroup;->items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/widget/LibraryCheckableItem;

    .line 100
    invoke-virtual {v1}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->getIdentityObject()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 101
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->setEnabled(Z)V

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 103
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v2, 0x1

    .line 104
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    if-nez v2, :cond_1

    .line 106
    invoke-virtual {v1, v3}, Lcom/amazon/kcp/widget/LibraryCheckableItem;->setEnabled(Z)V

    if-nez p2, :cond_1

    const/16 v2, 0x8

    .line 108
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    return-void
.end method
