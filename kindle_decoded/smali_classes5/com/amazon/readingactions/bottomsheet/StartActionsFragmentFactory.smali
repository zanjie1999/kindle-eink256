.class public Lcom/amazon/readingactions/bottomsheet/StartActionsFragmentFactory;
.super Ljava/lang/Object;
.source "StartActionsFragmentFactory.java"


# direct methods
.method public static create(Lcom/amazon/readingactions/helpers/ISidecarRetriever;FLjava/lang/String;)Lcom/amazon/readingactions/bottomsheet/StartActionsFragment;
    .locals 3

    .line 17
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 23
    :cond_0
    invoke-interface {p0, v0}, Lcom/amazon/readingactions/helpers/ISidecarRetriever;->retrieve(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/ea/sidecar/def/Sidecar;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 29
    :cond_1
    invoke-static {p1}, Lcom/amazon/readingactions/bottomsheet/StartActionsFragmentFactory;->isMaxHeightPercentageValid(F)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 31
    :goto_0
    new-instance v0, Lcom/amazon/readingactions/bottomsheet/StartActionsFragment;

    invoke-direct {v0}, Lcom/amazon/readingactions/bottomsheet/StartActionsFragment;-><init>()V

    .line 33
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ID"

    .line 35
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "sidecarRetriever"

    .line 37
    invoke-virtual {v1, p2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 38
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string p1, "maxHeightPercentage"

    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 40
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private static isMaxHeightPercentageValid(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
