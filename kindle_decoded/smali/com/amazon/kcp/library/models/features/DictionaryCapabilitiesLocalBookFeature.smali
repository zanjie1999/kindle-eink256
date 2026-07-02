.class public Lcom/amazon/kcp/library/models/features/DictionaryCapabilitiesLocalBookFeature;
.super Ljava/lang/Object;
.source "DictionaryCapabilitiesLocalBookFeature.java"


# direct methods
.method public static isSupported(Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/amazon/kindle/krf/KRF/Reader/IDocumentInfo;->hasDictionaryLookups()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
