.class public final enum Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;
.super Ljava/lang/Enum;
.source "TrustMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;

.field public static final enum AUTHENTICATED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;

.field public static final enum UNAUTHENTICATED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;

    const/4 v1, 0x0

    const-string v2, "AUTHENTICATED"

    invoke-direct {v0, v2, v1, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;->AUTHENTICATED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;

    .line 10
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;

    const/4 v2, 0x1

    const-string v3, "UNAUTHENTICATED"

    invoke-direct {v0, v3, v2, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;->UNAUTHENTICATED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;

    .line 8
    sget-object v4, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;->AUTHENTICATED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;->$VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;

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

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;->$VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/TrustMethod;->mName:Ljava/lang/String;

    return-object v0
.end method
