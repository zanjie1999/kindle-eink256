.class Lcom/amazon/kcp/util/CoverUtils;
.super Ljava/lang/Object;
.source "CoverUtils.java"


# direct methods
.method static getExternalCoverUri(Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Landroid/net/Uri;
    .locals 2

    .line 29
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.amazon.kindle.bookmetadataprovider"

    .line 30
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 31
    sget-object v1, Lcom/amazon/kcp/util/CoverUtils$1;->$SwitchMap$com$amazon$kindle$cover$ImageSizes$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p1, "preview"

    .line 36
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    :cond_1
    const-string p1, "thumbnail"

    .line 33
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 42
    :goto_0
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 43
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
