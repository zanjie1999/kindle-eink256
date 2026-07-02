.class public final enum Lcom/amazon/kindle/download/assets/AssetField;
.super Ljava/lang/Enum;
.source "AssetField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/download/assets/AssetField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/download/assets/AssetField;

.field public static final enum ASSET_ID:Lcom/amazon/kindle/download/assets/AssetField;

.field public static final enum ASSET_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

.field public static final enum AUTH:Lcom/amazon/kindle/download/assets/AssetField;

.field public static final enum AUTH_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

.field public static final enum BOOK_ID:Lcom/amazon/kindle/download/assets/AssetField;

.field public static final enum COL_ASSETS_APNX_URL:Lcom/amazon/kindle/download/assets/AssetField;

.field public static final enum COL_ASSETS_DELIVERY_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

.field public static final enum COL_ASSETS_FILENAME:Lcom/amazon/kindle/download/assets/AssetField;

.field public static final enum COL_ASSETS_MIME_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

.field public static final enum COL_ASSETS_SIDECARS:Lcom/amazon/kindle/download/assets/AssetField;

.field public static final enum COL_ASSETS_TYPE_CONTEXT:Lcom/amazon/kindle/download/assets/AssetField;

.field public static final enum COL_ASSET_GROUPS_CORRELATIONID:Lcom/amazon/kindle/download/assets/AssetField;

.field public static final enum COL_ASSET_GROUPS_GROUP_CONTEXT:Lcom/amazon/kindle/download/assets/AssetField;

.field public static final enum CONTENT_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

.field public static final enum DOWNLOAD_STATE:Lcom/amazon/kindle/download/assets/AssetField;

.field public static final enum ERROR_ID:Lcom/amazon/kindle/download/assets/AssetField;

.field public static final enum PRIORITY_ID:Lcom/amazon/kindle/download/assets/AssetField;

.field public static final enum REVISION:Lcom/amazon/kindle/download/assets/AssetField;

.field public static final enum TOTAL_SIZE:Lcom/amazon/kindle/download/assets/AssetField;

.field public static final enum URL:Lcom/amazon/kindle/download/assets/AssetField;


# instance fields
.field private final columnName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 9
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetField;

    const/4 v1, 0x0

    const-string v2, "BOOK_ID"

    const-string v3, "book_id"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/download/assets/AssetField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetField;->BOOK_ID:Lcom/amazon/kindle/download/assets/AssetField;

    .line 10
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetField;

    const/4 v2, 0x1

    const-string v3, "ASSET_ID"

    const-string v4, "asset_id"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kindle/download/assets/AssetField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetField;->ASSET_ID:Lcom/amazon/kindle/download/assets/AssetField;

    .line 11
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetField;

    const/4 v3, 0x2

    const-string v4, "URL"

    const-string v5, "url"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kindle/download/assets/AssetField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetField;->URL:Lcom/amazon/kindle/download/assets/AssetField;

    .line 12
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetField;

    const/4 v4, 0x3

    const-string v5, "AUTH"

    const-string v6, "authentication"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kindle/download/assets/AssetField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetField;->AUTH:Lcom/amazon/kindle/download/assets/AssetField;

    .line 13
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetField;

    const/4 v5, 0x4

    const-string v6, "AUTH_TYPE"

    const-string v7, "authentication_type"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kindle/download/assets/AssetField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetField;->AUTH_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

    .line 14
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetField;

    const/4 v6, 0x5

    const-string v7, "TOTAL_SIZE"

    const-string v8, "total_size"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/kindle/download/assets/AssetField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetField;->TOTAL_SIZE:Lcom/amazon/kindle/download/assets/AssetField;

    .line 15
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetField;

    const/4 v7, 0x6

    const-string v8, "PRIORITY_ID"

    const-string v9, "priority_id"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/kindle/download/assets/AssetField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetField;->PRIORITY_ID:Lcom/amazon/kindle/download/assets/AssetField;

    .line 16
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetField;

    const/4 v8, 0x7

    const-string v9, "DOWNLOAD_STATE"

    const-string v10, "download_state"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/kindle/download/assets/AssetField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetField;->DOWNLOAD_STATE:Lcom/amazon/kindle/download/assets/AssetField;

    .line 17
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetField;

    const/16 v9, 0x8

    const-string v10, "ERROR_ID"

    const-string v11, "error_id"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/kindle/download/assets/AssetField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetField;->ERROR_ID:Lcom/amazon/kindle/download/assets/AssetField;

    .line 18
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetField;

    const/16 v10, 0x9

    const-string v11, "CONTENT_TYPE"

    const-string v12, "content_type"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/kindle/download/assets/AssetField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetField;->CONTENT_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

    .line 19
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetField;

    const/16 v11, 0xa

    const-string v12, "REVISION"

    const-string v13, "revision"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/kindle/download/assets/AssetField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetField;->REVISION:Lcom/amazon/kindle/download/assets/AssetField;

    .line 20
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetField;

    const/16 v12, 0xb

    const-string v13, "COL_ASSET_GROUPS_GROUP_CONTEXT"

    const-string v14, "group_context"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/kindle/download/assets/AssetField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSET_GROUPS_GROUP_CONTEXT:Lcom/amazon/kindle/download/assets/AssetField;

    .line 21
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetField;

    const/16 v13, 0xc

    const-string v14, "COL_ASSET_GROUPS_CORRELATIONID"

    const-string v15, "correlationId"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/kindle/download/assets/AssetField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSET_GROUPS_CORRELATIONID:Lcom/amazon/kindle/download/assets/AssetField;

    .line 22
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetField;

    const/16 v14, 0xd

    const-string v15, "COL_ASSETS_TYPE_CONTEXT"

    const-string v13, "resource_context"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/kindle/download/assets/AssetField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_TYPE_CONTEXT:Lcom/amazon/kindle/download/assets/AssetField;

    .line 23
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetField;

    const/16 v13, 0xe

    const-string v15, "ASSET_TYPE"

    const-string v14, "asset_type"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/kindle/download/assets/AssetField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetField;->ASSET_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

    .line 24
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetField;

    const/16 v14, 0xf

    const-string v15, "COL_ASSETS_FILENAME"

    const-string v13, "filename"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/kindle/download/assets/AssetField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_FILENAME:Lcom/amazon/kindle/download/assets/AssetField;

    .line 25
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetField;

    const/16 v13, 0x10

    const-string v15, "COL_ASSETS_SIDECARS"

    const-string v14, "sidecars"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/kindle/download/assets/AssetField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_SIDECARS:Lcom/amazon/kindle/download/assets/AssetField;

    .line 26
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetField;

    const/16 v14, 0x11

    const-string v15, "COL_ASSETS_APNX_URL"

    const-string v13, "apnx_url"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/kindle/download/assets/AssetField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_APNX_URL:Lcom/amazon/kindle/download/assets/AssetField;

    .line 27
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetField;

    const/16 v13, 0x12

    const-string v15, "COL_ASSETS_MIME_TYPE"

    const-string v14, "mime_type"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/kindle/download/assets/AssetField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_MIME_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

    .line 28
    new-instance v0, Lcom/amazon/kindle/download/assets/AssetField;

    const/16 v14, 0x13

    const-string v15, "COL_ASSETS_DELIVERY_TYPE"

    const-string v13, "delivery_type"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/kindle/download/assets/AssetField;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_DELIVERY_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

    const/16 v13, 0x14

    new-array v13, v13, [Lcom/amazon/kindle/download/assets/AssetField;

    .line 8
    sget-object v15, Lcom/amazon/kindle/download/assets/AssetField;->BOOK_ID:Lcom/amazon/kindle/download/assets/AssetField;

    aput-object v15, v13, v1

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->ASSET_ID:Lcom/amazon/kindle/download/assets/AssetField;

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->URL:Lcom/amazon/kindle/download/assets/AssetField;

    aput-object v1, v13, v3

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->AUTH:Lcom/amazon/kindle/download/assets/AssetField;

    aput-object v1, v13, v4

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->AUTH_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

    aput-object v1, v13, v5

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->TOTAL_SIZE:Lcom/amazon/kindle/download/assets/AssetField;

    aput-object v1, v13, v6

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->PRIORITY_ID:Lcom/amazon/kindle/download/assets/AssetField;

    aput-object v1, v13, v7

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->DOWNLOAD_STATE:Lcom/amazon/kindle/download/assets/AssetField;

    aput-object v1, v13, v8

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->ERROR_ID:Lcom/amazon/kindle/download/assets/AssetField;

    aput-object v1, v13, v9

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->CONTENT_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

    aput-object v1, v13, v10

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->REVISION:Lcom/amazon/kindle/download/assets/AssetField;

    aput-object v1, v13, v11

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSET_GROUPS_GROUP_CONTEXT:Lcom/amazon/kindle/download/assets/AssetField;

    aput-object v1, v13, v12

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSET_GROUPS_CORRELATIONID:Lcom/amazon/kindle/download/assets/AssetField;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_TYPE_CONTEXT:Lcom/amazon/kindle/download/assets/AssetField;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->ASSET_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

    const/16 v2, 0xe

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_FILENAME:Lcom/amazon/kindle/download/assets/AssetField;

    const/16 v2, 0xf

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_SIDECARS:Lcom/amazon/kindle/download/assets/AssetField;

    const/16 v2, 0x10

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_APNX_URL:Lcom/amazon/kindle/download/assets/AssetField;

    const/16 v2, 0x11

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kindle/download/assets/AssetField;->COL_ASSETS_MIME_TYPE:Lcom/amazon/kindle/download/assets/AssetField;

    const/16 v2, 0x12

    aput-object v1, v13, v2

    aput-object v0, v13, v14

    sput-object v13, Lcom/amazon/kindle/download/assets/AssetField;->$VALUES:[Lcom/amazon/kindle/download/assets/AssetField;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/amazon/kindle/download/assets/AssetField;->columnName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/download/assets/AssetField;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/kindle/download/assets/AssetField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/download/assets/AssetField;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/download/assets/AssetField;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/kindle/download/assets/AssetField;->$VALUES:[Lcom/amazon/kindle/download/assets/AssetField;

    invoke-virtual {v0}, [Lcom/amazon/kindle/download/assets/AssetField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/download/assets/AssetField;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/download/assets/AssetField;->columnName:Ljava/lang/String;

    return-object v0
.end method
