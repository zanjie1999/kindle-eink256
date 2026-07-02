.class public final enum Lcom/amazon/device/ads/WebRequest$WebRequestStatus;
.super Ljava/lang/Enum;
.source "WebRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/WebRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WebRequestStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/ads/WebRequest$WebRequestStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

.field public static final enum INVALID_CLIENT_PROTOCOL:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

.field public static final enum MALFORMED_URL:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

.field public static final enum NETWORK_FAILURE:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

.field public static final enum NETWORK_TIMEOUT:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

.field public static final enum UNSUPPORTED_ENCODING:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 972
    new-instance v0, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const/4 v1, 0x0

    const-string v2, "NETWORK_FAILURE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->NETWORK_FAILURE:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    .line 973
    new-instance v0, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const/4 v2, 0x1

    const-string v3, "NETWORK_TIMEOUT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->NETWORK_TIMEOUT:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    .line 974
    new-instance v0, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const/4 v3, 0x2

    const-string v4, "MALFORMED_URL"

    invoke-direct {v0, v4, v3}, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->MALFORMED_URL:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    .line 975
    new-instance v0, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const/4 v4, 0x3

    const-string v5, "INVALID_CLIENT_PROTOCOL"

    invoke-direct {v0, v5, v4}, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->INVALID_CLIENT_PROTOCOL:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    .line 976
    new-instance v0, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const/4 v5, 0x4

    const-string v6, "UNSUPPORTED_ENCODING"

    invoke-direct {v0, v6, v5}, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->UNSUPPORTED_ENCODING:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    .line 970
    sget-object v7, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->NETWORK_FAILURE:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->NETWORK_TIMEOUT:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->MALFORMED_URL:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->INVALID_CLIENT_PROTOCOL:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->$VALUES:[Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 970
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/WebRequest$WebRequestStatus;
    .locals 1

    .line 970
    const-class v0, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/ads/WebRequest$WebRequestStatus;
    .locals 1

    .line 970
    sget-object v0, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->$VALUES:[Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    invoke-virtual {v0}, [Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    return-object v0
.end method
