.class public final synthetic Lcom/amazon/kindle/download/assets/DownloadRequestGroup$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 7

    invoke-static {}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->values()[Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->SUCCEEDED:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    invoke-static {}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->values()[Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->ERROR_OPENABLE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->ERROR:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->SUCCEEDED_INCOMPLETE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sget-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->SUCCEEDED:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v6, 0x5

    aput v6, v0, v1

    invoke-static {}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->values()[Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->ERROR:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->SUCCEEDED:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->SUCCEEDED_INCOMPLETE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    invoke-static {}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->values()[Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->DOWNLOADING:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->ERROR:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->SUCCEEDED_INCOMPLETE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->SUCCEEDED:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->ERROR_OPENABLE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1

    return-void
.end method
