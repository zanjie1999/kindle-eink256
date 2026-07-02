.class public Lcom/amazon/kcp/reader/ui/LprMessageHelper;
.super Ljava/lang/Object;
.source "LprMessageHelper.java"


# static fields
.field private static MONTH_IN_DAYS:Ljava/lang/Long;

.field private static WEEK_IN_DAYS:Ljava/lang/Long;

.field private static YEAR_IN_DAYS:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v0, 0x7

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/LprMessageHelper;->WEEK_IN_DAYS:Ljava/lang/Long;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/LprMessageHelper;->MONTH_IN_DAYS:Ljava/lang/Long;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0xc

    mul-long v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/LprMessageHelper;->YEAR_IN_DAYS:Ljava/lang/Long;

    return-void
.end method

.method private static checkToday(J)Z
    .locals 3

    .line 358
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 359
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 361
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 p1, 0x1

    .line 363
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x6

    .line 364
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne v0, p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static checkYesterday(J)Z
    .locals 3

    .line 380
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 381
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 383
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/4 p1, 0x1

    .line 385
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x6

    .line 386
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr p0, v0

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static generateAnnotationsString(ILandroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/sync/LPRSyncType;)Ljava/lang/String;
    .locals 9

    .line 83
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    .line 84
    invoke-static {p2}, Lcom/amazon/kcp/reader/ui/LprMessageHelper;->getCurrentLocation(Lcom/amazon/android/docviewer/KindleDocViewer;)I

    move-result v1

    .line 85
    invoke-static {p2}, Lcom/amazon/kcp/reader/ui/LprMessageHelper;->getCurrentPosition(Lcom/amazon/android/docviewer/KindleDocViewer;)I

    move-result v2

    .line 86
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v3

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 87
    invoke-interface {v0, p0}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v3

    .line 90
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsPageLabels()Z

    move-result p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz p2, :cond_1

    .line 91
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object p2

    invoke-interface {p2, v2}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object p2

    .line 92
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v7

    invoke-interface {v7, p0}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v7

    .line 94
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 95
    sget p0, Lcom/amazon/kindle/krl/R$string;->sync_lpr_choice_page:I

    .line 96
    sget-object v0, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    if-ne p3, v0, :cond_0

    .line 97
    sget p0, Lcom/amazon/kindle/krl/R$string;->sync_mrpr_choice_page:I

    :cond_0
    new-array p3, v6, [Ljava/lang/Object;

    aput-object p2, p3, v5

    aput-object v7, p3, v4

    .line 99
    invoke-virtual {p1, p0, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne v1, v3, :cond_4

    .line 107
    sget p2, Lcom/amazon/kindle/krl/R$string;->sync_mrpr_same_page_read:I

    .line 108
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object p3

    invoke-interface {p3, v2}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p3

    .line 109
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p0

    .line 110
    invoke-interface {p3, p0}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    sget p2, Lcom/amazon/kindle/krl/R$string;->sync_mrpr_choice_position_back:I

    goto :goto_0

    .line 112
    :cond_2
    invoke-interface {p3, p0}, Lcom/amazon/kindle/krx/reader/IPosition;->isBefore(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 113
    sget p2, Lcom/amazon/kindle/krl/R$string;->sync_mrpr_choice_position_ahead:I

    .line 115
    :cond_3
    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 118
    :cond_4
    sget p0, Lcom/amazon/kindle/krl/R$string;->sync_lpr_choice:I

    .line 119
    sget-object p2, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    if-ne p3, p2, :cond_5

    .line 120
    sget p0, Lcom/amazon/kindle/krl/R$string;->sync_mrpr_choice:I

    :cond_5
    new-array p2, v6, [Ljava/lang/Object;

    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v4

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static generateAnnotationsString(Ljava/lang/String;JIZILandroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/sync/LPRSyncType;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p6

    move-object/from16 v1, p8

    .line 161
    invoke-interface/range {p7 .. p7}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    .line 162
    invoke-static/range {p7 .. p7}, Lcom/amazon/kcp/reader/ui/LprMessageHelper;->getCurrentLocation(Lcom/amazon/android/docviewer/KindleDocViewer;)I

    move-result v3

    .line 163
    invoke-static/range {p7 .. p7}, Lcom/amazon/kcp/reader/ui/LprMessageHelper;->getCurrentPosition(Lcom/amazon/android/docviewer/KindleDocViewer;)I

    move-result v4

    .line 164
    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v5

    move/from16 v6, p5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 165
    invoke-interface {v2, v5}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v6

    move-wide/from16 v7, p1

    move/from16 v9, p3

    move/from16 v10, p4

    .line 166
    invoke-static {v7, v8, v9, v10, v0}, Lcom/amazon/kcp/reader/ui/LprMessageHelper;->getTimeString(JIZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 170
    invoke-interface/range {p7 .. p7}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsPageLabels()Z

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v8, :cond_1

    .line 171
    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v8

    invoke-interface {v8, v4}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v8

    .line 172
    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v14

    invoke-interface {v14, v5}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v14

    .line 174
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 175
    sget v2, Lcom/amazon/kindle/krl/R$string;->sync_lpr_choice_page_with_source:I

    .line 176
    sget-object v3, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    if-ne v1, v3, :cond_0

    .line 177
    sget v2, Lcom/amazon/kindle/krl/R$string;->sync_mrpr_choice_page_with_source:I

    :cond_0
    new-array v1, v10, [Ljava/lang/Object;

    aput-object v8, v1, v13

    aput-object v14, v1, v12

    aput-object p0, v1, v11

    aput-object v7, v1, v9

    .line 179
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-ne v3, v6, :cond_4

    .line 185
    sget v1, Lcom/amazon/kindle/krl/R$string;->sync_mrpr_same_page_read:I

    .line 186
    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    .line 187
    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    .line 188
    invoke-interface {v3, v2}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 189
    sget v1, Lcom/amazon/kindle/krl/R$string;->sync_mrpr_choice_position_back_with_source:I

    goto :goto_0

    .line 190
    :cond_2
    invoke-interface {v3, v2}, Lcom/amazon/kindle/krx/reader/IPosition;->isBefore(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 191
    sget v1, Lcom/amazon/kindle/krl/R$string;->sync_mrpr_choice_position_ahead_with_source:I

    :goto_0
    new-array v2, v11, [Ljava/lang/Object;

    aput-object p0, v2, v13

    aput-object v7, v2, v12

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 193
    :cond_3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 198
    :cond_4
    sget v2, Lcom/amazon/kindle/krl/R$string;->sync_lpr_choice_with_source:I

    .line 199
    sget-object v4, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    if-ne v1, v4, :cond_5

    .line 200
    sget v2, Lcom/amazon/kindle/krl/R$string;->sync_mrpr_choice_with_source:I

    :cond_5
    new-array v1, v10, [Ljava/lang/Object;

    .line 202
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v13

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v12

    aput-object p0, v1, v11

    aput-object v7, v1, v9

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateLprMessageString(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;Lcom/amazon/kindle/krx/sync/LPRSyncType;)Ljava/lang/String;
    .locals 10

    .line 52
    iget-object v0, p2, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->sourceDeviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v2, p2, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->lprSetTime:J

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 53
    iget-object v1, p2, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->sourceDeviceName:Ljava/lang/String;

    iget v4, p2, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->localTimeOffset:I

    const/4 v5, 0x1

    iget v6, p2, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    move-object v7, p0

    move-object v8, p1

    move-object v9, p3

    invoke-static/range {v1 .. v9}, Lcom/amazon/kcp/reader/ui/LprMessageHelper;->generateAnnotationsString(Ljava/lang/String;JIZILandroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/sync/LPRSyncType;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 56
    :cond_0
    iget p2, p2, Lcom/amazon/kindle/model/content/ILocalBookInfo$ServerLastPageReadDesc;->position:I

    invoke-static {p2, p0, p1, p3}, Lcom/amazon/kcp/reader/ui/LprMessageHelper;->generateAnnotationsString(ILandroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/sync/LPRSyncType;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getCurrentLocation(Lcom/amazon/android/docviewer/KindleDocViewer;)I
    .locals 3

    .line 206
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 208
    invoke-static {p0, v1}, Lcom/amazon/kcp/debug/FastNavigationUtils;->isPlaceholderPosition(Lcom/amazon/android/docviewer/KindleDocViewer;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 209
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 211
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v1

    .line 213
    :cond_1
    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result p0

    return p0
.end method

.method public static getCurrentPosition(Lcom/amazon/android/docviewer/KindleDocViewer;)I
    .locals 3

    .line 222
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    .line 223
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 224
    invoke-static {p0, v1}, Lcom/amazon/kcp/debug/FastNavigationUtils;->isPlaceholderPosition(Lcom/amazon/android/docviewer/KindleDocViewer;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 225
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 227
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v1

    :cond_1
    return v1
.end method

.method public static getTimeReferenceString(JJLandroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 290
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_0

    .line 293
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 296
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 297
    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 299
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    sub-long/2addr p2, p0

    .line 300
    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p2, p3, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    .line 301
    sget-object v0, Lcom/amazon/kcp/reader/ui/LprMessageHelper;->YEAR_IN_DAYS:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    div-long v0, p0, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x1

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    .line 304
    sget p0, Lcom/amazon/kindle/krl/R$string;->mrpr_bottom_sheet_last_updated_years_ago:I

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-virtual {p4, p0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez v6, :cond_2

    .line 306
    sget p0, Lcom/amazon/kindle/krl/R$string;->mrpr_bottom_sheet_last_updated_a_year_ago:I

    invoke-virtual {p4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 309
    :cond_2
    sget-object v0, Lcom/amazon/kcp/reader/ui/LprMessageHelper;->MONTH_IN_DAYS:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    div-long v0, p0, v0

    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    .line 312
    sget p0, Lcom/amazon/kindle/krl/R$string;->mrpr_bottom_sheet_last_updated_months_ago:I

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-virtual {p4, p0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-nez v6, :cond_4

    .line 314
    sget p0, Lcom/amazon/kindle/krl/R$string;->mrpr_bottom_sheet_last_updated_a_month_ago:I

    invoke-virtual {p4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 317
    :cond_4
    sget-object v0, Lcom/amazon/kcp/reader/ui/LprMessageHelper;->WEEK_IN_DAYS:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    div-long v0, p0, v0

    cmp-long v6, v0, v4

    if-lez v6, :cond_5

    .line 320
    sget p0, Lcom/amazon/kindle/krl/R$string;->mrpr_bottom_sheet_last_updated_weeks_ago:I

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-virtual {p4, p0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-nez v6, :cond_6

    .line 322
    sget p0, Lcom/amazon/kindle/krl/R$string;->mrpr_bottom_sheet_last_updated_a_week_ago:I

    invoke-virtual {p4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    cmp-long v0, p0, v4

    if-lez v0, :cond_7

    .line 326
    sget p2, Lcom/amazon/kindle/krl/R$string;->mrpr_bottom_sheet_last_updated_days_ago:I

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p3, v2

    invoke-virtual {p4, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    if-nez v0, :cond_8

    .line 328
    sget p0, Lcom/amazon/kindle/krl/R$string;->mrpr_bottom_sheet_last_updated_a_day_ago:I

    invoke-virtual {p4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 331
    :cond_8
    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p2, p3, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    cmp-long v0, p0, v4

    if-lez v0, :cond_9

    .line 334
    sget p2, Lcom/amazon/kindle/krl/R$string;->mrpr_bottom_sheet_last_updated_hours_ago:I

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p3, v2

    invoke-virtual {p4, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    if-nez v0, :cond_a

    .line 336
    sget p0, Lcom/amazon/kindle/krl/R$string;->mrpr_bottom_sheet_last_updated_an_hour_ago:I

    invoke-virtual {p4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 339
    :cond_a
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p2, p3, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    cmp-long p2, p0, v4

    if-lez p2, :cond_b

    .line 342
    sget p2, Lcom/amazon/kindle/krl/R$string;->mrpr_bottom_sheet_last_updated_minutes_ago:I

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p3, v2

    invoke-virtual {p4, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 344
    :cond_b
    sget p0, Lcom/amazon/kindle/krl/R$string;->mrpr_bottom_sheet_last_updated_a_minute_ago:I

    invoke-virtual {p4, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTimeString(JIZLandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 255
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/32 v0, 0xea60

    int-to-long p2, p2

    mul-long p2, p2, v0

    add-long/2addr p0, p2

    .line 260
    new-instance p2, Ljava/text/SimpleDateFormat;

    sget p3, Lcom/amazon/kindle/krl/R$string;->lpr_time_date_no_timezone:I

    invoke-virtual {p4, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    :cond_0
    invoke-static {p0, p1}, Lcom/amazon/kcp/reader/ui/LprMessageHelper;->checkToday(J)Z

    move-result p2

    .line 263
    invoke-static {p0, p1}, Lcom/amazon/kcp/reader/ui/LprMessageHelper;->checkYesterday(J)Z

    move-result v0

    if-eqz p3, :cond_4

    if-nez p2, :cond_1

    if-eqz v0, :cond_4

    .line 265
    :cond_1
    invoke-static {p0, p1}, Lcom/amazon/kcp/reader/ui/LprMessageHelper;->checkToday(J)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 266
    new-instance p2, Ljava/text/SimpleDateFormat;

    sget p3, Lcom/amazon/kindle/krl/R$string;->lpr_time_today:I

    invoke-virtual {p4, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_2
    invoke-static {p0, p1}, Lcom/amazon/kcp/reader/ui/LprMessageHelper;->checkYesterday(J)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 268
    new-instance p2, Ljava/text/SimpleDateFormat;

    sget p3, Lcom/amazon/kindle/krl/R$string;->lpr_time_yesterday:I

    invoke-virtual {p4, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    goto :goto_0

    .line 271
    :cond_4
    new-instance p2, Ljava/text/SimpleDateFormat;

    sget p3, Lcom/amazon/kindle/krl/R$string;->lpr_time_date:I

    invoke-virtual {p4, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_5

    .line 276
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-string p0, ""

    return-object p0
.end method
