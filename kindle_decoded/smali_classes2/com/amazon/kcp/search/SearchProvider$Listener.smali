.class public interface abstract Lcom/amazon/kcp/search/SearchProvider$Listener;
.super Ljava/lang/Object;
.source "SearchProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/SearchProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onComplete(Ljava/lang/String;)V
.end method

.method public abstract onResultsAvailable(Ljava/lang/String;)V
.end method

.method public abstract onSuggestionsAvailable(Ljava/lang/String;)V
.end method
