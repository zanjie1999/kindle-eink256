.class public interface abstract Lcom/amazon/kcp/library/ILibraryFilter$ILibraryFilterChangedListener;
.super Ljava/lang/Object;
.source "ILibraryFilter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/ILibraryFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILibraryFilterChangedListener"
.end annotation


# virtual methods
.method public abstract onLibraryFilterItemDeregistered(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onLibraryFilterItemRegistered(Ljava/lang/String;Ljava/lang/String;)V
.end method
