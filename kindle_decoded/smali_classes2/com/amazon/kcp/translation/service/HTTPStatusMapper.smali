.class public final Lcom/amazon/kcp/translation/service/HTTPStatusMapper;
.super Ljava/lang/Object;
.source "HTTPStatusMapper.java"


# direct methods
.method public static getErrorMessage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-static {p1}, Lcom/amazon/kcp/translation/service/HTTPStatusMapper;->isStatusOK(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 41
    invoke-static {p0}, Lcom/amazon/kcp/translation/service/HTTPStatusMapper;->getGenericErrorMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getGenericErrorMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 55
    sget v0, Lcom/amazon/kindle/krl/R$string;->translation_generic_error:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isStatusOK(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
