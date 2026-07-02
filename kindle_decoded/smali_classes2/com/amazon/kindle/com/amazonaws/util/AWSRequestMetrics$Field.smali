.class public final enum Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;
.super Ljava/lang/Enum;
.source "AWSRequestMetrics.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;",
        ">;",
        "Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum AWSErrorCode:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum AWSRequestID:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum BytesProcessed:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum CredentialsRequestTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum Exception:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum HttpClientPoolAvailableCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum HttpClientPoolLeasedCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum HttpClientPoolPendingCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum HttpClientReceiveResponseTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum HttpClientRetryCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum HttpClientSendRequestTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum HttpRequestTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum RedirectLocation:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum RequestCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum RequestMarshallTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum RequestSigningTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum ResponseProcessingTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum RetryCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum RetryPauseTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum ServiceEndpoint:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum ServiceName:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

.field public static final enum StatusCode:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 51
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/4 v1, 0x0

    const-string v2, "AWSErrorCode"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->AWSErrorCode:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    .line 54
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/4 v2, 0x1

    const-string v3, "AWSRequestID"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    .line 57
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/4 v3, 0x2

    const-string v4, "BytesProcessed"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->BytesProcessed:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    .line 64
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/4 v4, 0x3

    const-string v5, "ClientExecuteTime"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    .line 67
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/4 v5, 0x4

    const-string v6, "CredentialsRequestTime"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    .line 70
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/4 v6, 0x5

    const-string v7, "Exception"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    .line 75
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/4 v7, 0x6

    const-string v8, "HttpRequestTime"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    .line 78
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/4 v8, 0x7

    const-string v9, "RedirectLocation"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RedirectLocation:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    .line 81
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v9, 0x8

    const-string v10, "RequestMarshallTime"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    .line 85
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v10, 0x9

    const-string v11, "RequestSigningTime"

    invoke-direct {v0, v11, v10}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    .line 90
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v11, 0xa

    const-string v12, "ResponseProcessingTime"

    invoke-direct {v0, v12, v11}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    .line 94
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v12, 0xb

    const-string v13, "RequestCount"

    invoke-direct {v0, v13, v12}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RequestCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    .line 98
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v13, 0xc

    const-string v14, "RetryCount"

    invoke-direct {v0, v14, v13}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RetryCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    .line 104
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v14, 0xd

    const-string v15, "HttpClientRetryCount"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpClientRetryCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    .line 109
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v15, 0xe

    const-string v14, "HttpClientSendRequestTime"

    invoke-direct {v0, v14, v15}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpClientSendRequestTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    .line 114
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v14, 0xf

    const-string v15, "HttpClientReceiveResponseTime"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpClientReceiveResponseTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    .line 123
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v15, 0x10

    const-string v14, "HttpClientPoolAvailableCount"

    invoke-direct {v0, v14, v15}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpClientPoolAvailableCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    .line 132
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v14, 0x11

    const-string v15, "HttpClientPoolLeasedCount"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpClientPoolLeasedCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    .line 140
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v15, 0x12

    const-string v14, "HttpClientPoolPendingCount"

    invoke-direct {v0, v14, v15}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpClientPoolPendingCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    .line 143
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v14, 0x13

    const-string v15, "RetryPauseTime"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    .line 149
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v15, 0x14

    const-string v14, "ServiceEndpoint"

    invoke-direct {v0, v14, v15}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ServiceEndpoint:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    .line 152
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v14, 0x15

    const-string v15, "ServiceName"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ServiceName:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    .line 155
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const-string v15, "StatusCode"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14}, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->StatusCode:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v14, 0x17

    new-array v14, v14, [Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    .line 48
    sget-object v15, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->AWSErrorCode:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v15, v14, v1

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->AWSRequestID:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->BytesProcessed:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->CredentialsRequestTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->Exception:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpRequestTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RedirectLocation:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RequestMarshallTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RequestSigningTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ResponseProcessingTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RequestCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v1, v14, v12

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RetryCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    aput-object v1, v14, v13

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpClientRetryCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpClientSendRequestTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpClientReceiveResponseTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpClientPoolAvailableCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpClientPoolLeasedCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->HttpClientPoolPendingCount:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->RetryPauseTime:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ServiceEndpoint:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->ServiceName:Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    const/16 v2, 0x15

    aput-object v1, v14, v2

    const/16 v1, 0x16

    aput-object v0, v14, v1

    sput-object v14, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;
    .locals 1

    .line 48
    const-class v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;
    .locals 1

    .line 48
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v0}, [Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/com/amazonaws/util/AWSRequestMetrics$Field;

    return-object v0
.end method
