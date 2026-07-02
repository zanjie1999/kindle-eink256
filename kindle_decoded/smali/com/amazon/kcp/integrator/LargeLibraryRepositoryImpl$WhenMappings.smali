.class public final synthetic Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I

.field public static final synthetic $EnumSwitchMapping$4:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/amazon/kcp/library/models/BookType;->values()[Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_SERIES_GROUP:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_PERIODICAL_GROUP:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    invoke-static {}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->values()[Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGIN:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->values()[Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->CANCEL:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->QUEUED:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->DOWNLOADING:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x4

    aput v4, v0, v1

    sget-object v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->SUCCEEDED_INCOMPLETE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x5

    aput v4, v0, v1

    sget-object v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->SUCCEEDED:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x6

    aput v4, v0, v1

    sget-object v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->ERROR_OPENABLE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x7

    aput v4, v0, v1

    sget-object v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->ERROR:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v4, 0x8

    aput v4, v0, v1

    invoke-static {}, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->values()[Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_ACCESSED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_CLOSED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;->values()[Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;->FTUE_PHASE_TWO_METADATA_PARSE_START:Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kcp/integrator/LargeLibraryRepositoryImpl$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;->METADATA_PARSE_END:Lcom/amazon/kindle/webservices/SyncMetadataParseEvent$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    return-void
.end method
