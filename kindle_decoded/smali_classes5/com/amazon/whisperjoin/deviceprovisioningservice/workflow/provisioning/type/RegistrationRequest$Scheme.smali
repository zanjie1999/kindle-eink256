.class public final enum Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;
.super Ljava/lang/Enum;
.source "RegistrationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;

.field public static final enum CODE_BASED_LINKING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;

    const/4 v1, 0x0

    const-string v2, "CODE_BASED_LINKING"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;->CODE_BASED_LINKING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;

    aput-object v0, v2, v1

    .line 11
    sput-object v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;->$VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;->$VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/RegistrationRequest$Scheme;

    return-object v0
.end method
