.class Lcom/amazon/device/sync/rpc/SyncCallMetadata;
.super Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;
.source "SyncCallMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata<",
        "TResponseType;>;"
    }
.end annotation


# static fields
.field public static final CREATE_DATASET:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo<",
            "Lcom/amazon/whispersync/CreateDatasetResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final DELETE_ALL_DATASETS:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo<",
            "Lcom/amazon/whispersync/DeleteDirectoryResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final DELETE_DATASET:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo<",
            "Lcom/amazon/whispersync/DeleteDatasetResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final GET_DATASET:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo<",
            "Lcom/amazon/whispersync/GetDatasetResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final GET_DIRECTORY:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo<",
            "Lcom/amazon/whispersync/GetDirectoryResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final GET_RECORDS:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo<",
            "Lcom/amazon/whispersync/GetRecordsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final IGNORED_REASON:Ljava/lang/String; = "Unknown"

.field public static final POST_DIRECTORY_SUBSCRIPTION:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo<",
            "Lcom/amazon/whispersync/PostDirectorySubscriptionResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final POST_UPDATES:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo<",
            "Lcom/amazon/whispersync/PostUpdatesResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYNC_BASE_URI:Lcom/amazon/whispersync/dcp/settings/SettingString;


# instance fields
.field private final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInfo:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo<",
            "TResponseType;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 32
    new-instance v0, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    const-class v1, Lcom/amazon/whispersync/CreateDatasetResponse;

    const-string v2, "POST"

    const-string v3, "CreateDataset"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->CREATE_DATASET:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    .line 34
    new-instance v0, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    const-class v1, Lcom/amazon/whispersync/GetDatasetResponse;

    const-string v3, "GET"

    const-string v4, "GetDataset"

    invoke-direct {v0, v4, v3, v1}, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->GET_DATASET:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    .line 36
    new-instance v0, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    const-class v1, Lcom/amazon/whispersync/GetDirectoryResponse;

    const-string v4, "GetDirectory"

    invoke-direct {v0, v4, v3, v1}, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->GET_DIRECTORY:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    .line 38
    new-instance v0, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    const-class v1, Lcom/amazon/whispersync/GetRecordsResponse;

    const-string v4, "GetRecords"

    invoke-direct {v0, v4, v3, v1}, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->GET_RECORDS:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    .line 40
    new-instance v0, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    const-class v1, Lcom/amazon/whispersync/PostUpdatesResponse;

    const-string v3, "PostUpdates"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->POST_UPDATES:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    .line 42
    new-instance v0, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    const-string v1, "DELETE"

    const/4 v3, 0x0

    const-string v4, "SyncDeleteDataset"

    invoke-direct {v0, v4, v1, v3}, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->DELETE_DATASET:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    .line 44
    new-instance v0, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    const-string v4, "PostDirectorySubscription"

    invoke-direct {v0, v4, v2, v3}, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->POST_DIRECTORY_SUBSCRIPTION:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    .line 46
    new-instance v0, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    const-string v2, "SyncDeleteAllDatasets"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->DELETE_ALL_DATASETS:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    .line 49
    new-instance v0, Lcom/amazon/whispersync/dcp/settings/SettingString;

    sget-object v1, Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;->DeviceGlobal:Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;

    const-string v2, "com.amazon.device.sync.SYNC_BASE_URI"

    const-string v3, "https://api.amazon.com"

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/whispersync/dcp/settings/SettingString;-><init>(Lcom/amazon/whispersync/dcp/settings/SettingsNamespace;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->SYNC_BASE_URI:Lcom/amazon/whispersync/dcp/settings/SettingString;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo<",
            "TResponseType;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->mHeaders:Ljava/util/Map;

    .line 61
    iput-object p1, p0, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->mInfo:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    const-string p1, "Content-Type"

    const-string v1, "application/json"

    .line 62
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 65
    iget-object p1, p0, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->mHeaders:Ljava/util/Map;

    const-string v0, "X-WSync-SubscriberId"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p1, "Unknown"

    .line 67
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 69
    iget-object p1, p0, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->mHeaders:Ljava/util/Map;

    const-string p2, "X-ADP-Reason"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p4, :cond_2

    .line 73
    iget-object p1, p0, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->mHeaders:Ljava/util/Map;

    const-string p2, "X-WSync-ConsumerId"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public static constructInstance(Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/rpc/SyncCallMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RespType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo<",
            "TRespType;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/device/sync/rpc/SyncCallMetadata<",
            "TRespType;>;"
        }
    .end annotation

    const-string v0, "Unknown"

    .line 94
    invoke-static {p0, p1, v0, p2}, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->constructInstance(Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/rpc/SyncCallMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static constructInstance(Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/rpc/SyncCallMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RespType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo<",
            "TRespType;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/device/sync/rpc/SyncCallMetadata<",
            "TRespType;>;"
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/amazon/device/sync/rpc/SyncCallMetadata;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/device/sync/rpc/SyncCallMetadata;-><init>(Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public allowAnonymousCall()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthType()Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;
    .locals 1

    .line 125
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;->ADPAuthenticator:Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthType;

    return-object v0
.end method

.method public getBaseUri()Ljava/net/URI;
    .locals 1

    .line 107
    sget-object v0, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->SYNC_BASE_URI:Lcom/amazon/whispersync/dcp/settings/SettingString;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/settings/SettingString;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/URIHelpers;->parse(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public getDispatcher()Lcom/amazon/whispersync/dcp/framework/webrpc/TransportHelper;
    .locals 1

    .line 167
    invoke-static {}, Lcom/amazon/device/sync/SyncInit;->getTransportHelper()Lcom/amazon/whispersync/dcp/framework/webrpc/TransportHelper;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->mHeaders:Ljava/util/Map;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-static {v1, v2}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Date"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->mInfo:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    invoke-static {v0}, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;->access$000(Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestMethod()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->mInfo:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    invoke-static {v0}, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;->access$100(Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TResponseType;>;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/amazon/device/sync/rpc/SyncCallMetadata;->mInfo:Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;

    invoke-static {v0}, Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;->access$200(Lcom/amazon/device/sync/rpc/SyncCallMetadata$SyncCallMetadataInfo;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public isCompressionEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSuccessfulResponseCode(I)Z
    .locals 1

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x190

    if-ge p1, v0, :cond_0

    const/16 v0, 0x133

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
