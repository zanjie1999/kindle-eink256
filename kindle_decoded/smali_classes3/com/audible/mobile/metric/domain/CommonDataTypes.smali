.class public final Lcom/audible/mobile/metric/domain/CommonDataTypes;
.super Ljava/lang/Object;
.source "CommonDataTypes.java"


# static fields
.field public static final ACR_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/metric/domain/DataType<",
            "Lcom/audible/mobile/domain/ACR;",
            ">;"
        }
    .end annotation
.end field

.field public static final AMZN_DATE_TYPE:Lcom/audible/mobile/metric/domain/DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/metric/domain/DataType<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AMZN_ERROR_TYPE:Lcom/audible/mobile/metric/domain/DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/metric/domain/DataType<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AMZN_REQUEST_ID_TYPE:Lcom/audible/mobile/metric/domain/DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/metric/domain/DataType<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/metric/domain/DataType<",
            "Lcom/audible/mobile/domain/Asin;",
            ">;"
        }
    .end annotation
.end field

.field public static final AUDIO_DATA_SOURCE_TYPE:Lcom/audible/mobile/metric/domain/DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/metric/domain/DataType<",
            "Lcom/audible/mobile/player/AudioDataSourceType;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_CODE_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/metric/domain/DataType<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_MESSAGE_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/metric/domain/DataType<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_REASON_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/metric/domain/DataType<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_SOURCE_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/metric/domain/DataType<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NETWORK_SPEED:Lcom/audible/mobile/metric/domain/DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/metric/domain/DataType<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final NETWORK_SPEED_RANGE:Lcom/audible/mobile/metric/domain/DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/metric/domain/DataType<",
            "Lcom/audible/mobile/player/exception/NetworkSpeedRange;",
            ">;"
        }
    .end annotation
.end field

.field public static final NETWORK_TYPE:Lcom/audible/mobile/metric/domain/DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/metric/domain/DataType<",
            "Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREVIOUS_AUDIO_DATA_SOURCE_TYPE:Lcom/audible/mobile/metric/domain/DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/metric/domain/DataType<",
            "Lcom/audible/mobile/player/AudioDataSourceType;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_ID_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/metric/domain/DataType<",
            "Lcom/audible/mobile/domain/RequestId;",
            ">;"
        }
    .end annotation
.end field

.field public static final STACK_TRACE:Lcom/audible/mobile/metric/domain/DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/metric/domain/DataType<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    const-class v0, Ljava/lang/Integer;

    const-class v1, Ljava/lang/Long;

    const-class v2, Ljava/lang/String;

    new-instance v3, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-class v4, Lcom/audible/mobile/domain/Asin;

    const-string v5, "Asin"

    invoke-direct {v3, v5, v4}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ASIN_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 26
    new-instance v3, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-class v4, Lcom/audible/mobile/domain/ProductId;

    const-string v5, "ProductId"

    invoke-direct {v3, v5, v4}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 28
    new-instance v3, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-class v4, Lcom/audible/mobile/domain/ProductId;

    invoke-direct {v3, v5, v4}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 30
    new-instance v3, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-class v4, Lcom/audible/mobile/domain/ACR;

    const-string v5, "ACR"

    invoke-direct {v3, v5, v4}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ACR_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 32
    new-instance v3, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-class v4, Landroid/net/Uri;

    const-string v5, "Uri"

    invoke-direct {v3, v5, v4}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 37
    new-instance v3, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-class v4, Landroid/net/Uri;

    const-string v5, "File"

    invoke-direct {v3, v5, v4}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 39
    new-instance v3, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-string v4, "ErrorSource"

    invoke-direct {v3, v4, v2}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ERROR_SOURCE_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 41
    new-instance v3, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-string v4, "ErrorMessage"

    invoke-direct {v3, v4, v2}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ERROR_MESSAGE_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 43
    new-instance v3, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-string v4, "ErrorCode"

    invoke-direct {v3, v4, v2}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ERROR_CODE_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 45
    new-instance v3, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-class v4, Lcom/audible/mobile/identity/Marketplace;

    const-string v5, "Marketplace"

    invoke-direct {v3, v5, v4}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 47
    new-instance v3, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-class v4, Lcom/audible/mobile/player/AudioDataSourceType;

    const-string v5, "AudioDataSourceType"

    invoke-direct {v3, v5, v4}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Lcom/audible/mobile/metric/domain/CommonDataTypes;->AUDIO_DATA_SOURCE_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 49
    new-instance v3, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-class v4, Lcom/audible/mobile/player/AudioDataSourceType;

    const-string v5, "PreviousAudioDataSourceType"

    invoke-direct {v3, v5, v4}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Lcom/audible/mobile/metric/domain/CommonDataTypes;->PREVIOUS_AUDIO_DATA_SOURCE_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 51
    new-instance v3, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-class v4, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

    const-string v5, "NetworkType"

    invoke-direct {v3, v5, v4}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Lcom/audible/mobile/metric/domain/CommonDataTypes;->NETWORK_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 53
    new-instance v3, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-class v4, Lcom/audible/mobile/domain/RequestId;

    const-string v5, "RequestId"

    invoke-direct {v3, v5, v4}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Lcom/audible/mobile/metric/domain/CommonDataTypes;->REQUEST_ID_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 58
    new-instance v3, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-string v4, "x-amzn-RequestId"

    invoke-direct {v3, v4, v2}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Lcom/audible/mobile/metric/domain/CommonDataTypes;->AMZN_REQUEST_ID_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 63
    new-instance v3, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-string v4, "X-Amz-Date"

    invoke-direct {v3, v4, v2}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Lcom/audible/mobile/metric/domain/CommonDataTypes;->AMZN_DATE_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 68
    new-instance v3, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-string v4, "x-amzn-ErrorType"

    invoke-direct {v3, v4, v2}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Lcom/audible/mobile/metric/domain/CommonDataTypes;->AMZN_ERROR_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 73
    new-instance v3, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-string v4, "ErrorReason"

    invoke-direct {v3, v4, v2}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Lcom/audible/mobile/metric/domain/CommonDataTypes;->ERROR_REASON_DATA_TYPE:Lcom/audible/mobile/metric/domain/DataType;

    .line 78
    new-instance v3, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-string v4, "NetworkSpeed"

    invoke-direct {v3, v4, v1}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Lcom/audible/mobile/metric/domain/CommonDataTypes;->NETWORK_SPEED:Lcom/audible/mobile/metric/domain/DataType;

    .line 83
    new-instance v3, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-class v4, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const-string v5, "NetworkSpeedRange"

    invoke-direct {v3, v5, v4}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Lcom/audible/mobile/metric/domain/CommonDataTypes;->NETWORK_SPEED_RANGE:Lcom/audible/mobile/metric/domain/DataType;

    .line 88
    new-instance v3, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-string v4, "StackTrace"

    invoke-direct {v3, v4, v2}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v3, Lcom/audible/mobile/metric/domain/CommonDataTypes;->STACK_TRACE:Lcom/audible/mobile/metric/domain/DataType;

    .line 93
    new-instance v3, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-string v4, "trackType"

    invoke-direct {v3, v4, v0}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 98
    new-instance v3, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-string v4, "TrackSelectionReason"

    invoke-direct {v3, v4, v0}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 103
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-string v3, "MediaTimeMs"

    invoke-direct {v0, v3, v1}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 108
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-string v3, "codec"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 113
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-string v3, "MediaBitRate"

    invoke-direct {v0, v3, v1}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 118
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-class v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const-string v3, "MediaBitRateRange"

    invoke-direct {v0, v3, v1}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 123
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-string v1, "TrackFormat"

    invoke-direct {v0, v1, v2}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 128
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;

    const-string v1, "CollectionId"

    invoke-direct {v0, v1, v2}, Lcom/audible/mobile/metric/domain/impl/ImmutableDataTypeImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
