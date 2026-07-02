.class public Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;
.super Ljava/lang/Object;
.source "AssetStateManagerDAO.java"


# static fields
.field private static final DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

.field private static final TAG:Ljava/lang/String;

.field private static assetStateCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/services/download/AssetState;",
            ">;>;"
        }
    .end annotation
.end field

.field private static krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;


# instance fields
.field private final dbHelper:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    const-class v0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;

    invoke-static {v0}, Lcom/amazon/kindle/services/download/DownloadUtils;->getDownloadModuleTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;

    const-string v1, "AssetStateManager"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$DOWNLOAD_SYSTEM;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/download/assets/AssetStateDBHelper;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->dbHelper:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    .line 66
    sput-object p2, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    .line 67
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    sput-object p1, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->assetStateCache:Ljava/util/Hashtable;

    return-void
.end method

.method static createAsset(Landroid/database/Cursor;)Lcom/amazon/kindle/services/download/IBookAsset;
    .locals 10

    const-string v0, "book_id"

    .line 957
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 958
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 959
    invoke-static {v0}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    const-string v0, "asset_id"

    .line 961
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 962
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 964
    sget-object v0, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_FILENAME:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {v0}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 965
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "authentication"

    .line 968
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 969
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "authentication_type"

    .line 972
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 973
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, "url"

    .line 977
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 979
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v1

    goto :goto_0

    .line 981
    :catch_0
    sget-object v1, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to parse URI for "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v6, v0

    :goto_0
    const-string v0, "priority_id"

    .line 986
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 987
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 988
    invoke-static {v0}, Lcom/amazon/kindle/services/download/AssetPriority;->getFromSerialized(I)Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object v9

    .line 990
    new-instance v0, Lcom/amazon/kindle/download/assets/BookAsset;

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getFileConnectionFactory()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v2

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/amazon/kindle/download/assets/BookAsset;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetPriority;)V

    const-string v1, "total_size"

    .line 994
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 995
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/services/download/IBookAsset;->setSize(J)V

    const-string v1, "download_state"

    .line 998
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 999
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1000
    invoke-static {v1}, Lcom/amazon/kindle/services/download/AssetState;->getFromSerialized(I)Lcom/amazon/kindle/services/download/AssetState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/download/IBookAsset;->setState(Lcom/amazon/kindle/services/download/AssetState;)V

    const-string v1, "asset_type"

    .line 1003
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1004
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1005
    invoke-static {v1}, Lcom/amazon/kindle/services/download/AssetType$ExtensibleAssetTypeFactory;->getType(Ljava/lang/String;)Lcom/amazon/kindle/services/download/AssetType;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/download/IBookAsset;->setAssetType(Lcom/amazon/kindle/services/download/AssetType;)V

    const-string v1, "sidecars"

    .line 1007
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1008
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1010
    invoke-interface {v0, v3}, Lcom/amazon/kindle/services/download/IBookAsset;->setHasAnnotationSidecar(Z)V

    :cond_0
    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 1014
    invoke-interface {v0, v3}, Lcom/amazon/kindle/services/download/IBookAsset;->setHasApnxSidecar(Z)V

    :cond_1
    const-string v1, "apnx_url"

    .line 1017
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1018
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1019
    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/download/IBookAsset;->setApnxUrl(Ljava/lang/String;)V

    const-string v1, "mime_type"

    .line 1021
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1023
    :try_start_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/download/IBookAsset;->setMimeType(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-string v1, "delivery_type"

    .line 1028
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1029
    invoke-static {}, Lcom/amazon/kindle/services/download/AssetDeliveryType;->values()[Lcom/amazon/kindle/services/download/AssetDeliveryType;

    move-result-object v2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    aget-object p0, v2, p0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/services/download/IBookAsset;->setDeliveryType(Lcom/amazon/kindle/services/download/AssetDeliveryType;)V

    return-object v0
.end method

.method private createGroupProperties(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/download/assets/AssetField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 334
    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->BOOK_ID:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 335
    sget-object v2, Lcom/amazon/kindle/download/assets/AssetField;->BOOK_ID:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->CONTENT_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 338
    sget-object v2, Lcom/amazon/kindle/download/assets/AssetField;->CONTENT_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->REVISION:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 341
    sget-object v2, Lcom/amazon/kindle/download/assets/AssetField;->REVISION:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSET_GROUPS_GROUP_CONTEXT:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 344
    sget-object v2, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSET_GROUPS_GROUP_CONTEXT:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSET_GROUPS_CORRELATIONID:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 347
    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSET_GROUPS_CORRELATIONID:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getUtcTime()J
    .locals 2

    const-string v0, "UTC"

    .line 1173
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 1174
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 1175
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private static persistAsset(Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kindle/services/download/IBookAsset;)Z
    .locals 4

    .line 197
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 198
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "book_id"

    .line 199
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "asset_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getOriginalUriString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAuthentication()Ljava/lang/String;

    move-result-object v1

    const-string v2, "authentication"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAuthenticationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "authentication_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getPriority()Lcom/amazon/kindle/services/download/AssetPriority;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/services/download/AssetPriority;->getSerializedForm()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "priority_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "total_size"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 206
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getState()Lcom/amazon/kindle/services/download/AssetState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/services/download/AssetState;->getSerializedForm()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "download_state"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetType()Lcom/amazon/kindle/services/download/AssetType;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/AssetType;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    const-string v2, "asset_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_TYPE_CONTEXT:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getResourceContext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_FILENAME:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_DELIVERY_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getDeliveryType()Lcom/amazon/kindle/services/download/AssetDeliveryType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_MIME_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    const-string v2, "Assets"

    .line 215
    invoke-virtual {p0, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 218
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getState()Lcom/amazon/kindle/services/download/AssetState;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->updateAssetStateCache(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetState;)V

    :cond_2
    return p0
.end method

.method private static updateAssetStateCache(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetState;)V
    .locals 1

    if-nez p1, :cond_0

    .line 102
    sget-object p0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->TAG:Ljava/lang/String;

    const-string p1, "asset id was null when adding to cache, not adding to cache"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 107
    sget-object p0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->TAG:Ljava/lang/String;

    const-string p1, "asset state was null when adding to cache, not adding to cache"

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 111
    :cond_1
    sget-object v0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->assetStateCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 115
    :cond_2
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 116
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object p1, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->assetStateCache:Ljava/util/Hashtable;

    invoke-virtual {p1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method addAssets(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 166
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_3

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->dbHelper:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 174
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 175
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/services/download/IBookAsset;

    .line 176
    invoke-static {v1, v4}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->persistAsset(Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kindle/services/download/IBookAsset;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v5, :cond_1

    .line 179
    sget-object p1, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persistence failed for bookId = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " \'s assetId = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-interface {v4}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-static {p1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 185
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v0, v3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 188
    :try_start_1
    sget-object v2, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->TAG:Ljava/lang/String;

    const-string v3, "Failed to insert assets"

    invoke-static {v2, v3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_1
    return v0

    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 192
    throw p1

    .line 167
    :cond_5
    :goto_3
    sget-object p1, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->TAG:Ljava/lang/String;

    const-string v1, "AssetStateManagerDAO.addAssets() called with null or empty assets, doing nothing"

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public addGroup(Lcom/amazon/kindle/services/download/IAssetGroup;)Z
    .locals 9

    const-string v0, "Failed to add asset group"

    .line 225
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->dbHelper:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    .line 228
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 230
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 231
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    const-string v5, "book_id"

    .line 232
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "content_type"

    .line 233
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "revision"

    .line 234
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getRevision()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-object v4, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSET_GROUPS_GROUP_CONTEXT:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {v4}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getGroupContext()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "source"

    .line 236
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getSource()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "downloadPath"

    .line 237
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->downloadPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "mainContentFileName"

    .line 238
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getMaincontentFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "correlationId"

    .line 239
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getCorrelationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "downloadStartTime"

    .line 240
    invoke-direct {p0}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->getUtcTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 242
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getExcludedTransportMethod()Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "excludedTransportMethods"

    .line 245
    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v4, "downloadCompleteEventWasSent"

    .line 249
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getDownloadCompleteEventWasSent()Z

    move-result v5

    invoke-static {v5}, Lcom/amazon/kindle/util/DbUtils;->booleanToInt(Z)I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 248
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "AssetGroups"

    const/4 v5, 0x0

    const/4 v6, 0x5

    .line 251
    invoke-virtual {v1, v4, v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    cmp-long v8, v3, v5

    if-lez v8, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 257
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getAssets()Ljava/util/Collection;

    move-result-object p1

    .line 258
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/services/download/IBookAsset;

    .line 259
    invoke-static {v1, v4}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->persistAsset(Landroid/database/sqlite/SQLiteDatabase;Lcom/amazon/kindle/services/download/IBookAsset;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-nez v5, :cond_2

    .line 264
    sget-object p1, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "persistence failed for bookId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " \'s assetId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-interface {v4}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 264
    invoke-static {p1, v4}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v3, :cond_5

    .line 271
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_5
    invoke-static {v1}, Lcom/amazon/kindle/util/DbUtils;->endTransactionQuietly(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 275
    :try_start_1
    sget-object v3, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->TAG:Ljava/lang/String;

    const-string v4, "Failed to insert assets"

    invoke-static {v3, v4, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    invoke-static {v1}, Lcom/amazon/kindle/util/DbUtils;->endTransactionQuietly(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 279
    :goto_2
    sget-object p1, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return v2

    .line 278
    :goto_4
    invoke-static {v1}, Lcom/amazon/kindle/util/DbUtils;->endTransactionQuietly(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 279
    sget-object v1, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_8
    throw p1
.end method

.method clearAssetStateCache(Lcom/amazon/kindle/model/content/IBookID;)V
    .locals 1

    .line 79
    sget-object v0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->assetStateCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method deleteAssets(Lcom/amazon/kindle/model/content/IBookID;)I
    .locals 5

    .line 791
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->dbHelper:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "book_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 794
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 797
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 799
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->clearAssetStateCache(Lcom/amazon/kindle/model/content/IBookID;)V

    const-string v3, "AssetGroups"

    .line 800
    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 803
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 805
    :catch_0
    :try_start_1
    sget-object v1, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete assets for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 805
    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return v4

    .line 808
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 809
    throw p1
.end method

.method deleteAssets(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 861
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    .line 867
    :cond_0
    iget-object v1, p0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->dbHelper:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 870
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 871
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/model/content/IBookID;

    .line 872
    invoke-interface {v3}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    invoke-virtual {p0, v3}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->clearAssetStateCache(Lcom/amazon/kindle/model/content/IBookID;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const-string v3, "book_id"

    .line 880
    invoke-static {v2, p1, p1, v3, p1}, Lcom/amazon/kindle/db/Batch;->generateBatches(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 882
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/db/Batch;

    .line 883
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v3, "AssetGroups"

    .line 885
    invoke-virtual {v2}, Lcom/amazon/kindle/db/Batch;->getWhereClause()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/amazon/kindle/db/Batch;->getBindArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 886
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 888
    :catch_0
    :try_start_1
    sget-object v2, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->TAG:Ljava/lang/String;

    const-string v3, "Failed to delete asset batch"

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 890
    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :goto_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 891
    throw p1

    :cond_2
    :goto_4
    return v0
.end method

.method getAsset(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/services/download/IBookAsset;
    .locals 9
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    const-string v3, "asset_id=? AND book_id=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 393
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 395
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->dbHelper:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v8, 0x0

    :try_start_0
    const-string v1, "Assets"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 398
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 407
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    invoke-static {v0}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->createAsset(Landroid/database/Cursor;)Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v8

    goto :goto_0

    .line 410
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get asset for IBookID, assetID: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 416
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v8

    :catchall_0
    move-exception p1

    move-object v8, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 418
    :cond_2
    throw p1
.end method

.method getAssetGroup(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
    .locals 43

    move-object/from16 v1, p0

    const-string v0, "correlationId"

    const-string v2, "mainContentFileName"

    const-string v3, "downloadPath"

    const-string v4, "source"

    const-string v8, "book_id=?"

    const/4 v13, 0x1

    new-array v9, v13, [Ljava/lang/String;

    .line 595
    invoke-interface/range {p2 .. p2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x0

    aput-object v5, v9, v14

    .line 596
    iget-object v5, v1, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->dbHelper:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const/4 v15, 0x0

    :try_start_0
    const-string v6, "AssetGroups"

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 599
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 607
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v6, :cond_1

    .line 608
    :try_start_2
    sget-object v0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->TAG:Ljava/lang/String;

    const-string v2, "empty cursor for a requested group. Returning null"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_0

    .line 720
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v15

    :catchall_0
    move-exception v0

    move-object v15, v5

    goto/16 :goto_8

    :cond_1
    :try_start_3
    const-string v6, "book_id"

    .line 612
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 613
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 614
    invoke-static {v6}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v7

    move-object/from16 v8, p1

    .line 617
    invoke-interface {v8, v6}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getContentMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-nez v8, :cond_3

    .line 619
    :try_start_4
    sget-object v0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BookID present in Assets db but not in main db. id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " returning null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_2

    .line 720
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v15

    .line 623
    :cond_3
    :try_start_5
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->isDownloadedFromRemoteTodo()Z

    move-result v6

    .line 624
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->hasMultimediaContent()Z

    move-result v29

    const-string v8, "revision"

    .line 626
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 628
    sget-object v9, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSET_GROUPS_GROUP_CONTEXT:Lcom/amazon/kindle/download/assets/AssetField;

    .line 629
    invoke-virtual {v9}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 628
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 632
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 631
    invoke-interface {v5, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object/from16 v18, v15

    goto :goto_0

    .line 633
    :cond_4
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v4

    .line 636
    :goto_0
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 635
    invoke-interface {v5, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v19, v15

    goto :goto_1

    .line 637
    :cond_5
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v19, v3

    .line 641
    :goto_1
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 640
    invoke-interface {v5, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    .line 644
    :cond_6
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 643
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 646
    :goto_2
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 645
    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_3
    move-object/from16 v23, v15

    goto :goto_4

    .line 649
    :cond_7
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 648
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    :goto_4
    const-string v0, "downloadStartTime"

    .line 651
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v0, "requiredDownloadFinishTime"

    .line 652
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string v0, "optionalDownloadFinishTime"

    .line 653
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const-string v0, "deferredDownloadFinishTime"

    .line 654
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move-object/from16 p1, v8

    move-object v12, v9

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v0, "preferredDownloadFinishTime"

    .line 655
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v15, "deferredDownloadTotalBytes"

    .line 657
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v6

    move-object/from16 v17, v7

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v15, "deferredDownloadWanBytes"

    .line 659
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-wide/from16 v20, v6

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v15, "preferredDownloadTotalBytes"

    .line 660
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-wide/from16 v24, v6

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v15, "preferredDownloadWanBytes"

    .line 661
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-wide/from16 v26, v6

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v15, "optionalDownloadTotalBytes"

    .line 662
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-wide/from16 v30, v6

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v15, "optionalDownloadWanBytes"

    .line 663
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-wide/from16 v32, v6

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v15, "requiredDownloadTotalBytes"

    .line 664
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-wide/from16 v34, v6

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v15, "requiredDownloadWanBytes"

    .line 665
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-wide/from16 v36, v6

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v15, "totalDownloadedBytes"

    .line 667
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-wide/from16 v38, v6

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v15, "wanDownloadedBytes"

    .line 668
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    move-wide/from16 v40, v6

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v15, "excludedTransportMethods"

    .line 670
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 669
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;->getTransportMethod(Ljava/lang/String;)Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    move-result-object v15

    const-string v4, "downloadCompleteEventWasSent"

    .line 672
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 671
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/amazon/kindle/util/DbUtils;->intToBoolean(I)Z

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v42, v5

    .line 675
    :try_start_7
    new-instance v5, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    invoke-direct {v5}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;-><init>()V

    .line 677
    invoke-virtual {v5, v2, v3}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->setDownloadStartTime(J)V

    .line 679
    invoke-virtual {v5, v10, v11}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->setRequiredEndTime(J)V

    .line 680
    invoke-virtual {v5, v13, v14}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->setOptionalEndTime(J)V

    .line 681
    invoke-virtual {v5, v8, v9}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->setDeferredEndTime(J)V

    .line 682
    invoke-virtual {v5, v0, v1}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->setPreferredEndTime(J)V

    move-wide/from16 v0, v36

    .line 684
    invoke-virtual {v5, v0, v1}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->setRequiredDownloadTotalBytes(J)V

    move-wide/from16 v0, v38

    .line 685
    invoke-virtual {v5, v0, v1}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->setRequiredDownloadWanBytes(J)V

    move-wide/from16 v0, v20

    .line 687
    invoke-virtual {v5, v0, v1}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->setDeferredDownloadTotalBytes(J)V

    move-wide/from16 v0, v24

    .line 688
    invoke-virtual {v5, v0, v1}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->setDeferredDownloadWanBytes(J)V

    move-wide/from16 v0, v26

    .line 690
    invoke-virtual {v5, v0, v1}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->setPreferredDownloadTotalBytes(J)V

    move-wide/from16 v0, v30

    .line 691
    invoke-virtual {v5, v0, v1}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->setPreferredDownloadWanBytes(J)V

    move-wide/from16 v0, v32

    .line 693
    invoke-virtual {v5, v0, v1}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->setOptionalDownloadTotalBytes(J)V

    move-wide/from16 v0, v34

    .line 694
    invoke-virtual {v5, v0, v1}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->setOptionalDownloadWanBytes(J)V

    move-wide/from16 v0, v40

    .line 696
    invoke-virtual {v5, v0, v1}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->setTotalBytes(J)V

    .line 697
    invoke-virtual {v5, v6, v7}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->setWanBytes(J)V

    .line 699
    new-instance v0, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    .line 703
    :try_start_8
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->getAssets(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/List;

    move-result-object v20

    const/16 v21, 0x0

    if-nez v16, :cond_8

    const/16 v22, 0x1

    goto :goto_5

    :cond_8
    const/16 v22, 0x0

    :goto_5
    const/16 v24, 0x0

    sget-object v28, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v25, v5

    move-object/from16 v26, v15

    move/from16 v27, v4

    invoke-direct/range {v16 .. v29}, Lcom/amazon/kindle/download/assets/DownloadRequestGroup;-><init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Lcom/amazon/kindle/services/download/IDownloadTracker;ZLjava/lang/String;Ljava/util/Map;Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;ZLcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;Z)V

    .line 714
    invoke-interface {v0, v12}, Lcom/amazon/kindle/services/download/IAssetGroup;->setGroupContext(Ljava/lang/String;)V

    move-object/from16 v2, p1

    .line 715
    invoke-interface {v0, v2}, Lcom/amazon/kindle/services/download/IAssetGroup;->setRevision(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v42, :cond_9

    .line 720
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_6

    :catchall_4
    move-exception v0

    :goto_6
    move-object/from16 v42, v5

    :goto_7
    move-object/from16 v15, v42

    goto :goto_8

    :catchall_5
    move-exception v0

    :goto_8
    if-eqz v15, :cond_a

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 722
    :cond_a
    throw v0
.end method

.method getAssetGroupProperties(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ")",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/download/assets/AssetField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->BOOK_ID:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {v1}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    .line 356
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v6, v1

    .line 358
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->dbHelper:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    const-string v3, "AssetGroups"

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 362
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 370
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    invoke-direct {p0, v1}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->createGroupProperties(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 373
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get group properties for IBookID, ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    .line 379
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 381
    :cond_2
    throw p1
.end method

.method getAssetState(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/services/download/AssetState;
    .locals 11

    .line 903
    sget-object v0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->assetStateCache:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/download/AssetState;

    if-eqz v0, :cond_0

    return-object v0

    .line 911
    :cond_0
    sget-object v0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to find asset state in cache, retrieving from database:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->dbHelper:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v0, 0x2

    const/4 v9, 0x0

    :try_start_0
    new-array v5, v0, [Ljava/lang/String;

    .line 919
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    aput-object v0, v5, v10

    const/4 v0, 0x1

    aput-object p2, v5, v0

    const-string v2, "Assets"

    const-string v0, "download_state"

    .line 923
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "book_id=? AND asset_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 933
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 935
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/amazon/kindle/services/download/AssetState;->getFromSerialized(I)Lcom/amazon/kindle/services/download/AssetState;

    move-result-object v9

    .line 937
    :cond_1
    invoke-static {p1, p2, v9}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->updateAssetStateCache(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 941
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v9

    :catchall_0
    move-exception p1

    move-object v9, v0

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 943
    :cond_3
    throw p1
.end method

.method getAssets(Lcom/amazon/kindle/model/content/IBookID;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 464
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->getAssets(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method getAssets(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/EnumSet;Ljava/util/EnumSet;Ljava/util/Set;)Ljava/util/List;
    .locals 10
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/services/download/AssetState;",
            ">;",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/kindle/services/download/AssetPriority;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/amazon/kindle/services/download/AssetType;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;"
        }
    .end annotation

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "book_id"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 484
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    const-string v2, ",?"

    const-string v3, "?"

    const-string v4, ")"

    const/4 v5, 0x0

    const-string v6, " IN ("

    const-string v7, " AND "

    if-eqz p2, :cond_2

    .line 486
    invoke-virtual {p2}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 487
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "download_state"

    .line 488
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {p2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v8, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/kindle/services/download/AssetState;

    if-eqz v8, :cond_0

    move-object v8, v2

    goto :goto_1

    :cond_0
    move-object v8, v3

    .line 492
    :goto_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v9}, Lcom/amazon/kindle/services/download/AssetState;->getSerializedForm()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    goto :goto_0

    .line 496
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p3, :cond_5

    .line 499
    invoke-virtual {p3}, Ljava/util/EnumSet;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 500
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "priority_id"

    .line 501
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {p3}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/kindle/services/download/AssetPriority;

    if-eqz p3, :cond_3

    move-object p3, v2

    goto :goto_3

    :cond_3
    move-object p3, v3

    .line 505
    :goto_3
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v8}, Lcom/amazon/kindle/services/download/AssetPriority;->getSerializedForm()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p3, 0x1

    goto :goto_2

    .line 509
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz p4, :cond_8

    .line 512
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    .line 513
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "asset_type"

    .line 514
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/services/download/AssetType;

    if-eqz v5, :cond_6

    move-object p4, v2

    goto :goto_5

    :cond_6
    move-object p4, v3

    .line 518
    :goto_5
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-interface {p3}, Lcom/amazon/kindle/services/download/AssetType;->getSerializedForm()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_4

    .line 522
    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :cond_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 526
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, [Ljava/lang/String;

    .line 527
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->dbHelper:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 p1, 0x0

    :try_start_0
    const-string v2, "Assets"

    const/4 v3, 0x0

    .line 532
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 530
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 538
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 539
    :goto_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 540
    invoke-static {p1}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->createAsset(Landroid/database/Cursor;)Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :cond_9
    if-eqz p1, :cond_a

    .line 545
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_a
    return-object p2

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 547
    :cond_b
    throw p2
.end method

.method getAssetsForAssetIds(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/services/download/IBookAsset;",
            ">;"
        }
    .end annotation

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND "

    .line 431
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "book_id"

    .line 432
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "= ?"

    .line 433
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 436
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "asset_id"

    .line 435
    invoke-static {p2, v2, p1, v3, v1}, Lcom/amazon/kindle/db/Batch;->generateBatches(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 438
    iget-object p2, p0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->dbHelper:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 439
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/db/Batch;

    const/4 v9, 0x0

    :try_start_0
    const-string v2, "Assets"

    const/4 v3, 0x0

    .line 442
    invoke-virtual {v1}, Lcom/amazon/kindle/db/Batch;->getWhereClause()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazon/kindle/db/Batch;->getBindArgs()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 443
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    invoke-static {v9}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->createAsset(Landroid/database/Cursor;)Lcom/amazon/kindle/services/download/IBookAsset;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    if-eqz v9, :cond_0

    .line 448
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 450
    :cond_2
    throw p1

    :cond_3
    return-object v0
.end method

.method getBookIdForMainContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->ASSET_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "=? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_FILENAME:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    .line 559
    sget-object v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->MAIN_CONTENT:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v6, v1

    const/4 v0, 0x1

    aput-object p1, v6, v0

    new-array v4, v0, [Ljava/lang/String;

    .line 560
    sget-object p1, Lcom/amazon/kindle/download/assets/AssetField;->BOOK_ID:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    .line 562
    iget-object p1, p0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->dbHelper:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 p1, 0x0

    :try_start_0
    const-string v3, "Assets"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 565
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 573
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    sget-object p1, Lcom/amazon/kindle/download/assets/AssetField;->BOOK_ID:Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/assets/AssetField;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    .line 578
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 580
    :cond_2
    throw p1
.end method

.method getLocalContentSize(Ljava/lang/String;)J
    .locals 9

    .line 1082
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->dbHelper:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT SUM(total_size) FROM Assets WHERE book_id=? AND download_state=?"

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v2, v6

    const/4 p1, 0x1

    .line 1091
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/amazon/kindle/services/download/AssetState;->LOCAL:Lcom/amazon/kindle/services/download/AssetState;

    .line 1092
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, p1

    .line 1091
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1094
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1095
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v3, v0

    :cond_0
    if-eqz v5, :cond_2

    .line 1101
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1103
    :cond_1
    throw p1

    :catch_0
    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-wide v3
.end method

.method updateAsset(Lcom/amazon/kindle/services/download/IBookAsset;Lcom/amazon/kindle/download/assets/AssetStateContentValues;)Z
    .locals 8
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;,
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskWriteViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    const-string v0, "download_state"

    .line 1042
    invoke-virtual {p2}, Lcom/amazon/kindle/download/assets/AssetStateContentValues;->getValues()Landroid/content/ContentValues;

    move-result-object p2

    .line 1044
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    .line 1045
    sget-object p1, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->TAG:Ljava/lang/String;

    const-string p2, "Parsing of passed in asset values failed in AssetStateManagerDAO.updateAsset. Passed in values were empty."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v1, -0x1

    .line 1051
    iget-object v4, p0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->dbHelper:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1052
    iget-object v5, p0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->dbHelper:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    invoke-virtual {v5, v4}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v5, "asset_id=? AND book_id=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    .line 1057
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "Assets"

    .line 1058
    invoke-virtual {v4, v7, p2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1060
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1061
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v5

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/services/download/AssetState;

    invoke-static {v5, v6, p2}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->updateAssetStateCache(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetState;)V

    .line 1064
    :cond_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1070
    :goto_0
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    .line 1067
    :try_start_1
    sget-object v0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to update asset for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IBookAsset;->getAssetId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1067
    invoke-static {v0, p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    if-ne v1, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 1070
    :goto_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1071
    throw p1
.end method

.method updateAssetGroup(Lcom/amazon/kindle/services/download/IDownloadRequestGroup;)Z
    .locals 6

    .line 817
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->dbHelper:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 818
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    .line 819
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 821
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getDownloadStats()Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getRequiredEndTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "requiredDownloadFinishTime"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 822
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getDownloadStats()Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getOptionalEndTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "optionalDownloadFinishTime"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 823
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getDownloadStats()Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getDeferredEndTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "deferredDownloadFinishTime"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 824
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getDownloadStats()Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getPreferredEndTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "preferredDownloadFinishTime"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 825
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getDownloadStats()Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getDeferredDownloadTotalBytes()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "deferredDownloadTotalBytes"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 826
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getDownloadStats()Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getDeferredDownloadWanBytes()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "deferredDownloadWanBytes"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 827
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getDownloadStats()Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getPreferredDownloadTotalBytes()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "preferredDownloadTotalBytes"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 828
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getDownloadStats()Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getPreferredDownloadWanBytes()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "preferredDownloadWanBytes"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 829
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getDownloadStats()Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getOptionalDownloadTotalBytes()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "optionalDownloadTotalBytes"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 830
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getDownloadStats()Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getOptionalDownloadWanBytes()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "optionalDownloadWanBytes"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 831
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getDownloadStats()Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getRequiredDownloadTotalBytes()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "requiredDownloadTotalBytes"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 832
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getDownloadStats()Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getRequiredDownloadWanBytes()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "requiredDownloadWanBytes"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 833
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getDownloadStats()Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getTotalBytes()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "totalDownloadedBytes"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 834
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup;->getDownloadStats()Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/services/download/DownloadCompleteEventStats;->getWanBytes()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "wanDownloadedBytes"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 836
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IAssetGroup;->getDownloadCompleteEventWasSent()Z

    move-result p1

    invoke-static {p1}, Lcom/amazon/kindle/util/DbUtils;->booleanToInt(Z)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "downloadCompleteEventWasSent"

    .line 835
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 838
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "book_id like \'%"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%\'"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, -0x1

    .line 841
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v4, "AssetGroups"

    const/4 v5, 0x0

    .line 842
    invoke-virtual {v0, v4, v2, p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 843
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 845
    :try_start_1
    sget-object v2, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update asset group state for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    const/4 p1, 0x1

    if-ne v3, p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_2
    return p1

    .line 847
    :goto_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 848
    throw p1
.end method

.method updateAssetState(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetState;J)Z
    .locals 6
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;,
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskWriteViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->dbHelper:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 298
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 299
    invoke-virtual {p3}, Lcom/amazon/kindle/services/download/AssetState;->getSerializedForm()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "download_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string p5, "total_size"

    invoke-virtual {v1, p5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p4, "asset_id=? AND book_id=?"

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, p5, v2

    .line 305
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, p5, v4

    const/4 v3, -0x1

    .line 308
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v5, "Assets"

    .line 309
    invoke-virtual {v0, v5, v1, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 310
    invoke-static {p1, p2, p3}, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->updateAssetStateCache(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/services/download/AssetState;)V

    .line 311
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p3

    .line 313
    :try_start_1
    sget-object p4, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to update asset state for "

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 313
    invoke-static {p4, p1, p3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 316
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 317
    throw p1
.end method

.method updateGroupId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "book_id = ?"

    const-string v1, "book_id"

    const-string v2, "PRAGMA foreign_keys = ON;"

    .line 1142
    sget-object v3, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v7, 0x1

    aput-object p2, v5, v7

    const-string v8, "Updating group ID, oldId: %s, newId: %s"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    iget-object v3, p0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->dbHelper:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v5, "PRAGMA foreign_keys = OFF;"

    .line 1148
    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1150
    iget-object v5, p0, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->dbHelper:Lcom/amazon/kindle/download/assets/AssetStateDBHelper;

    invoke-virtual {v5, v3}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1152
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1153
    invoke-virtual {v5, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "AssetGroups"

    new-array v9, v7, [Ljava/lang/String;

    aput-object p1, v9, v6

    .line 1154
    invoke-virtual {v3, v8, v5, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1158
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 1159
    invoke-virtual {v5, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Assets"

    new-array v9, v7, [Ljava/lang/String;

    aput-object p1, v9, v6

    .line 1160
    invoke-virtual {v3, v1, v5, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1163
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1164
    sget-object v1, Lcom/amazon/kindle/download/assets/AssetStateManagerDAO;->TAG:Ljava/lang/String;

    const-string v5, "Updating group ID succeeded, oldId: %s, newId: %s, groupRowsAffected: %d, assetRowsAffected: %d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v6

    aput-object p2, v9, v7

    .line 1165
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v9, v4

    const/4 p1, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v9, p1

    .line 1164
    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1168
    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1167
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1168
    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1169
    throw p1
.end method
