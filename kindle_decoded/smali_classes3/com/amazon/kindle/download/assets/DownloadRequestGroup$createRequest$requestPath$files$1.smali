.class final Lcom/amazon/kindle/download/assets/DownloadRequestGroup$createRequest$requestPath$files$1;
.super Ljava/lang/Object;
.source "DownloadRequestGroup.kt"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/assets/DownloadRequestGroup;->createRequest(Lcom/amazon/kindle/services/download/IBookAsset;Ljava/lang/String;)Lcom/amazon/kindle/services/download/IDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $asset:Lcom/amazon/kindle/services/download/IBookAsset;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/services/download/IBookAsset;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$createRequest$requestPath$files$1;->$asset:Lcom/amazon/kindle/services/download/IBookAsset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 256
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    .line 257
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$createRequest$requestPath$files$1;->$asset:Lcom/amazon/kindle/services/download/IBookAsset;

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/io/FileSystemHelper;->getFilenameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {p2}, Lcom/amazon/kindle/io/FileSystemHelper;->getFilenameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_0

    .line 259
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
