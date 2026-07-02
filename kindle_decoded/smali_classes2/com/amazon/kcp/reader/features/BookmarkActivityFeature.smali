.class public Lcom/amazon/kcp/reader/features/BookmarkActivityFeature;
.super Ljava/lang/Object;
.source "BookmarkActivityFeature.java"


# direct methods
.method public static isSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 27
    sget-object v1, Lcom/amazon/kindle/model/content/ContentClass;->CHILDREN:Lcom/amazon/kindle/model/content/ContentClass;

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 30
    :cond_0
    instance-of v1, p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;

    if-eqz v1, :cond_1

    .line 31
    check-cast p0, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;

    .line 32
    invoke-virtual {p0}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->isFreeDictionary()Z

    move-result v1

    xor-int/2addr v1, v3

    and-int/2addr v0, v1

    .line 33
    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->Bookmarks:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/models/internal/CLocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result p0

    and-int/2addr v0, p0

    :cond_1
    return v0
.end method
