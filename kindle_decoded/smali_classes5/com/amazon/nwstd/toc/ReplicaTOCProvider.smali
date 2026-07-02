.class public Lcom/amazon/nwstd/toc/ReplicaTOCProvider;
.super Ljava/lang/Object;
.source "ReplicaTOCProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/ITableOfContentsExProvider;


# static fields
.field private static final GMT:Ljava/util/TimeZone;

.field private static currentLocale:Ljava/util/Locale;

.field private static pageImageHeight:I

.field private static pageImageWidth:I


# instance fields
.field private tocEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;",
            ">;"
        }
    .end annotation
.end field

.field private tocHeader:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GMT:00"

    .line 40
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/toc/ReplicaTOCProvider;->GMT:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initializeTOCEntries(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/nwstd/toc/ReplicaTOCProvider;->tocEntries:Ljava/util/List;

    .line 116
    instance-of v0, p1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    if-eqz v0, :cond_2

    .line 117
    check-cast p1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 118
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOC()Lcom/amazon/android/docviewer/IKindleTOC;

    move-result-object p1

    .line 119
    instance-of v0, p1, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    if-eqz v0, :cond_2

    .line 120
    check-cast p1, Lcom/amazon/nwstd/toc/IPeriodicalTOC;

    .line 122
    invoke-interface {p1}, Lcom/amazon/nwstd/toc/IPeriodicalTOC;->getTOCSections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/toc/ISectionTOCItem;

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-interface {v1}, Lcom/amazon/nwstd/toc/ISectionTOCItem;->getArticles()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    .line 125
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 126
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/nwstd/toc/IArticleTOCItem;

    .line 127
    sget-object v6, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;->DEFAULT:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    .line 128
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v4, v7, :cond_0

    .line 130
    sget-object v6, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;->ZERO_PADDING:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    :cond_0
    move-object v12, v6

    .line 133
    sget v6, Lcom/amazon/nwstd/toc/ReplicaTOCProvider;->pageImageWidth:I

    sget v7, Lcom/amazon/nwstd/toc/ReplicaTOCProvider;->pageImageHeight:I

    invoke-static {p1, v5, v6, v7}, Lcom/amazon/nwstd/toc/TOCUtils;->createBitmapForArticleItem(Lcom/amazon/nwstd/toc/IPeriodicalTOC;Lcom/amazon/nwstd/toc/IArticleTOCItem;II)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 134
    new-instance v6, Lcom/amazon/nwstd/toc/ReplicaTOCEntry;

    invoke-interface {v5}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5}, Lcom/amazon/nwstd/toc/IArticleTOCItem;->getDescription()Ljava/lang/String;

    move-result-object v9

    .line 135
    invoke-interface {v5}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v10

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/amazon/nwstd/toc/ReplicaTOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;)V

    .line 136
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 140
    :cond_1
    new-instance v3, Lcom/amazon/nwstd/toc/ReplicaTOCEntry;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Lcom/amazon/android/docviewer/ITOCItem;->getDescription()Ljava/lang/String;

    move-result-object v7

    .line 141
    invoke-interface {v1}, Lcom/amazon/android/docviewer/ITOCItem;->getPosition()I

    move-result v8

    const/4 v9, 0x0

    sget-object v10, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;->NO_DIVIDER:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/amazon/nwstd/toc/ReplicaTOCEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;)V

    .line 142
    iget-object v1, p0, Lcom/amazon/nwstd/toc/ReplicaTOCProvider;->tocEntries:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v1, p0, Lcom/amazon/nwstd/toc/ReplicaTOCProvider;->tocEntries:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 147
    :cond_2
    iget-object p1, p0, Lcom/amazon/nwstd/toc/ReplicaTOCProvider;->tocEntries:Ljava/util/List;

    return-object p1
.end method

.method public static initializeTOCProvider(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$dimen;->article_list_image_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/amazon/nwstd/toc/ReplicaTOCProvider;->pageImageHeight:I

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$dimen;->article_list_image_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/amazon/nwstd/toc/ReplicaTOCProvider;->pageImageWidth:I

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object p0, Lcom/amazon/nwstd/toc/ReplicaTOCProvider;->currentLocale:Ljava/util/Locale;

    :cond_0
    return-void
.end method


# virtual methods
.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/amazon/nwstd/toc/ReplicaTOCProvider;->tocEntries:Ljava/util/List;

    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/nwstd/toc/ReplicaTOCProvider;->initializeTOCEntries(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/nwstd/toc/ReplicaTOCProvider;->tocEntries:Ljava/util/List;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/amazon/nwstd/toc/ReplicaTOCProvider;->tocEntries:Ljava/util/List;

    return-object v0
.end method

.method public getTOCHeader()Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsHeader;
    .locals 5

    .line 77
    iget-object v0, p0, Lcom/amazon/nwstd/toc/ReplicaTOCProvider;->tocHeader:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsHeader;

    if-nez v0, :cond_1

    .line 78
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    .line 80
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 85
    new-instance v2, Ljava/util/Date;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getPublicationDateInMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 86
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "EEE"

    invoke-direct {v0, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 87
    sget-object v3, Lcom/amazon/nwstd/toc/ReplicaTOCProvider;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 88
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    .line 90
    sget-object v4, Lcom/amazon/nwstd/toc/ReplicaTOCProvider;->currentLocale:Ljava/util/Locale;

    invoke-static {v3, v4}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v3

    .line 91
    sget-object v4, Lcom/amazon/nwstd/toc/ReplicaTOCProvider;->GMT:Ljava/util/TimeZone;

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 95
    :goto_0
    new-instance v2, Lcom/amazon/nwstd/toc/ReplicaTOCHeader;

    invoke-direct {v2, v1, v0}, Lcom/amazon/nwstd/toc/ReplicaTOCHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/amazon/nwstd/toc/ReplicaTOCProvider;->tocHeader:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsHeader;

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/amazon/nwstd/toc/ReplicaTOCProvider;->tocHeader:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsHeader;

    return-object v0
.end method

.method public isTOCAvailable(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 107
    invoke-static {}, Lcom/amazon/nwstd/utils/NewtronUtils;->isNewtronTOCEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {p1}, Lcom/amazon/nwstd/utils/MobiReplicaCommandBarHelper;->isMobiReplicaContent(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
