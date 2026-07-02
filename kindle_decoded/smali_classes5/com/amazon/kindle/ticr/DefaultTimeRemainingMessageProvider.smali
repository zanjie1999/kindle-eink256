.class public Lcom/amazon/kindle/ticr/DefaultTimeRemainingMessageProvider;
.super Ljava/lang/Object;
.source "DefaultTimeRemainingMessageProvider.java"

# interfaces
.implements Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$TimeRemainingMessageProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private formatHours(JLandroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    .line 115
    sget v2, Lcom/amazon/kindle/krl/R$string;->ttr_footer_hours:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {p3, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez v4, :cond_1

    .line 117
    sget p1, Lcom/amazon/kindle/krl/R$string;->ttr_footer_hour:I

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-virtual {p3, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private formatRemainingString(JJ)Ljava/lang/String;
    .locals 6

    .line 98
    invoke-direct {p0}, Lcom/amazon/kindle/ticr/DefaultTimeRemainingMessageProvider;->getFooterEndingString()I

    move-result v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 100
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/ticr/DefaultTimeRemainingMessageProvider;->formatRemainingString(JJI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatRemainingString(JJI)Ljava/lang/String;
    .locals 5

    .line 106
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/ticr/DefaultTimeRemainingMessageProvider;->formatHours(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    cmp-long v4, p3, v2

    if-lez v4, :cond_0

    .line 108
    sget v2, Lcom/amazon/kindle/krl/R$string;->ttr_footer_mins:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v3, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    sget p3, Lcom/amazon/kindle/krl/R$string;->ttr_footer_min:I

    new-array p4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p4, p2

    invoke-virtual {v0, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 110
    :goto_0
    sget p4, Lcom/amazon/kindle/krl/R$string;->ttr_footer_hoursmins:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, p2

    aput-object p3, v2, v1

    const/4 p1, 0x2

    invoke-virtual {v0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {v0, p4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFooterEndingString()I
    .locals 2

    .line 124
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->isSample()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    sget v0, Lcom/amazon/kindle/krl/R$string;->footer_ending_str_sample:I

    return v0

    :cond_0
    if-eqz v0, :cond_1

    .line 127
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    sget v0, Lcom/amazon/kindle/krl/R$string;->footer_ending_str_episode:I

    return v0

    .line 130
    :cond_1
    sget v0, Lcom/amazon/kindle/krl/R$string;->footer_ending_str_book:I

    return v0
.end method

.method private getTimeRemainingStringForBook(J)Ljava/lang/String;
    .locals 5

    .line 28
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-wide/16 v1, 0xe10

    .line 30
    div-long v3, p1, v1

    .line 31
    rem-long/2addr p1, v1

    const-wide/16 v1, 0x3c

    div-long/2addr p1, v1

    .line 32
    invoke-direct {p0, v3, v4, p1, p2}, Lcom/amazon/kindle/ticr/DefaultTimeRemainingMessageProvider;->formatRemainingString(JJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTimeRemainingStringForChapter(J)Ljava/lang/String;
    .locals 13

    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-wide/16 v1, 0xe10

    .line 43
    div-long v3, p1, v1

    .line 44
    rem-long/2addr p1, v1

    const-wide/16 v1, 0x3c

    div-long/2addr p1, v1

    .line 46
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x1

    cmp-long v10, v3, v5

    if-lez v10, :cond_5

    const/4 v10, 0x2

    cmp-long v11, v3, v7

    if-lez v11, :cond_0

    cmp-long v12, p1, v7

    if-lez v12, :cond_0

    .line 50
    sget v5, Lcom/amazon/kindle/krl/R$string;->ttr_chapter_hoursmins:I

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v9

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_0
    if-nez v11, :cond_1

    cmp-long v12, p1, v7

    if-lez v12, :cond_1

    .line 52
    sget v5, Lcom/amazon/kindle/krl/R$string;->ttr_chapter_hourmins:I

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v9

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_1
    if-lez v11, :cond_2

    cmp-long v12, p1, v7

    if-nez v12, :cond_2

    .line 54
    sget v5, Lcom/amazon/kindle/krl/R$string;->ttr_chapter_hoursmin:I

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v9

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_2
    if-nez v11, :cond_3

    cmp-long v12, p1, v7

    if-nez v12, :cond_3

    .line 56
    sget v5, Lcom/amazon/kindle/krl/R$string;->ttr_chapter_hourmin:I

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v9

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    if-lez v11, :cond_4

    cmp-long v7, p1, v5

    if-nez v7, :cond_4

    .line 58
    sget p1, Lcom/amazon/kindle/krl/R$string;->ttr_chapter_hours:I

    new-array p2, v9, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p2, v2

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    if-nez v11, :cond_7

    cmp-long v7, p1, v5

    if-nez v7, :cond_7

    .line 60
    sget p1, Lcom/amazon/kindle/krl/R$string;->ttr_chapter_hour:I

    new-array p2, v9, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p2, v2

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    cmp-long v3, p1, v7

    if-lez v3, :cond_6

    .line 64
    sget v3, Lcom/amazon/kindle/krl/R$string;->ttr_chapter_mins:I

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 66
    :cond_6
    sget p1, Lcom/amazon/kindle/krl/R$string;->ttr_chapter_min:I

    new-array p2, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v2

    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    :cond_7
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTimeRemainingStringForRecaps(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x3c

    .line 80
    div-long/2addr p1, v0

    .line 82
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1

    cmp-long v5, p1, v3

    if-lez v5, :cond_0

    .line 85
    sget v3, Lcom/amazon/kindle/krl/R$string;->ttr_recaps_mins:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 87
    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$string;->ttr_recaps_min:I

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v1

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getTimeRemainingString(JLcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;)Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;->CHAPTER_END:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    if-ne p3, v0, :cond_0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/ticr/DefaultTimeRemainingMessageProvider;->getTimeRemainingStringForChapter(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 17
    :cond_0
    sget-object v0, Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;->RECAPS_END:Lcom/amazon/kindle/ticr/BaseTicrDocViewerEventHandler$EndType;

    if-ne p3, v0, :cond_1

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/ticr/DefaultTimeRemainingMessageProvider;->getTimeRemainingStringForRecaps(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 20
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/ticr/DefaultTimeRemainingMessageProvider;->getTimeRemainingStringForBook(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUnavailableString()Ljava/lang/String;
    .locals 2

    .line 93
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    sget v1, Lcom/amazon/kindle/krl/R$string;->ttr_unavailable:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
