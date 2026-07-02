.class public interface abstract Lcom/amazon/kcp/cover/GridCoverProvider;
.super Ljava/lang/Object;
.source "GridCoverProvider.java"


# virtual methods
.method public abstract bindGridCover(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ZIIIILcom/amazon/kcp/cover/badge/BadgeSource;)Landroid/view/View;
.end method

.method public abstract getGridCoverEvent()Ljava/lang/String;
.end method

.method public abstract getGridLoaderId()I
.end method

.method public abstract newGridCover(Landroid/content/Context;III)Landroid/view/View;
.end method

.method public abstract recycleGridCover(Landroid/view/View;)V
.end method
