.class Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$2;
.super Ljava/lang/Object;
.source "AndroidFileSystemPathDescriptor.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;->getFilteredBookFiles(Ljava/io/FileFilter;)[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;)V
    .locals 0

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    .line 425
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    return p1
.end method
