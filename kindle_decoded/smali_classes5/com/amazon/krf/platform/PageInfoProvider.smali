.class public interface abstract Lcom/amazon/krf/platform/PageInfoProvider;
.super Ljava/lang/Object;
.source "PageInfoProvider.java"

# interfaces
.implements Lcom/amazon/krf/platform/Disposable;


# virtual methods
.method public abstract getPageCount()I
.end method

.method public abstract getPageInfoAt(I)Lcom/amazon/krf/platform/PageInfo;
.end method

.method public abstract getPageInfoAt(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/PageInfo;
.end method

.method public abstract getPageInfoForLabel(Ljava/lang/String;)[Lcom/amazon/krf/platform/PageInfo;
.end method

.method public abstract getPageRectAt(I)Landroid/graphics/Rect;
.end method
