.class public Lcom/amazon/kcp/reader/features/GraphicalHighlightActivityFeature;
.super Ljava/lang/Object;
.source "GraphicalHighlightActivityFeature.java"


# direct methods
.method public static isSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 20
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz v1, :cond_1

    const-string p0, "application/x-mobipocket-ebook-mop"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
