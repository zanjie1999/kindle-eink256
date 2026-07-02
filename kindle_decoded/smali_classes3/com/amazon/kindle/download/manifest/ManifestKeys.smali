.class public final enum Lcom/amazon/kindle/download/manifest/ManifestKeys;
.super Ljava/lang/Enum;
.source "MDSManifest.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/download/manifest/ManifestKeys;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/download/manifest/ManifestKeys;

.field public static final enum CONTENT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

.field public static final enum CONTENT_ID:Lcom/amazon/kindle/download/manifest/ManifestKeys;

.field public static final enum CONTENT_REVISION:Lcom/amazon/kindle/download/manifest/ManifestKeys;

.field public static final enum CONTENT_SAMPLING:Lcom/amazon/kindle/download/manifest/ManifestKeys;

.field public static final enum CONTENT_TYPE:Lcom/amazon/kindle/download/manifest/ManifestKeys;

.field public static final enum ENDPOINT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

.field public static final enum ENDPOINT_TYPE:Lcom/amazon/kindle/download/manifest/ManifestKeys;

.field public static final enum ENDPOINT_URL:Lcom/amazon/kindle/download/manifest/ManifestKeys;

.field public static final enum OPTIMALENDPOINT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

.field public static final enum OPTIMALENDPOINT_EXPIRATION:Lcom/amazon/kindle/download/manifest/ManifestKeys;

.field public static final enum OPTIMALENDPOINT_URL:Lcom/amazon/kindle/download/manifest/ManifestKeys;

.field public static final enum RESOURCES:Lcom/amazon/kindle/download/manifest/ManifestKeys;

.field public static final enum RESOURCE_CONTEXT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

.field public static final enum RESOURCE_DELIVERYTYPE:Lcom/amazon/kindle/download/manifest/ManifestKeys;

.field public static final enum RESOURCE_ID:Lcom/amazon/kindle/download/manifest/ManifestKeys;

.field public static final enum RESOURCE_REQUIREMENT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

.field public static final enum RESOURCE_SIZE:Lcom/amazon/kindle/download/manifest/ManifestKeys;

.field public static final enum RESOURCE_TYPE:Lcom/amazon/kindle/download/manifest/ManifestKeys;

.field public static final enum RESPONSECONTEXT:Lcom/amazon/kindle/download/manifest/ManifestKeys;


# instance fields
.field private final jsonKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/amazon/kindle/download/manifest/ManifestKeys;

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;

    const-string v2, "responseContext"

    const/4 v3, 0x0

    const-string v4, "RESPONSECONTEXT"

    .line 49
    invoke-direct {v1, v4, v3, v2}, Lcom/amazon/kindle/download/manifest/ManifestKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESPONSECONTEXT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    aput-object v1, v0, v3

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;

    const/4 v3, 0x1

    const-string v4, "CONTENT"

    const-string v5, "content"

    .line 51
    invoke-direct {v1, v4, v3, v5}, Lcom/amazon/kindle/download/manifest/ManifestKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;->CONTENT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    aput-object v1, v0, v3

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;

    const-string v3, "id"

    const/4 v4, 0x2

    const-string v5, "CONTENT_ID"

    .line 52
    invoke-direct {v1, v5, v4, v3}, Lcom/amazon/kindle/download/manifest/ManifestKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;->CONTENT_ID:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    aput-object v1, v0, v4

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;

    const/4 v4, 0x3

    const-string v5, "CONTENT_REVISION"

    const-string v6, "revision"

    .line 53
    invoke-direct {v1, v5, v4, v6}, Lcom/amazon/kindle/download/manifest/ManifestKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;->CONTENT_REVISION:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    aput-object v1, v0, v4

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;

    const/4 v4, 0x4

    const-string v5, "CONTENT_SAMPLING"

    const-string v6, "sampling"

    .line 54
    invoke-direct {v1, v5, v4, v6}, Lcom/amazon/kindle/download/manifest/ManifestKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;->CONTENT_SAMPLING:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    aput-object v1, v0, v4

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;

    const/4 v4, 0x5

    const-string v5, "type"

    const-string v6, "CONTENT_TYPE"

    .line 55
    invoke-direct {v1, v6, v4, v5}, Lcom/amazon/kindle/download/manifest/ManifestKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;->CONTENT_TYPE:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    aput-object v1, v0, v4

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;

    const/4 v4, 0x6

    const-string v6, "RESOURCES"

    const-string v7, "resources"

    .line 57
    invoke-direct {v1, v6, v4, v7}, Lcom/amazon/kindle/download/manifest/ManifestKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESOURCES:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    aput-object v1, v0, v4

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;

    const/4 v4, 0x7

    const-string v6, "RESOURCE_ID"

    .line 58
    invoke-direct {v1, v6, v4, v3}, Lcom/amazon/kindle/download/manifest/ManifestKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESOURCE_ID:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    aput-object v1, v0, v4

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;

    const/16 v3, 0x8

    const-string v4, "RESOURCE_REQUIREMENT"

    const-string v6, "requirement"

    .line 59
    invoke-direct {v1, v4, v3, v6}, Lcom/amazon/kindle/download/manifest/ManifestKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESOURCE_REQUIREMENT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    aput-object v1, v0, v3

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;

    const/16 v3, 0x9

    const-string v4, "RESOURCE_CONTEXT"

    .line 60
    invoke-direct {v1, v4, v3, v2}, Lcom/amazon/kindle/download/manifest/ManifestKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESOURCE_CONTEXT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    aput-object v1, v0, v3

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;

    const/16 v2, 0xa

    const-string v3, "RESOURCE_SIZE"

    const-string v4, "size"

    .line 61
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/download/manifest/ManifestKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESOURCE_SIZE:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;

    const/16 v2, 0xb

    const-string v3, "RESOURCE_TYPE"

    .line 62
    invoke-direct {v1, v3, v2, v5}, Lcom/amazon/kindle/download/manifest/ManifestKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESOURCE_TYPE:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;

    const/16 v2, 0xc

    const-string v3, "RESOURCE_DELIVERYTYPE"

    const-string v4, "deliveryType"

    .line 63
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/download/manifest/ManifestKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;->RESOURCE_DELIVERYTYPE:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;

    const/16 v2, 0xd

    const-string v3, "ENDPOINT"

    const-string v4, "endpoint"

    .line 65
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/download/manifest/ManifestKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;->ENDPOINT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;

    const/16 v2, 0xe

    const-string v3, "ENDPOINT_URL"

    const-string v4, "url"

    .line 66
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/download/manifest/ManifestKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;->ENDPOINT_URL:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;

    const/16 v2, 0xf

    const-string v3, "ENDPOINT_TYPE"

    .line 67
    invoke-direct {v1, v3, v2, v5}, Lcom/amazon/kindle/download/manifest/ManifestKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;->ENDPOINT_TYPE:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;

    const/16 v2, 0x10

    const-string v3, "OPTIMALENDPOINT"

    const-string v4, "optimalEndpoint"

    .line 69
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/download/manifest/ManifestKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;->OPTIMALENDPOINT:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;

    const/16 v2, 0x11

    const-string v3, "OPTIMALENDPOINT_URL"

    const-string v4, "directUrl"

    .line 70
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/download/manifest/ManifestKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;->OPTIMALENDPOINT_URL:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;

    const/16 v2, 0x12

    const-string v3, "OPTIMALENDPOINT_EXPIRATION"

    const-string v4, "expiresAfter"

    .line 71
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/download/manifest/ManifestKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/ManifestKeys;->OPTIMALENDPOINT_EXPIRATION:Lcom/amazon/kindle/download/manifest/ManifestKeys;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/download/manifest/ManifestKeys;->$VALUES:[Lcom/amazon/kindle/download/manifest/ManifestKeys;

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

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kindle/download/manifest/ManifestKeys;->jsonKey:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/download/manifest/ManifestKeys;
    .locals 1

    const-class v0, Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/download/manifest/ManifestKeys;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/download/manifest/ManifestKeys;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/download/manifest/ManifestKeys;->$VALUES:[Lcom/amazon/kindle/download/manifest/ManifestKeys;

    invoke-virtual {v0}, [Lcom/amazon/kindle/download/manifest/ManifestKeys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/download/manifest/ManifestKeys;

    return-object v0
.end method


# virtual methods
.method public final getJsonKey()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/ManifestKeys;->jsonKey:Ljava/lang/String;

    return-object v0
.end method
