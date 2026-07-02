.class public interface abstract Lcom/amazon/kcp/cover/ICoverCache;
.super Ljava/lang/Object;
.source "ICoverCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/cover/ICoverCache$ICoverCacheClient;
    }
.end annotation


# virtual methods
.method public abstract getCover(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract loadCover(Ljava/lang/String;Z)V
.end method

.method public abstract unloadAll()V
.end method

.method public abstract unloadCover(Ljava/lang/String;)V
.end method
