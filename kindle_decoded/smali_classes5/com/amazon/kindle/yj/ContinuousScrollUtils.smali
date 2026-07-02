.class public Lcom/amazon/kindle/yj/ContinuousScrollUtils;
.super Ljava/lang/Object;
.source "ContinuousScrollUtils.java"


# direct methods
.method public static getCSMetadata(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_2

    .line 51
    invoke-static {p0}, Lcom/amazon/kindle/yj/ContinuousScrollUtils;->isContinuousScrollSupported(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "enabled"

    goto :goto_0

    :cond_1
    const-string p0, "disabled"

    :goto_0
    return-object p0

    :cond_2
    :goto_1
    const-string/jumbo p0, "unsupported"

    return-object p0
.end method

.method public static isContinuousScrollSupported(Lcom/amazon/android/docviewer/KindleDocViewer;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 31
    :cond_0
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    .line 39
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/StandaloneApplicationCapabilities;->isChromebook()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ContinuousScrollReflowable:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 40
    invoke-interface {p0, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method
