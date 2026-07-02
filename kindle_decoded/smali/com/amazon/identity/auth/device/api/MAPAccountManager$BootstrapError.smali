.class public final enum Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MAPAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BootstrapError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

.field public static final enum BOOTSTRAP_NOT_ALLOWED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum FRAUDULENT_PACKAGE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum NETWORK_FAILURE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum NO_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum NO_SERVICE_AVAILABLE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum NO_SIGNATURE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum SERVICE_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum TIMEOUT_SERVICE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum UNCATEGORIZED_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1234
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    const/4 v1, 0x0

    const-string v2, "NO_SERVICE_AVAILABLE"

    const-string v3, "NoServiceAvailable"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->NO_SERVICE_AVAILABLE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    .line 1240
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    const/4 v2, 0x1

    const-string v3, "TIMEOUT_SERVICE"

    const-string v4, "NoResponseReceived"

    invoke-direct {v0, v3, v2, v2, v4}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->TIMEOUT_SERVICE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    .line 1246
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    const/4 v3, 0x2

    const-string v4, "NO_ACCOUNT"

    const-string v5, "NoAccount"

    invoke-direct {v0, v4, v3, v3, v5}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->NO_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    .line 1252
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    const/4 v4, 0x3

    const-string v5, "NO_SIGNATURE"

    const-string v6, "NoSignatureObtained"

    invoke-direct {v0, v5, v4, v4, v6}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->NO_SIGNATURE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    .line 1258
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    const/4 v5, 0x4

    const-string v6, "INVALID_RESPONSE"

    const-string v7, "InvalidResponseFromServer"

    invoke-direct {v0, v6, v5, v5, v7}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    .line 1264
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    const/4 v6, 0x5

    const-string v7, "NETWORK_FAILURE"

    const-string v8, "NetworkFailed"

    invoke-direct {v0, v7, v6, v6, v8}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->NETWORK_FAILURE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    .line 1270
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    const/4 v7, 0x6

    const-string v8, "PARSE_ERROR"

    const-string v9, "ErrorParsingResponse"

    invoke-direct {v0, v8, v7, v7, v9}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    .line 1276
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    const/4 v8, 0x7

    const-string v9, "BOOTSTRAP_NOT_ALLOWED"

    const-string v10, "BootstrapNotAllowed"

    invoke-direct {v0, v9, v8, v8, v10}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->BOOTSTRAP_NOT_ALLOWED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    .line 1282
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    const/16 v9, 0x8

    const-string v10, "SERVICE_ERROR"

    const-string v11, "ServiceError"

    invoke-direct {v0, v10, v9, v9, v11}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->SERVICE_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    .line 1288
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    const/16 v10, 0x9

    const-string v11, "FRAUDULENT_PACKAGE"

    const-string v12, "FraudulentPackage"

    invoke-direct {v0, v11, v10, v10, v12}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->FRAUDULENT_PACKAGE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    .line 1294
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    const/16 v11, 0xa

    const-string v12, "UNCATEGORIZED_ERROR"

    const-string v13, "UncategorizedError"

    invoke-direct {v0, v12, v11, v11, v13}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->UNCATEGORIZED_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    .line 1229
    sget-object v13, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->NO_SERVICE_AVAILABLE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    aput-object v13, v12, v1

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->TIMEOUT_SERVICE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->NO_ACCOUNT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    aput-object v1, v12, v3

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->NO_SIGNATURE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    aput-object v1, v12, v4

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->INVALID_RESPONSE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    aput-object v1, v12, v5

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->NETWORK_FAILURE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    aput-object v1, v12, v6

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->PARSE_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    aput-object v1, v12, v7

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->BOOTSTRAP_NOT_ALLOWED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    aput-object v1, v12, v8

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->SERVICE_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    aput-object v1, v12, v9

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->FRAUDULENT_PACKAGE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->$VALUES:[Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1301
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1302
    iput p3, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->mValue:I

    .line 1303
    iput-object p4, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->mName:Ljava/lang/String;

    return-void
.end method

.method public static fromValue(I)Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;
    .locals 0
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 1321
    invoke-static {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->fromValueHelper(I)Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromValue(ILcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;)Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;
    .locals 0
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 1334
    invoke-static {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->fromValueHelper(I)Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private static fromValueHelper(I)Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;
    .locals 5

    .line 1341
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->values()[Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1343
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->value()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;
    .locals 1

    .line 1229
    const-class v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;
    .locals 1

    .line 1229
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->$VALUES:[Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 1315
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 1309
    iget v0, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->mValue:I

    return v0
.end method
