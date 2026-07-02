.class public Lcom/amazon/kcp/reader/features/ActiveAreaActivityFeature;
.super Ljava/lang/Object;
.source "ActiveAreaActivityFeature.java"


# direct methods
.method public static isSupported(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 21
    sget-object v1, Lcom/amazon/kindle/model/content/ContentClass;->CHILDREN:Lcom/amazon/kindle/model/content/ContentClass;

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    .line 22
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object p0

    if-ne v1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
