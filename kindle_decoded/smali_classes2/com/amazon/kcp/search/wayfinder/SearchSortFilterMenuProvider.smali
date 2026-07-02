.class public interface abstract Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;
.super Ljava/lang/Object;
.source "SearchSortFilterMenuProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider$Listener;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider$Listener;)V
.end method

.method public abstract getGroups()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelectedItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract resetSelections()V
.end method

.method public abstract setPreselectedItem(Ljava/lang/String;)V
.end method

.method public abstract toggleItem(Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;)V
.end method
