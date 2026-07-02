.class public final Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;
.super Ljava/lang/Object;
.source "SearchFilterSortManager.kt"

# interfaces
.implements Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$SearchFilterSortStateChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchFilterSortManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchFilterSortManager.kt\ncom/amazon/kcp/search/wayfinder/SearchFilterSortManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,220:1\n1517#2:221\n1588#2,3:222\n1819#2,2:225\n1819#2,2:227\n*E\n*S KotlinDebug\n*F\n+ 1 SearchFilterSortManager.kt\ncom/amazon/kcp/search/wayfinder/SearchFilterSortManager\n*L\n106#1:221\n106#1,3:222\n126#1,2:225\n210#1,2:227\n*E\n"
.end annotation


# instance fields
.field private final DISABLE_BUTTON_COLOR_FILTER:I

.field private final activity:Landroid/app/Activity;

.field private filterMenu:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;

.field public filterMenuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$SearchFilterSortStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final parentView:Landroid/view/ViewGroup;

.field public sortFilterBar:Landroid/view/ViewGroup;

.field private sortMenu:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;

.field public sortMenuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parentView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->parentView:Landroid/view/ViewGroup;

    .line 34
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$color;->gray:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->DISABLE_BUTTON_COLOR_FILTER:I

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->listeners:Ljava/util/List;

    .line 43
    invoke-virtual {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->setupMenuBar$KindleSearch_release()V

    .line 44
    invoke-virtual {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->setupFilterMenu$KindleSearch_release()V

    .line 45
    invoke-virtual {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->setupSortMenu$KindleSearch_release()V

    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;)Landroid/app/Activity;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private final notifyListeners(Ljava/util/List;Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;",
            ">;",
            "Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;",
            ")V"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->listeners:Ljava/util/List;

    .line 227
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$SearchFilterSortStateChangeListener;

    .line 211
    invoke-interface {v1, p1, p2}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$SearchFilterSortStateChangeListener;->onUpdatedStoreFilterSortState(Ljava/util/List;Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addStateChangeListener(Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$SearchFilterSortStateChangeListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final disableMenu()V
    .locals 10

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortFilterBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const-string v2, "sortFilterBar"

    if-eqz v0, :cond_f

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->sort_button:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    iget-object v3, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortFilterBar:Landroid/view/ViewGroup;

    if-eqz v3, :cond_e

    sget v4, Lcom/amazon/kindle/librarymodule/R$id;->refine_button:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 62
    iget-object v4, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortFilterBar:Landroid/view/ViewGroup;

    if-eqz v4, :cond_d

    sget v5, Lcom/amazon/kindle/librarymodule/R$id;->sort_icon:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 63
    iget-object v5, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortFilterBar:Landroid/view/ViewGroup;

    if-eqz v5, :cond_c

    sget v6, Lcom/amazon/kindle/librarymodule/R$id;->filter_icon:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 64
    iget-object v6, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortFilterBar:Landroid/view/ViewGroup;

    if-eqz v6, :cond_b

    sget v7, Lcom/amazon/kindle/librarymodule/R$id;->sort_button_text_disabled:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 65
    iget-object v7, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortFilterBar:Landroid/view/ViewGroup;

    if-eqz v7, :cond_a

    sget v8, Lcom/amazon/kindle/librarymodule/R$id;->sort_button_text_enabled:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 66
    iget-object v8, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortFilterBar:Landroid/view/ViewGroup;

    if-eqz v8, :cond_9

    sget v9, Lcom/amazon/kindle/librarymodule/R$id;->filter_button_text_disabled:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 67
    iget-object v9, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortFilterBar:Landroid/view/ViewGroup;

    if-eqz v9, :cond_8

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->filter_button_text_enabled:I

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 69
    iget v2, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->DISABLE_BUTTON_COLOR_FILTER:I

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    if-eqz v5, :cond_1

    .line 70
    iget v2, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->DISABLE_BUTTON_COLOR_FILTER:I

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    if-eqz v3, :cond_3

    .line 72
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    const/16 v0, 0x8

    if-eqz v7, :cond_4

    .line 73
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    if-eqz v6, :cond_5

    .line 74
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    if-eqz v1, :cond_6

    .line 75
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    if-eqz v8, :cond_7

    .line 76
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    return-void

    .line 67
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_f
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final dismissMenus()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortMenu:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->dismiss()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->filterMenu:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;->dismiss()V

    :cond_1
    return-void
.end method

.method public final enableMenu()V
    .locals 10

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortFilterBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const-string v2, "sortFilterBar"

    if-eqz v0, :cond_f

    sget v3, Lcom/amazon/kindle/librarymodule/R$id;->sort_button:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 84
    iget-object v3, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortFilterBar:Landroid/view/ViewGroup;

    if-eqz v3, :cond_e

    sget v4, Lcom/amazon/kindle/librarymodule/R$id;->refine_button:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 85
    iget-object v4, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortFilterBar:Landroid/view/ViewGroup;

    if-eqz v4, :cond_d

    sget v5, Lcom/amazon/kindle/librarymodule/R$id;->sort_icon:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 86
    iget-object v5, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortFilterBar:Landroid/view/ViewGroup;

    if-eqz v5, :cond_c

    sget v6, Lcom/amazon/kindle/librarymodule/R$id;->filter_icon:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 87
    iget-object v6, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortFilterBar:Landroid/view/ViewGroup;

    if-eqz v6, :cond_b

    sget v7, Lcom/amazon/kindle/librarymodule/R$id;->sort_button_text_disabled:I

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 88
    iget-object v7, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortFilterBar:Landroid/view/ViewGroup;

    if-eqz v7, :cond_a

    sget v8, Lcom/amazon/kindle/librarymodule/R$id;->sort_button_text_enabled:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 89
    iget-object v8, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortFilterBar:Landroid/view/ViewGroup;

    if-eqz v8, :cond_9

    sget v9, Lcom/amazon/kindle/librarymodule/R$id;->filter_button_text_disabled:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 90
    iget-object v9, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortFilterBar:Landroid/view/ViewGroup;

    if-eqz v9, :cond_8

    sget v1, Lcom/amazon/kindle/librarymodule/R$id;->filter_button_text_enabled:I

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 92
    invoke-virtual {v4}, Landroid/widget/ImageView;->clearColorFilter()V

    :cond_0
    if-eqz v5, :cond_1

    .line 93
    invoke-virtual {v5}, Landroid/widget/ImageView;->clearColorFilter()V

    :cond_1
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    if-eqz v3, :cond_3

    .line 95
    invoke-virtual {v3, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    const/16 v0, 0x8

    if-eqz v6, :cond_4

    .line 96
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    const/4 v2, 0x0

    if-eqz v7, :cond_5

    .line 97
    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    if-eqz v8, :cond_6

    .line 98
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    if-eqz v1, :cond_7

    .line 99
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    return-void

    .line 90
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 84
    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_f
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getFilterMenu$KindleSearch_release()Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->filterMenu:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;

    return-object v0
.end method

.method public final getFilterMenuProvider$KindleSearch_release()Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->filterMenuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "filterMenuProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSelectedFilterIds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->filterMenuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    .line 221
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 223
    check-cast v2, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    .line 106
    invoke-virtual {v2}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    const-string v0, "filterMenuProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSelectedSortTypeId()Ljava/lang/String;
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortMenuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 114
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    .line 118
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;->getItemId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "sortMenuProvider"

    .line 113
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final getSortMenu$KindleSearch_release()Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortMenu:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;

    return-object v0
.end method

.method public final getSortMenuProvider$KindleSearch_release()Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortMenuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "sortMenuProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onUpdatedMenuState()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->filterMenuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    .line 164
    iget-object v2, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortMenuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;->getSelectedItems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 165
    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    .line 167
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->notifyListeners(Ljava/util/List;Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;)V

    return-void

    :cond_1
    const-string v0, "sortMenuProvider"

    .line 164
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "filterMenuProvider"

    .line 163
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final removeStateChangeListener(Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$SearchFilterSortStateChangeListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final resetAllSelections()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->filterMenuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;->resetSelections()V

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortMenuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;->resetSelections()V

    return-void

    :cond_0
    const-string v0, "sortMenuProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "filterMenuProvider"

    .line 52
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final setFilterMenu$KindleSearch_release(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->filterMenu:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;

    return-void
.end method

.method public final setPreselectedFilters(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 225
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->filterMenuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;->setPreselectedItem(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "filterMenuProvider"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    return-void
.end method

.method public final setPreselectedSort(Ljava/lang/String;)V
    .locals 1

    .line 135
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortMenuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;->setPreselectedItem(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "sortMenuProvider"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final setSortMenu$KindleSearch_release(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortMenu:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenu;

    return-void
.end method

.method public final setupFilterMenu$KindleSearch_release()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortFilterBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->refine_button:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 178
    new-instance v2, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;

    invoke-direct {v2}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;-><init>()V

    iput-object v2, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->filterMenuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    if-eqz v2, :cond_1

    .line 179
    invoke-interface {v2, p0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;->addListener(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider$Listener;)V

    if-eqz v0, :cond_0

    .line 180
    new-instance v1, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$setupFilterMenu$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$setupFilterMenu$1;-><init>(Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "filterMenuProvider"

    .line 179
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "sortFilterBar"

    .line 177
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final setupMenuBar$KindleSearch_release()V
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$layout;->search_sort_filter_bar:I

    iget-object v2, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->parentView:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortFilterBar:Landroid/view/ViewGroup;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setupSortMenu$KindleSearch_release()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortFilterBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->sort_button:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 195
    new-instance v2, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;

    invoke-direct {v2}, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;-><init>()V

    iput-object v2, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;->sortMenuProvider:Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;

    if-eqz v2, :cond_1

    .line 196
    invoke-interface {v2, p0}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;->addListener(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider$Listener;)V

    if-eqz v0, :cond_0

    .line 197
    new-instance v1, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$setupSortMenu$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager$setupSortMenu$1;-><init>(Lcom/amazon/kcp/search/wayfinder/SearchFilterSortManager;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "sortMenuProvider"

    .line 196
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "sortFilterBar"

    .line 194
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
