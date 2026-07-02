.class synthetic Lcom/amazon/device/ads/Metrics$2;
.super Ljava/lang/Object;
.source "Metrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/Metrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$device$ads$WebRequest$WebRequestStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 256
    invoke-static {}, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->values()[Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/device/ads/Metrics$2;->$SwitchMap$com$amazon$device$ads$WebRequest$WebRequestStatus:[I

    :try_start_0
    sget-object v1, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->INVALID_CLIENT_PROTOCOL:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/amazon/device/ads/Metrics$2;->$SwitchMap$com$amazon$device$ads$WebRequest$WebRequestStatus:[I

    sget-object v1, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->NETWORK_FAILURE:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/amazon/device/ads/Metrics$2;->$SwitchMap$com$amazon$device$ads$WebRequest$WebRequestStatus:[I

    sget-object v1, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->MALFORMED_URL:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/amazon/device/ads/Metrics$2;->$SwitchMap$com$amazon$device$ads$WebRequest$WebRequestStatus:[I

    sget-object v1, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->UNSUPPORTED_ENCODING:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
