.class public Lcom/amazon/kcp/search/RefUtil;
.super Ljava/lang/Object;
.source "RefUtil.java"


# direct methods
.method public static getRefMarkerIfAny(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 24
    instance-of v0, p0, Lcom/amazon/kcp/search/IRefMarker;

    if-eqz v0, :cond_0

    .line 25
    check-cast p0, Lcom/amazon/kcp/search/IRefMarker;

    invoke-interface {p0}, Lcom/amazon/kcp/search/IRefMarker;->getRefMarker()Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method
