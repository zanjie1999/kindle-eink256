.class public final enum Lcom/amazon/kindle/webservices/WebRequestErrorState;
.super Ljava/lang/Enum;
.source "WebRequestErrorState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/webservices/WebRequestErrorState;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/webservices/WebRequestErrorState;

.field public static final enum CDE_ERROR:Lcom/amazon/kindle/webservices/WebRequestErrorState;

.field public static final enum CONNECTION_ERROR:Lcom/amazon/kindle/webservices/WebRequestErrorState;

.field public static final enum DEVICE_NETWORK_CONNECTION_ERROR:Lcom/amazon/kindle/webservices/WebRequestErrorState;

.field public static final enum DOCUMENT_OPEN_FAILURE:Lcom/amazon/kindle/webservices/WebRequestErrorState;

.field public static final enum FAILED:Lcom/amazon/kindle/webservices/WebRequestErrorState;

.field public static final enum FILE_SYSTEM_FULL:Lcom/amazon/kindle/webservices/WebRequestErrorState;

.field public static final enum FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/webservices/WebRequestErrorState;

.field public static final enum SERVER_ERROR:Lcom/amazon/kindle/webservices/WebRequestErrorState;

.field public static final enum UNKNOWN:Lcom/amazon/kindle/webservices/WebRequestErrorState;

.field public static final enum WAN_CONTENT_DOWNLOAD_LIMIT_ERROR:Lcom/amazon/kindle/webservices/WebRequestErrorState;


# instance fields
.field private final mapping:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 22
    new-instance v0, Lcom/amazon/kindle/webservices/WebRequestErrorState;

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CDE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/4 v2, 0x0

    const-string v3, "CDE_ERROR"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/kindle/webservices/WebRequestErrorState;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    sput-object v0, Lcom/amazon/kindle/webservices/WebRequestErrorState;->CDE_ERROR:Lcom/amazon/kindle/webservices/WebRequestErrorState;

    .line 24
    new-instance v0, Lcom/amazon/kindle/webservices/WebRequestErrorState;

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_FULL:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/4 v3, 0x1

    const-string v4, "FILE_SYSTEM_FULL"

    invoke-direct {v0, v4, v3, v1}, Lcom/amazon/kindle/webservices/WebRequestErrorState;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    sput-object v0, Lcom/amazon/kindle/webservices/WebRequestErrorState;->FILE_SYSTEM_FULL:Lcom/amazon/kindle/webservices/WebRequestErrorState;

    .line 27
    new-instance v0, Lcom/amazon/kindle/webservices/WebRequestErrorState;

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/4 v4, 0x2

    const-string v5, "CONNECTION_ERROR"

    invoke-direct {v0, v5, v4, v1}, Lcom/amazon/kindle/webservices/WebRequestErrorState;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    sput-object v0, Lcom/amazon/kindle/webservices/WebRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/webservices/WebRequestErrorState;

    .line 30
    new-instance v0, Lcom/amazon/kindle/webservices/WebRequestErrorState;

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->SERVER_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/4 v5, 0x3

    const-string v6, "SERVER_ERROR"

    invoke-direct {v0, v6, v5, v1}, Lcom/amazon/kindle/webservices/WebRequestErrorState;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    sput-object v0, Lcom/amazon/kindle/webservices/WebRequestErrorState;->SERVER_ERROR:Lcom/amazon/kindle/webservices/WebRequestErrorState;

    .line 32
    new-instance v0, Lcom/amazon/kindle/webservices/WebRequestErrorState;

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/4 v6, 0x4

    const-string v7, "UNKNOWN"

    invoke-direct {v0, v7, v6, v1}, Lcom/amazon/kindle/webservices/WebRequestErrorState;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    sput-object v0, Lcom/amazon/kindle/webservices/WebRequestErrorState;->UNKNOWN:Lcom/amazon/kindle/webservices/WebRequestErrorState;

    .line 34
    new-instance v0, Lcom/amazon/kindle/webservices/WebRequestErrorState;

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->DOCUMENT_OPEN_FAILURE:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/4 v7, 0x5

    const-string v8, "DOCUMENT_OPEN_FAILURE"

    invoke-direct {v0, v8, v7, v1}, Lcom/amazon/kindle/webservices/WebRequestErrorState;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    sput-object v0, Lcom/amazon/kindle/webservices/WebRequestErrorState;->DOCUMENT_OPEN_FAILURE:Lcom/amazon/kindle/webservices/WebRequestErrorState;

    .line 36
    new-instance v0, Lcom/amazon/kindle/webservices/WebRequestErrorState;

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->WAN_CONTENT_DOWNLOAD_LIMIT_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/4 v8, 0x6

    const-string v9, "WAN_CONTENT_DOWNLOAD_LIMIT_ERROR"

    invoke-direct {v0, v9, v8, v1}, Lcom/amazon/kindle/webservices/WebRequestErrorState;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    sput-object v0, Lcom/amazon/kindle/webservices/WebRequestErrorState;->WAN_CONTENT_DOWNLOAD_LIMIT_ERROR:Lcom/amazon/kindle/webservices/WebRequestErrorState;

    .line 38
    new-instance v0, Lcom/amazon/kindle/webservices/WebRequestErrorState;

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/4 v9, 0x7

    const-string v10, "FILE_SYSTEM_WRITE_ERROR"

    invoke-direct {v0, v10, v9, v1}, Lcom/amazon/kindle/webservices/WebRequestErrorState;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    sput-object v0, Lcom/amazon/kindle/webservices/WebRequestErrorState;->FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/webservices/WebRequestErrorState;

    .line 41
    new-instance v0, Lcom/amazon/kindle/webservices/WebRequestErrorState;

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/16 v10, 0x8

    const-string v11, "DEVICE_NETWORK_CONNECTION_ERROR"

    invoke-direct {v0, v11, v10, v1}, Lcom/amazon/kindle/webservices/WebRequestErrorState;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    sput-object v0, Lcom/amazon/kindle/webservices/WebRequestErrorState;->DEVICE_NETWORK_CONNECTION_ERROR:Lcom/amazon/kindle/webservices/WebRequestErrorState;

    .line 43
    new-instance v0, Lcom/amazon/kindle/webservices/WebRequestErrorState;

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/16 v11, 0x9

    const-string v12, "FAILED"

    invoke-direct {v0, v12, v11, v1}, Lcom/amazon/kindle/webservices/WebRequestErrorState;-><init>(Ljava/lang/String;ILcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    sput-object v0, Lcom/amazon/kindle/webservices/WebRequestErrorState;->FAILED:Lcom/amazon/kindle/webservices/WebRequestErrorState;

    const/16 v1, 0xa

    new-array v1, v1, [Lcom/amazon/kindle/webservices/WebRequestErrorState;

    .line 12
    sget-object v12, Lcom/amazon/kindle/webservices/WebRequestErrorState;->CDE_ERROR:Lcom/amazon/kindle/webservices/WebRequestErrorState;

    aput-object v12, v1, v2

    sget-object v2, Lcom/amazon/kindle/webservices/WebRequestErrorState;->FILE_SYSTEM_FULL:Lcom/amazon/kindle/webservices/WebRequestErrorState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/webservices/WebRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/webservices/WebRequestErrorState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kindle/webservices/WebRequestErrorState;->SERVER_ERROR:Lcom/amazon/kindle/webservices/WebRequestErrorState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/amazon/kindle/webservices/WebRequestErrorState;->UNKNOWN:Lcom/amazon/kindle/webservices/WebRequestErrorState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/amazon/kindle/webservices/WebRequestErrorState;->DOCUMENT_OPEN_FAILURE:Lcom/amazon/kindle/webservices/WebRequestErrorState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/amazon/kindle/webservices/WebRequestErrorState;->WAN_CONTENT_DOWNLOAD_LIMIT_ERROR:Lcom/amazon/kindle/webservices/WebRequestErrorState;

    aput-object v2, v1, v8

    sget-object v2, Lcom/amazon/kindle/webservices/WebRequestErrorState;->FILE_SYSTEM_WRITE_ERROR:Lcom/amazon/kindle/webservices/WebRequestErrorState;

    aput-object v2, v1, v9

    sget-object v2, Lcom/amazon/kindle/webservices/WebRequestErrorState;->DEVICE_NETWORK_CONNECTION_ERROR:Lcom/amazon/kindle/webservices/WebRequestErrorState;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/amazon/kindle/webservices/WebRequestErrorState;->$VALUES:[Lcom/amazon/kindle/webservices/WebRequestErrorState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/download/KRXRequestErrorState;",
            ")V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lcom/amazon/kindle/webservices/WebRequestErrorState;->mapping:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    return-void
.end method

.method public static toKRXRequestErrorState(Lcom/amazon/kindle/webservices/WebRequestErrorState;)Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/amazon/kindle/webservices/WebRequestErrorState;->mapping:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    return-object p0
.end method

.method public static toWebRequestErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)Lcom/amazon/kindle/webservices/WebRequestErrorState;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 66
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/webservices/WebRequestErrorState;->values()[Lcom/amazon/kindle/webservices/WebRequestErrorState;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 67
    iget-object v5, v4, Lcom/amazon/kindle/webservices/WebRequestErrorState;->mapping:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne v5, p0, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/webservices/WebRequestErrorState;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/kindle/webservices/WebRequestErrorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/webservices/WebRequestErrorState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/webservices/WebRequestErrorState;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/kindle/webservices/WebRequestErrorState;->$VALUES:[Lcom/amazon/kindle/webservices/WebRequestErrorState;

    invoke-virtual {v0}, [Lcom/amazon/kindle/webservices/WebRequestErrorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/webservices/WebRequestErrorState;

    return-object v0
.end method
