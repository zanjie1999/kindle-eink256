.class public abstract enum Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
.super Ljava/lang/Enum;
.source "TransferNetworkConnectionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

.field public static final enum ANY:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

.field private static final LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

.field private static final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum MOBILE:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

.field public static final enum WIFI:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 33
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$1;

    const/4 v1, 0x0

    const-string v2, "ANY"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->ANY:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 43
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$2;

    const/4 v2, 0x1

    const-string v3, "WIFI"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->WIFI:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 54
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$3;

    const/4 v3, 0x2

    const-string v4, "MOBILE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->MOBILE:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 29
    sget-object v5, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->ANY:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    aput-object v5, v4, v1

    sget-object v5, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->WIFI:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    aput-object v5, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->MAP:Ljava/util/Map;

    .line 65
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->values()[Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 66
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->MAP:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_0
    const-class v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
    .locals 1

    .line 29
    const-class v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    return-object v0
.end method


# virtual methods
.method isConnected(Landroid/net/ConnectivityManager;)Z
    .locals 0

    .line 78
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->verify(Landroid/net/NetworkInfo;)Z

    move-result p1

    return p1
.end method

.method protected abstract verify(Landroid/net/NetworkInfo;)Z
.end method
