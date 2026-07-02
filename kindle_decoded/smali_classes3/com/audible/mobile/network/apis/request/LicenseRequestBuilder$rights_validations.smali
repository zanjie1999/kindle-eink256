.class public final enum Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;
.super Ljava/lang/Enum;
.source "LicenseRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;

.field public static final enum AmazonEnglish:Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;

.field public static final enum Ownership:Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;

.field public static final enum Radio:Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 42
    new-instance v0, Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;

    const/4 v1, 0x0

    const-string v2, "Ownership"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;->Ownership:Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;

    new-instance v0, Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;

    const/4 v2, 0x1

    const-string v3, "Radio"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;->Radio:Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;

    new-instance v0, Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;

    const/4 v3, 0x2

    const-string v4, "AmazonEnglish"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;->AmazonEnglish:Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;

    .line 41
    sget-object v5, Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;->Ownership:Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;

    aput-object v5, v4, v1

    sget-object v1, Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;->Radio:Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;->$VALUES:[Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;
    .locals 1

    .line 41
    const-class v0, Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;
    .locals 1

    .line 41
    sget-object v0, Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;->$VALUES:[Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;

    invoke-virtual {v0}, [Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/network/apis/request/LicenseRequestBuilder$rights_validations;

    return-object v0
.end method
