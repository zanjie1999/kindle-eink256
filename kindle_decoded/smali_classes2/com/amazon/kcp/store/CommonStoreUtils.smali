.class final Lcom/amazon/kcp/store/CommonStoreUtils;
.super Ljava/lang/Object;
.source "CommonStoreUtils.java"


# direct methods
.method static isStoreEnabledForBook(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 3

    .line 21
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isStoreAccessAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 24
    :cond_0
    sget-object v0, Lcom/amazon/kcp/store/CommonStoreUtils$1;->$SwitchMap$com$amazon$kindle$krx$content$ContentType:[I

    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    return v1

    :cond_1
    return v0
.end method
