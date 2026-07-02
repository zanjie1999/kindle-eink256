.class public Lcom/amazon/kcp/reader/ui/BaseLocationDecorationProvider;
.super Ljava/lang/Object;
.source "BaseLocationDecorationProvider.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider;


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BaseLocationDecorationProvider;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/BaseLocationDecorationProvider;->get(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider;

    return-object p0
.end method

.method public getLocationText(Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/String;
    .locals 7

    .line 33
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    .line 34
    sget-object v1, Lcom/amazon/kcp/reader/ui/BaseLocationDecorationProvider$1;->$SwitchMap$com$amazon$kcp$reader$ui$ILocationDecorationProvider$LocationTextPosition:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const-string p1, ""

    return-object p1

    .line 36
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getReadingProgress()I

    move-result p1

    .line 37
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v2

    .line 38
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsPageLabels()Z

    move-result p2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz p2, :cond_1

    .line 39
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object p2

    invoke-interface {p2, v2}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 41
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object p2

    invoke-interface {p2, v2}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object p2

    .line 42
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getLastPageLabel()Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/BaseLocationDecorationProvider;->context:Landroid/content/Context;

    sget v6, Lcom/amazon/kindle/krl/R$string;->current_page:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v4

    aput-object v0, v5, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 45
    :cond_1
    invoke-interface {v0, v2}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result p2

    .line 46
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v0

    .line 47
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/BaseLocationDecorationProvider;->context:Landroid/content/Context;

    sget v6, Lcom/amazon/kindle/krl/R$string;->current_location:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    invoke-virtual {v2, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
