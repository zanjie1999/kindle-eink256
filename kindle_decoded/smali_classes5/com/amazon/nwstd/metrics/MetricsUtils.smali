.class public Lcom/amazon/nwstd/metrics/MetricsUtils;
.super Ljava/lang/Object;
.source "MetricsUtils.java"


# static fields
.field private static final CE_APP_KEY:Ljava/lang/String; = "58d8e40edf8088df17d89e1-f527c5a0-3f0b-11e4-2580-004a77f8b47f"

.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyyMMdd"

.field private static final GMT_TZ:Ljava/util/TimeZone;

.field private static final KU_APP_KEY:Ljava/lang/String; = "c93db21396c1c10850140c0-45a431aa-c024-11e5-74a9-0086bc74ca0f"

.field private static final PR_APP_KEY:Ljava/lang/String; = "291a93aa46e3be97c7fcfcc-b6982b24-48bb-11e6-b21d-00342b7f5075"

.field private static final TAG:Ljava/lang/String;

.field private static final TEST_CE_APP_KEY:Ljava/lang/String; = "311e94fd63bcd6aa876c965-830cefe6-221e-11e4-4a24-00a426b17dd8"

.field private static final TEST_KU_APP_KEY:Ljava/lang/String; = "9833e3f928a1e06a1b45928-00d67f7a-b9c9-11e5-1c85-008b20abc1fa"

.field private static final TEST_PR_APP_KEY:Ljava/lang/String; = "75d23de66610f91f02614f5-95791b10-48bb-11e6-b21d-00342b7f5075"

.field private static final USER_BUILD_TYPE:Ljava/lang/String; = "user"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/nwstd/metrics/MetricsUtils;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsUtils;->TAG:Ljava/lang/String;

    const-string v0, "GMT"

    .line 36
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsUtils;->GMT_TZ:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAge(J)Ljava/lang/String;
    .locals 2

    .line 234
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/32 p0, 0x5265c00

    div-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBucketedArticleRead(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 209
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 210
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const-string p0, "0-3"

    return-object p0

    .line 212
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    const-string p0, "4-6"

    return-object p0

    .line 214
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    const-string p0, "7-10"

    return-object p0

    .line 216
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xd

    if-gt v0, v1, :cond_3

    const-string p0, "11-13"

    return-object p0

    .line 218
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_4

    const-string p0, "14-16"

    return-object p0

    .line 220
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x14

    if-gt p0, v0, :cond_5

    const-string p0, "17-20"

    return-object p0

    :cond_5
    const-string p0, "20+"

    return-object p0
.end method

.method public static getBucketedPercentage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 165
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v2

    .line 167
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    mul-int/lit8 p0, p0, 0xa

    const/16 v0, 0x64

    if-ne p0, v0, :cond_0

    const/16 p0, 0x5a

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    const-string p0, "???"

    return-object p0
.end method

.method public static getBucketedTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 187
    invoke-static {p0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x2904

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const-string p0, "0-10s"

    return-object p0

    :cond_0
    const-wide/16 v2, 0x7724

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    const-string p0, "11-30s"

    return-object p0

    :cond_1
    const-wide/32 v2, 0xea60

    cmp-long p0, v0, v2

    if-gez p0, :cond_2

    const-string p0, "31-60s"

    return-object p0

    :cond_2
    const-wide/32 v2, 0x1d4c0

    cmp-long p0, v0, v2

    if-gez p0, :cond_3

    const-string p0, "1 to 2min"

    return-object p0

    :cond_3
    const-wide/32 v2, 0x493e0

    cmp-long p0, v0, v2

    if-gez p0, :cond_4

    const-string p0, "2 to 5min"

    return-object p0

    :cond_4
    const-string p0, "5+ min"

    return-object p0
.end method

.method public static final getContentExplorerLocalyticsAppKey(Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)Ljava/lang/String;
    .locals 2

    .line 95
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    const-string/jumbo v1, "user"

    if-ne p0, v0, :cond_1

    .line 99
    sget-object p0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "311e94fd63bcd6aa876c965-830cefe6-221e-11e4-4a24-00a426b17dd8"

    goto :goto_0

    :cond_0
    const-string p0, "58d8e40edf8088df17d89e1-f527c5a0-3f0b-11e4-2580-004a77f8b47f"

    goto :goto_0

    .line 102
    :cond_1
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->KU:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    if-ne p0, v0, :cond_3

    .line 106
    sget-object p0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "9833e3f928a1e06a1b45928-00d67f7a-b9c9-11e5-1c85-008b20abc1fa"

    goto :goto_0

    :cond_2
    const-string p0, "c93db21396c1c10850140c0-45a431aa-c024-11e5-74a9-0086bc74ca0f"

    goto :goto_0

    .line 109
    :cond_3
    sget-object v0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->PR:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    if-ne p0, v0, :cond_5

    .line 113
    sget-object p0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "75d23de66610f91f02614f5-95791b10-48bb-11e6-b21d-00342b7f5075"

    goto :goto_0

    :cond_4
    const-string p0, "291a93aa46e3be97c7fcfcc-b6982b24-48bb-11e6-b21d-00342b7f5075"

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 117
    :goto_1
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    return-object p0
.end method

.method public static getDebugID()Ljava/lang/String;
    .locals 2

    .line 271
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 273
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFormattedDate(J)Ljava/lang/String;
    .locals 2

    .line 258
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 260
    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsUtils;->GMT_TZ:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 261
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 262
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIssueId(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 247
    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsUtils;->GMT_TZ:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 248
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getLocalyticsParentAsinAppKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 76
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 80
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_DEBUG"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "9595b2641f24a8fefcda2e0-84b1ed8e-1572-11e3-9334-009c5fda0a25"

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static getLoggableOriginType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, " "

    const-string v1, "_"

    .line 286
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "None"

    :goto_0
    return-object p0
.end method

.method public static mapArticleType(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;)Ljava/lang/String;
    .locals 4

    .line 127
    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsUtils$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsArticleType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    .line 135
    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot map unknown page type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "???"

    return-object p0

    :cond_0
    const-string p0, "Cover"

    return-object p0

    :cond_1
    const-string p0, "Article"

    return-object p0

    :cond_2
    const-string p0, "Ad"

    return-object p0
.end method

.method public static mapOrientation(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;)Ljava/lang/String;
    .locals 4

    .line 146
    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsUtils$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsOrientation:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 152
    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot map unknown orientation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "???"

    return-object p0

    :cond_0
    const-string p0, "Landscape"

    return-object p0

    :cond_1
    const-string p0, "Portrait"

    return-object p0
.end method
