.class public interface abstract Lokhttp3/internal/io/FileSystem;
.super Ljava/lang/Object;
.source "FileSystem.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lokhttp3/internal/io/FileSystem$1;

    invoke-direct {v0}, Lokhttp3/internal/io/FileSystem$1;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract delete(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract exists(Ljava/io/File;)Z
.end method

.method public abstract rename(Ljava/io/File;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract size(Ljava/io/File;)J
.end method
