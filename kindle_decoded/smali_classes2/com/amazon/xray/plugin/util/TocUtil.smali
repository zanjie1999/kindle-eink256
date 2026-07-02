.class public Lcom/amazon/xray/plugin/util/TocUtil;
.super Ljava/lang/Object;
.source "TocUtil.java"


# static fields
.field private static final NO_ENTRIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "com.amazon.xray.plugin.util.TocUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/amazon/xray/plugin/util/TocUtil;->NO_ENTRIES:Ljava/util/List;

    return-void
.end method

.method private static getChildItems(Lcom/amazon/kindle/krx/reader/ITableOfContents;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/ITableOfContents;",
            "Z)",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 113
    sget-object p0, Lcom/amazon/xray/plugin/util/TocUtil;->NO_ENTRIES:Ljava/util/List;

    return-object p0

    .line 116
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/ITableOfContents;->getTopLevelTOCItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 118
    sget-object p0, Lcom/amazon/xray/plugin/util/TocUtil;->NO_ENTRIES:Ljava/util/List;

    return-object p0

    .line 122
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    if-eqz p1, :cond_3

    .line 125
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_3
    invoke-interface {p0, v2}, Lcom/amazon/kindle/krx/reader/ITableOfContents;->getChildren(Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;)[Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 129
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public static getFlattenedTocItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-static {}, Lcom/amazon/xray/plugin/util/TocUtil;->getToc()Lcom/amazon/kindle/krx/reader/ITableOfContents;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/xray/plugin/util/TocUtil;->getFlattenedTocItems(Lcom/amazon/kindle/krx/reader/ITableOfContents;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getFlattenedTocItems(Lcom/amazon/kindle/krx/reader/ITableOfContents;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/reader/ITableOfContents;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 100
    invoke-static {p0, v0}, Lcom/amazon/xray/plugin/util/TocUtil;->getChildItems(Lcom/amazon/kindle/krx/reader/ITableOfContents;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getToc()Lcom/amazon/kindle/krx/reader/ITableOfContents;
    .locals 2

    .line 34
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 36
    sget-object v0, Lcom/amazon/xray/plugin/util/TocUtil;->TAG:Ljava/lang/String;

    const-string v1, "error getting TOC, unable to get current book navigator"

    invoke-static {v0, v1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 40
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getTOC()Lcom/amazon/kindle/krx/reader/ITableOfContents;

    move-result-object v0

    return-object v0
.end method

.method public static getTocItem(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 149
    :cond_0
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v1

    if-nez v1, :cond_1

    .line 151
    sget-object p0, Lcom/amazon/xray/plugin/util/TocUtil;->TAG:Ljava/lang/String;

    const-string v1, "error getting TOC, unable to get current book navigator"

    invoke-static {p0, v1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 156
    :cond_1
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getTOC()Lcom/amazon/kindle/krx/reader/ITableOfContents;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 161
    :cond_2
    invoke-interface {v1, p0}, Lcom/amazon/kindle/krx/reader/ITableOfContents;->getTOCFromPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    move-result-object p0

    return-object p0
.end method

.method public static getTocLabel(Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/lang/String;
    .locals 1

    .line 173
    invoke-static {p0}, Lcom/amazon/xray/plugin/util/TocUtil;->getTocItem(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    move-result-object p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 178
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;->getLabel()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method
