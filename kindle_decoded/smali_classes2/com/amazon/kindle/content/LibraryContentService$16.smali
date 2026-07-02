.class Lcom/amazon/kindle/content/LibraryContentService$16;
.super Ljava/lang/Object;
.source "LibraryContentService.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/LibraryContentService;->deletePendingSidecars(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$asin:Ljava/lang/String;

.field final synthetic val$bookFileName:Ljava/lang/String;

.field final synthetic val$fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/LibraryContentService;Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2660
    iput-object p2, p0, Lcom/amazon/kindle/content/LibraryContentService$16;->val$fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    iput-object p3, p0, Lcom/amazon/kindle/content/LibraryContentService$16;->val$asin:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/content/LibraryContentService$16;->val$bookFileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 2663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/kindle/content/LibraryContentService$16;->val$fileSystem:Lcom/amazon/kindle/io/IFileConnectionFactory;

    invoke-interface {p1}, Lcom/amazon/kindle/io/IFileConnectionFactory;->getFileSeparator()C

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 2665
    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService$16;->val$asin:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/content/LibraryContentService$16;->val$bookFileName:Ljava/lang/String;

    .line 2666
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "_temp"

    .line 2667
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "_EBSP"

    .line 2668
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
