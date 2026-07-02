.class public interface abstract Lorg/reflections/vfs/Vfs$UrlType;
.super Ljava/lang/Object;
.source "Vfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reflections/vfs/Vfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UrlType"
.end annotation


# virtual methods
.method public abstract createDir(Ljava/net/URL;)Lorg/reflections/vfs/Vfs$Dir;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract matches(Ljava/net/URL;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
