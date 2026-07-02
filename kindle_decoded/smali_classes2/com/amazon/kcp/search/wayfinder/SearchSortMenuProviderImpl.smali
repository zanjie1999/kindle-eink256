.class public final Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;
.super Ljava/lang/Object;
.source "SearchSortMenuProviderImpl.kt"

# interfaces
.implements Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchSortMenuProviderImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchSortMenuProviderImpl.kt\ncom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1819#2,2:100\n*E\n*S KotlinDebug\n*F\n+ 1 SearchSortMenuProviderImpl.kt\ncom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl\n*L\n95#1,2:100\n*E\n"
.end annotation


# instance fields
.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private selectedItem:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

.field private final sortByCustomerReviewsItem:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

.field private final sortByPublishDateItem:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

.field private final sortByRelevanceItem:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

.field private sortGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    .line 13
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->relevance:I

    const/4 v2, -0x1

    const-string v3, "SortByRelevance"

    .line 11
    invoke-direct {v0, v3, v1, v1, v2}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;-><init>(Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->sortByRelevanceItem:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    .line 18
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    .line 20
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->publication_date:I

    const-string v3, "SortByPublishDate"

    .line 18
    invoke-direct {v0, v3, v1, v1, v2}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;-><init>(Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->sortByPublishDateItem:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    .line 25
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    .line 27
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->avg_customer_reviews:I

    const-string v3, "SortByCustomerReview"

    .line 25
    invoke-direct {v0, v3, v1, v1, v2}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;-><init>(Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->sortByCustomerReviewsItem:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    .line 33
    new-instance v1, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    .line 34
    iget-object v3, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->sortByRelevanceItem:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->sortByPublishDateItem:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 33
    invoke-direct {v1, v0, v4, v3, v2}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;-><init>(Ljava/util/List;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->sortGroups:Ljava/util/List;

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->sortByRelevanceItem:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->selectedItem:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->listeners:Ljava/util/List;

    return-void
.end method

.method private final getSortItemWithSortString(Ljava/lang/String;)Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4efac498

    if-eq v0, v1, :cond_3

    const v1, 0x1bbb9024

    if-eq v0, v1, :cond_2

    const v1, 0x3100eaeb

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "SortByCustomerReview"

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->sortByCustomerReviewsItem:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    goto :goto_1

    :cond_2
    const-string v0, "SortByRelevance"

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->sortByRelevanceItem:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    goto :goto_1

    :cond_3
    const-string v0, "SortByPublishDate"

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->sortByPublishDateItem:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    goto :goto_1

    .line 47
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->sortByRelevanceItem:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    :goto_1
    return-object p1
.end method

.method private final notifyListeners()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->listeners:Ljava/util/List;

    .line 100
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider$Listener;

    .line 96
    invoke-interface {v1}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider$Listener;->onUpdatedMenuState()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider$Listener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->sortGroups:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->selectedItem:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public resetSelections()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->selectedItem:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    iget-object v1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->sortByRelevanceItem:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->sortByRelevanceItem:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->selectedItem:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    .line 78
    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->notifyListeners()V

    :cond_0
    return-void
.end method

.method public setPreselectedItem(Ljava/lang/String;)V
    .locals 4

    .line 52
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "SortByRelevance"

    .line 53
    invoke-static {p1, v3, v0, v1, v2}, Lkotlin/text/StringsKt;->equals$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->getSortItemWithSortString(Ljava/lang/String;)Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->selectedItem:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    :cond_0
    return-void
.end method

.method public toggleItem(Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;)V
    .locals 1

    const-string v0, "clickedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->selectedItem:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 69
    iput-object p1, p0, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->selectedItem:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    .line 70
    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchSortMenuProviderImpl;->notifyListeners()V

    :cond_0
    return-void
.end method
