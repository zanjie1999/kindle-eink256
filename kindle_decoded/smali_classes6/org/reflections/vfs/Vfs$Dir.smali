.class public interface abstract Lorg/reflections/vfs/Vfs$Dir;
.super Ljava/lang/Object;
.source "Vfs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reflections/vfs/Vfs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Dir"
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getFiles()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/reflections/vfs/Vfs$File;",
            ">;"
        }
    .end annotation
.end method
