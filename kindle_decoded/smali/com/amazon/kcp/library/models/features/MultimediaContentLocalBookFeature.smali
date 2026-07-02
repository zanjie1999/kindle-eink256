.class public Lcom/amazon/kcp/library/models/features/MultimediaContentLocalBookFeature;
.super Ljava/lang/Object;
.source "MultimediaContentLocalBookFeature.java"


# direct methods
.method public static isSupported(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->hasAudioMedia()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->hasVideoMedia()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
