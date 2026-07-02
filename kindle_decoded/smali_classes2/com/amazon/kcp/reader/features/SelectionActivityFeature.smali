.class public Lcom/amazon/kcp/reader/features/SelectionActivityFeature;
.super Ljava/lang/Object;
.source "SelectionActivityFeature.java"


# direct methods
.method public static isSupported(Landroid/content/Context;Lcom/amazon/kindle/model/content/ILocalBookItem;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 25
    sget-object v0, Lcom/amazon/kindle/model/content/ContentClass;->CHILDREN:Lcom/amazon/kindle/model/content/ContentClass;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    .line 26
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object p1

    if-eq v0, p1, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method
