.class public final Lcom/audible/license/repository/file/VoucherParser;
.super Ljava/lang/Object;
.source "VoucherParser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/license/repository/file/VoucherParser$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoucherParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VoucherParser.kt\ncom/audible/license/repository/file/VoucherParser\n*L\n1#1,112:1\n*E\n"
.end annotation


# instance fields
.field private final logger$delegate:Lkotlin/Lazy;

.field private final voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/audible/license/repository/file/VoucherParser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/license/repository/file/VoucherParser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/license/metrics/VoucherMetricRecorder;)V
    .locals 1

    const-string v0, "voucherMetricRecorder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/license/repository/file/VoucherParser;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 21
    invoke-static {p0}, Lcom/audible/mobile/logging/PIIAwareLoggerKt;->piiAwareLogger(Ljava/lang/Object;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/license/repository/file/VoucherParser;->logger$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getLogger()Lorg/slf4j/Logger;
    .locals 1

    iget-object v0, p0, Lcom/audible/license/repository/file/VoucherParser;->logger$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/slf4j/Logger;

    return-object v0
.end method

.method private final hexStringToByteArray(Ljava/lang/String;)[B
    .locals 5

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    .line 93
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v1
.end method

.method private final stringToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .line 81
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    invoke-direct {p0}, Lcom/audible/license/repository/file/VoucherParser;->getLogger()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Error while parsing date field from service: "

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final parseVoucher(Ljava/lang/String;)Lcom/audible/license/model/Voucher;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/audible/license/exceptions/VoucherLoadException;
        }
    .end annotation

    const-string v0, "jsonVoucher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "key"

    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 37
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    goto :goto_1

    .line 41
    :cond_1
    invoke-direct {p0, p1}, Lcom/audible/license/repository/file/VoucherParser;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_2

    :cond_2
    :goto_1
    move-object p1, v1

    :goto_2
    const-string v4, "iv"

    .line 45
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 46
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_4

    goto :goto_4

    .line 50
    :cond_4
    invoke-direct {p0, v4}, Lcom/audible/license/repository/file/VoucherParser;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_5

    :cond_5
    :goto_4
    move-object v2, v1

    :goto_5
    const-string v3, "refreshDate"

    .line 54
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 55
    invoke-direct {p0, v3}, Lcom/audible/license/repository/file/VoucherParser;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    goto :goto_6

    :cond_6
    move-object v3, v1

    :goto_6
    const-string v4, "removalOnExpirationDate"

    .line 58
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 59
    invoke-direct {p0, v4}, Lcom/audible/license/repository/file/VoucherParser;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    :cond_7
    move-object v4, v1

    const-string v1, "rules"

    .line 63
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "jObject.optJSONArray(RULES_NAME)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/audible/license/repository/file/VoucherParser;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 62
    invoke-static {v0, v1}, Lcom/audible/license/rules/VoucherRulesParser;->parseRules(Lorg/json/JSONArray;Lcom/audible/license/metrics/VoucherMetricRecorder;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 67
    new-instance v6, Lcom/audible/license/model/Voucher;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/audible/license/model/Voucher;-><init>([B[BLjava/util/Date;Ljava/util/Date;Ljava/util/List;)V

    return-object v6

    .line 65
    :cond_8
    new-instance p1, Lcom/audible/license/exceptions/InvalidVoucherException;

    const-string v0, "Invalid Rules"

    invoke-direct {p1, v0}, Lcom/audible/license/exceptions/InvalidVoucherException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 69
    iget-object v0, p0, Lcom/audible/license/repository/file/VoucherParser;->voucherMetricRecorder:Lcom/audible/license/metrics/VoucherMetricRecorder;

    .line 71
    sget-object v1, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherRulesParser:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 72
    sget-object v2, Lcom/audible/license/metrics/MetricNames;->FailedToParseVoucherObject:Lcom/audible/license/metrics/MetricNames;

    .line 69
    invoke-virtual {v0, p1, v1, v2}, Lcom/audible/license/metrics/VoucherMetricRecorder;->recordExceptionMetric(Ljava/lang/Throwable;Lcom/audible/mobile/metric/domain/Metric$Source;Lcom/audible/mobile/metric/domain/Metric$Name;)V

    .line 74
    invoke-direct {p0}, Lcom/audible/license/repository/file/VoucherParser;->getLogger()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Failed to parse Voucher"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    new-instance v0, Lcom/audible/license/exceptions/VoucherLoadException;

    invoke-direct {v0, p1}, Lcom/audible/license/exceptions/VoucherLoadException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
