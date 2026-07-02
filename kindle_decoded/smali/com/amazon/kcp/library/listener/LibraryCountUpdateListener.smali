.class public interface abstract Lcom/amazon/kcp/library/listener/LibraryCountUpdateListener;
.super Ljava/lang/Object;
.source "LargeCountUpdateListener.kt"

# interfaces
.implements Lcom/amazon/kindle/observablemodel/LibraryContainerCountListener;


# virtual methods
.method public abstract createCountValue(Lcom/amazon/kindle/observablemodel/ModelCountUpdate;)Lcom/amazon/kcp/library/fragments/cache/CountValue;
.end method

.method public abstract getFilterSet()Lcom/amazon/kindle/observablemodel/ModelFilter;
.end method
