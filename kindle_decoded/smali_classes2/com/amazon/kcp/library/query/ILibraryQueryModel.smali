.class public interface abstract Lcom/amazon/kcp/library/query/ILibraryQueryModel;
.super Ljava/lang/Object;
.source "ILibraryQueryModel.java"


# virtual methods
.method public abstract getLimit()Lcom/amazon/kindle/content/dao/ResultsLimit;
.end method

.method public abstract getSelection()Ljava/lang/String;
.end method

.method public abstract getSelectionArgs()[Ljava/lang/String;
.end method

.method public abstract getSortBy()Ljava/lang/String;
.end method

.method public abstract getTable()Ljava/lang/String;
.end method

.method public abstract isSortFieldChanged(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)Z
.end method

.method public abstract matches(Lcom/amazon/kindle/content/ContentMetadata;)Z
.end method

.method public abstract updateModel(Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kindle/krx/library/LibraryGroupType;ILcom/amazon/kcp/library/LibrarySortType;)V
.end method
