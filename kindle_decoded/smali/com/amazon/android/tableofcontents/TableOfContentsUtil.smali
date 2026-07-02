.class public Lcom/amazon/android/tableofcontents/TableOfContentsUtil;
.super Ljava/lang/Object;
.source "TableOfContentsUtil.java"


# direct methods
.method public static getBeginningEntryOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 43
    new-instance v0, Lcom/amazon/android/tableofcontents/TableOfContentsUtil$1;

    invoke-direct {v0}, Lcom/amazon/android/tableofcontents/TableOfContentsUtil$1;-><init>()V

    return-object v0
.end method

.method public static getCoverEntryOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 109
    new-instance v0, Lcom/amazon/android/tableofcontents/TableOfContentsUtil$2;

    invoke-direct {v0}, Lcom/amazon/android/tableofcontents/TableOfContentsUtil$2;-><init>()V

    return-object v0
.end method

.method public static hasNoCoverInTOC(Lcom/amazon/android/docviewer/KindleDoc;Lcom/amazon/android/docviewer/IKindleTOC;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 166
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IKindleTOC;->getTopLevelTOCItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/amazon/android/docviewer/IKindleTOC;->getTopLevelTOCItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IKindleTOC;->getTopLevelTOCItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/ITOCItem;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v1

    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDoc;->getBeginningPosition()I

    move-result p0

    if-eq v1, p0, :cond_1

    .line 173
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IKindleTOC;->getTopLevelTOCItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/ITOCItem;

    invoke-interface {p0}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object p0

    .line 174
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/krl/R$string;->goto_cover:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method
