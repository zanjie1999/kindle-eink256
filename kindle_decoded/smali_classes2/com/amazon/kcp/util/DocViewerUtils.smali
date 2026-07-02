.class public Lcom/amazon/kcp/util/DocViewerUtils;
.super Ljava/lang/Object;
.source "DocViewerUtils.java"


# direct methods
.method public static getColorModeId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;
    .locals 2

    .line 17
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 19
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    return-object v0

    .line 21
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    :goto_0
    return-object v0
.end method

.method public static getTextBetweenPositions(IIILcom/amazon/kindle/search/IKindleWordTokenIterator;)Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_4

    .line 36
    invoke-interface {p3, p0}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->gotoPosition(I)V

    .line 37
    invoke-interface {p3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    :goto_0
    if-eqz p0, :cond_3

    .line 40
    iget v2, p0, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->end:I

    if-gt v2, p1, :cond_3

    if-lez p2, :cond_0

    if-ge v1, p2, :cond_3

    .line 41
    :cond_0
    iget-object p0, p0, Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;->token:Ljava/lang/String;

    .line 42
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 45
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/android/util/CharacterAnalyzer;->isNoSpaceScript(Ljava/lang/Character;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, " "

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_1
    invoke-interface {p3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->next()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    .line 53
    :cond_2
    invoke-interface {p3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->getToken()Lcom/amazon/kindle/search/IKindleWordTokenIterator$WordToken;

    move-result-object p0

    goto :goto_0

    .line 56
    :cond_3
    :goto_1
    invoke-interface {p3}, Lcom/amazon/kindle/search/IKindleWordTokenIterator;->close()V

    .line 58
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
