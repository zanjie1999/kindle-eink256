.class public Lcom/audible/mobile/util/UriUtils;
.super Ljava/lang/Object;
.source "UriUtils.java"


# direct methods
.method public static isFileUri(Landroid/net/Uri;)Z
    .locals 1

    const-string v0, "uri must not be null"

    .line 76
    invoke-static {p0, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "file"

    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static uriToFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 2

    const-string v0, "uri must not be null"

    .line 93
    invoke-static {p0, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    invoke-static {p0}, Lcom/audible/mobile/util/UriUtils;->isFileUri(Landroid/net/Uri;)Z

    move-result v0

    const-string v1, "uri is not a file uri"

    invoke-static {v0, v1}, Lcom/audible/mobile/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 95
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
