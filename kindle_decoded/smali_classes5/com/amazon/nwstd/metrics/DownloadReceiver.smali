.class public Lcom/amazon/nwstd/metrics/DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/nwstd/metrics/DownloadReceiver;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/metrics/DownloadReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private reportDownloadMetrics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;JZLjava/lang/String;)V
    .locals 14

    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-wide/from16 v4, p6

    move-object/from16 v6, p10

    move-object/from16 v7, p14

    .line 83
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v8

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v8, :cond_4

    if-eqz v2, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    const-string v13, "Wrong book asin default attribute in report download event"

    .line 84
    invoke-static {v8, v13}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    if-eqz v3, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    const-string v13, "Wrong book parent asin default attribute in report download event"

    .line 85
    invoke-static {v8, v13}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    if-eqz p5, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    const-string v13, "Wrong book subscriber type default attribute in report download event"

    .line 86
    invoke-static {v8, v13}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    cmp-long v8, v4, v9

    if-lez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    const-string v13, "Wrong book publication date attribute in report download event"

    .line 87
    invoke-static {v8, v13}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 91
    :cond_4
    invoke-static {v2, v4, v5}, Lcom/amazon/nwstd/metrics/MetricsUtils;->getIssueId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    const/4 v4, 0x0

    :goto_4
    const-string v5, "Wrong issue ID dimension in report download event"

    .line 94
    invoke-static {v4, v5}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 98
    :cond_6
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 100
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 102
    sget-object v8, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ISSUE_ID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v8}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v8, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->SIZE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v8}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p8 .. p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v8, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ISSUE_ID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v8, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->SIZE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p8 .. p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v8, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget v8, Lcom/amazon/kindle/newsstand/core/R$string;->intent_action_download_completed:I

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 112
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v6, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    .line 113
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Wrong download status attribute in report event, event : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->DOWNLOAD_COMPLETED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    cmp-long v1, p11, v9

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    const/4 v11, 0x0

    .line 114
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong download duration attribute in report event, event : "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->DOWNLOAD_COMPLETED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    :cond_9
    const-wide/16 v7, 0x3e8

    .line 118
    div-long v7, p11, v7

    .line 120
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->TIME:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->BUCKETED_TIME:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p11 .. p12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/amazon/nwstd/metrics/MetricsUtils;->getBucketedTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->STATUS:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->DID_PAUSE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p13 .. p13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->TIME:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->BUCKETED_TIME:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p11 .. p12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amazon/nwstd/metrics/MetricsUtils;->getBucketedTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->STATUS:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->DID_PAUSE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p13 .. p13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->DOWNLOAD_COMPLETED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/amazon/nwstd/metrics/loggers/DebugMetricsLogger;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 133
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->DOWNLOAD_COMPLETED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    move-object/from16 p6, v2

    move-object/from16 p7, p5

    move-object/from16 p8, p1

    move-object/from16 p9, p4

    move-object/from16 p10, v4

    move-object/from16 p11, v1

    invoke-static/range {p6 .. p11}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->reportDownloadEvent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;)V

    .line 135
    invoke-static/range {p5 .. p5}, Lcom/amazon/nwstd/upsell/UpsellUtils;->getUpsellOrigin(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 137
    sget-object v6, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_DOWNLOAD_COMPLETED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/amazon/nwstd/metrics/loggers/DebugMetricsLogger;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 138
    invoke-static {p1, v2, v3, v4, v1}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->reportDownloadEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V

    goto :goto_8

    .line 140
    :cond_a
    sget v5, Lcom/amazon/kindle/newsstand/core/R$string;->intent_action_download_failed:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 143
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->FAILURE_REASON:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v7, :cond_b

    goto :goto_7

    :cond_b
    const/4 v11, 0x0

    .line 146
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong failure reason attribute in report event, event : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->DOWNLOAD_FAILED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    .line 150
    :cond_c
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->DOWNLOAD_FAILED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/amazon/nwstd/metrics/loggers/DebugMetricsLogger;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 153
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->DOWNLOAD_FAILED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    move-object/from16 p6, v2

    move-object/from16 p7, p5

    move-object/from16 p8, p1

    move-object/from16 p9, p4

    move-object/from16 p10, v4

    move-object/from16 p11, v1

    invoke-static/range {p6 .. p11}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->reportDownloadEvent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;)V

    .line 157
    :cond_d
    :goto_8
    sget-object v0, Lcom/amazon/nwstd/metrics/DownloadReceiver;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "DownloadReceiver ; upload Localytics download event"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private triggerUpsellContentCoverSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 171
    invoke-static {p4}, Lcom/amazon/kcp/library/models/BookType;->getBookTypeFor(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object p4

    .line 173
    invoke-static {p3, p2, p1}, Lcom/amazon/nwstd/upsell/UpsellUtils;->shouldEnableUpsell(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-ne p4, p3, :cond_0

    .line 175
    new-instance p3, Landroid/content/Intent;

    const-class p4, Lcom/amazon/nwstd/service/NwstdIntentService;

    invoke-direct {p3, p1, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p4, "UpsellCoverSync"

    .line 176
    invoke-virtual {p3, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p4, v0

    const-string p2, "ParentAsins"

    .line 178
    invoke-virtual {p3, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p1, p3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19

    move-object/from16 v15, p1

    move-object/from16 v14, p2

    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->intent_extras_booktype:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 33
    invoke-static {v13}, Lcom/amazon/kcp/library/models/BookType;->getBookTypeFor(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    .line 34
    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    if-ne v0, v1, :cond_2

    .line 35
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$bool;->nwstd_localytics_logger_enabled:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->intent_action_download_completed:I

    invoke-virtual {v15, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->intent_action_download_failed:I

    invoke-virtual {v15, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->intent_extras_issue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->intent_extras_parent_asin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->intent_extras_subscriber_type:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->intent_extras_pubdate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v8, Lcom/amazon/kindle/newsstand/core/R$string;->intent_extras_size:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v10, Lcom/amazon/kindle/newsstand/core/R$string;->intent_extras_status:I

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v11, Lcom/amazon/kindle/newsstand/core/R$string;->intent_extras_duration:I

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->intent_extras_did_pause:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 49
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->intent_extras_failure_reason:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v18, v13

    move/from16 v13, v16

    move-object/from16 v14, v17

    invoke-direct/range {v0 .. v14}, Lcom/amazon/nwstd/metrics/DownloadReceiver;->reportDownloadMetrics(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;JZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object/from16 v18, v13

    .line 56
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->intent_action_download_completed:I

    invoke-virtual {v15, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    invoke-static {}, Lcom/amazon/nwstd/upsell/UpsellUtils;->isAndroid_O_OrHigher()Z

    move-result v0

    if-nez v0, :cond_3

    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/newsstand/core/R$string;->intent_extras_parent_asin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/newsstand/core/R$string;->intent_extras_subscriber_type:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p0

    move-object/from16 v3, v18

    .line 61
    invoke-direct {v2, v15, v0, v1, v3}, Lcom/amazon/nwstd/metrics/DownloadReceiver;->triggerUpsellContentCoverSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object/from16 v2, p0

    :goto_1
    return-void
.end method
