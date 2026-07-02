.class public final enum Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;
.super Ljava/lang/Enum;
.source "LicenseDenialReasonType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;

.field public static final enum ContentEligibility:Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;

.field public static final enum RequesterEligibility:Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;

    new-instance v1, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;

    const/4 v2, 0x0

    const-string v3, "Ownership"

    invoke-direct {v1, v3, v2}, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;

    const/4 v2, 0x1

    const-string v3, "ContentEligibility"

    invoke-direct {v1, v3, v2}, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;->ContentEligibility:Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;

    const/4 v2, 0x2

    const-string v3, "RequesterEligibility"

    invoke-direct {v1, v3, v2}, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;->RequesterEligibility:Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;->$VALUES:[Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;
    .locals 1

    const-class v0, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;
    .locals 1

    sget-object v0, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;->$VALUES:[Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;

    invoke-virtual {v0}, [Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;

    return-object v0
.end method
