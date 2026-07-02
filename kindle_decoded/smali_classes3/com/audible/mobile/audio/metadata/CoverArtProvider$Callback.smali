.class public interface abstract Lcom/audible/mobile/audio/metadata/CoverArtProvider$Callback;
.super Ljava/lang/Object;
.source "CoverArtProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/audio/metadata/CoverArtProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onFailure()V
.end method

.method public abstract onSuccess(Landroid/graphics/Bitmap;)V
.end method
