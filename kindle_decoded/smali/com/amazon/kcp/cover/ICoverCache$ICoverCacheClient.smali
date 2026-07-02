.class public interface abstract Lcom/amazon/kcp/cover/ICoverCache$ICoverCacheClient;
.super Ljava/lang/Object;
.source "ICoverCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/cover/ICoverCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICoverCacheClient"
.end annotation


# virtual methods
.method public abstract onCoverLoaded(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)V
.end method

.method public abstract onCoverRemoved(Ljava/lang/String;)Z
.end method
