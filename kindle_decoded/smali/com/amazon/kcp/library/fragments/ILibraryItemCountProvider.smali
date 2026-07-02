.class public interface abstract Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider;
.super Ljava/lang/Object;
.source "ILibraryItemCountProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;
    }
.end annotation


# virtual methods
.method public abstract getItemCount()I
.end method

.method public abstract registerItemCountChangedListener(Lcom/amazon/kcp/library/fragments/ILibraryItemCountProvider$ILibraryItemChangedListener;)V
.end method
