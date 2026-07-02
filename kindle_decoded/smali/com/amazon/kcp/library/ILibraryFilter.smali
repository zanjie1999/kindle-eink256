.class public interface abstract Lcom/amazon/kcp/library/ILibraryFilter;
.super Ljava/lang/Object;
.source "ILibraryFilter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/ILibraryFilter$ILibraryFilterChangedListener;
    }
.end annotation


# virtual methods
.method public abstract applyDefaultFilter(Lcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/library/LibraryContentFilter;
.end method

.method public abstract deregisterLibraryFilterGroup(Ljava/lang/String;)V
.end method

.method public abstract deregisterLibraryFilterItem(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getDefaultFilter()Lcom/amazon/kcp/library/LibraryContentFilter;
.end method

.method public abstract getDefaultFilterId()Ljava/lang/String;
.end method

.method public abstract getDefaultFilterItem()Lcom/amazon/kcp/library/LibraryFilterItem;
.end method

.method public abstract getDefaultLargeLibaryArguments(Lcom/amazon/kcp/library/LargeLibraryCounterProvider;)Lcom/amazon/kcp/library/LargeLibraryDefaultArguments;
.end method

.method public abstract getGroupsMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/LibraryFilterGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getItemsMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/LibraryFilterItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerLibraryFilterGroup(Ljava/lang/String;II)V
.end method

.method public abstract registerLibraryFilterItem(Ljava/lang/String;Lcom/amazon/kcp/library/LibraryFilterItem;)V
.end method

.method public abstract subscribe(Lcom/amazon/kcp/library/ILibraryFilter$ILibraryFilterChangedListener;)V
.end method
