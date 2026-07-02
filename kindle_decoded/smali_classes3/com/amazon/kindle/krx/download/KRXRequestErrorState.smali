.class public final enum Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
.super Ljava/lang/Enum;
.source "KRXRequestErrorState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/download/KRXRequestErrorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field public static final enum APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field public static final enum CDE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field public static final enum CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field public static final enum DEVICE_NETWORK_CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field public static final enum DEVICE_TYPE_EXCLUDED:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field public static final enum DOCUMENT_OPEN_FAILURE:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field public static final enum FAILED:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field public static final enum FILE_SYSTEM_FULL:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field public static final enum FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field public static final enum FORBIDDEN:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field public static final enum HTTP_CLIENT_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field public static final enum MANIFEST_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field public static final enum NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field public static final enum SERVER_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field public static final enum UNKNOWN:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field public static final enum WAN_CONTENT_DOWNLOAD_LIMIT_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 14
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/4 v1, 0x0

    const-string v2, "FILE_SYSTEM_FULL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_FULL:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 15
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/4 v2, 0x1

    const-string v3, "FILE_SYSTEM_WRITE_ERROR"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 16
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/4 v3, 0x2

    const-string v4, "APP_INTERNAL_ERROR"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 20
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/4 v4, 0x3

    const-string v5, "NO_CONNECTION"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 21
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/4 v5, 0x4

    const-string v6, "WAN_CONTENT_DOWNLOAD_LIMIT_ERROR"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->WAN_CONTENT_DOWNLOAD_LIMIT_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 22
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/4 v6, 0x5

    const-string v7, "CONNECTION_ERROR"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 26
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/4 v7, 0x6

    const-string v8, "FORBIDDEN"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FORBIDDEN:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 27
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/4 v8, 0x7

    const-string v9, "MANIFEST_ERROR"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->MANIFEST_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 28
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/16 v9, 0x8

    const-string v10, "DEVICE_TYPE_EXCLUDED"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->DEVICE_TYPE_EXCLUDED:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 29
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/16 v10, 0x9

    const-string v11, "SERVER_ERROR"

    invoke-direct {v0, v11, v10}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->SERVER_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 30
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/16 v11, 0xa

    const-string v12, "CDE_ERROR"

    invoke-direct {v0, v12, v11}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CDE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 33
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/16 v12, 0xb

    const-string v13, "UNKNOWN"

    invoke-direct {v0, v13, v12}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->UNKNOWN:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 34
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/16 v13, 0xc

    const-string v14, "DOCUMENT_OPEN_FAILURE"

    invoke-direct {v0, v14, v13}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->DOCUMENT_OPEN_FAILURE:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 35
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/16 v14, 0xd

    const-string v15, "DEVICE_NETWORK_CONNECTION_ERROR"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->DEVICE_NETWORK_CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 36
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/16 v15, 0xe

    const-string v14, "FAILED"

    invoke-direct {v0, v14, v15}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FAILED:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 40
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/16 v14, 0xf

    const-string v15, "HTTP_CLIENT_ERROR"

    invoke-direct {v0, v15, v14}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->HTTP_CLIENT_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/16 v15, 0x10

    new-array v15, v15, [Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 11
    sget-object v16, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_FULL:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    aput-object v16, v15, v1

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    aput-object v1, v15, v2

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    aput-object v1, v15, v3

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    aput-object v1, v15, v4

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->WAN_CONTENT_DOWNLOAD_LIMIT_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    aput-object v1, v15, v5

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    aput-object v1, v15, v6

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FORBIDDEN:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    aput-object v1, v15, v7

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->MANIFEST_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    aput-object v1, v15, v8

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->DEVICE_TYPE_EXCLUDED:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    aput-object v1, v15, v9

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->SERVER_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    aput-object v1, v15, v10

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CDE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    aput-object v1, v15, v11

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->UNKNOWN:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    aput-object v1, v15, v12

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->DOCUMENT_OPEN_FAILURE:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    aput-object v1, v15, v13

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->DEVICE_NETWORK_CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/16 v2, 0xd

    aput-object v1, v15, v2

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FAILED:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/16 v2, 0xe

    aput-object v1, v15, v2

    aput-object v0, v15, v14

    sput-object v15, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->$VALUES:[Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getFromSerialized(I)Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 1

    if-ltz p0, :cond_1

    .line 50
    invoke-static {}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->values()[Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    array-length v0, v0

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->values()[Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->$VALUES:[Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    return-object v0
.end method
