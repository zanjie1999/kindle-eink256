.class public final enum Lcom/audible/license/events/LicensingError;
.super Ljava/lang/Enum;
.source "LicensingError.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/license/events/LicensingError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/license/events/LicensingError;

.field public static final enum ContentNotEligible:Lcom/audible/license/events/LicensingError;

.field public static final enum Offline:Lcom/audible/license/events/LicensingError;

.field public static final enum Other:Lcom/audible/license/events/LicensingError;

.field public static final enum RequesterNotEligible:Lcom/audible/license/events/LicensingError;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/audible/license/events/LicensingError;

    new-instance v1, Lcom/audible/license/events/LicensingError;

    const/4 v2, 0x0

    const-string v3, "Offline"

    invoke-direct {v1, v3, v2}, Lcom/audible/license/events/LicensingError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/audible/license/events/LicensingError;->Offline:Lcom/audible/license/events/LicensingError;

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/license/events/LicensingError;

    const/4 v2, 0x1

    const-string v3, "ContentNotEligible"

    invoke-direct {v1, v3, v2}, Lcom/audible/license/events/LicensingError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/audible/license/events/LicensingError;->ContentNotEligible:Lcom/audible/license/events/LicensingError;

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/license/events/LicensingError;

    const/4 v2, 0x2

    const-string v3, "RequesterNotEligible"

    invoke-direct {v1, v3, v2}, Lcom/audible/license/events/LicensingError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/audible/license/events/LicensingError;->RequesterNotEligible:Lcom/audible/license/events/LicensingError;

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/license/events/LicensingError;

    const/4 v2, 0x3

    const-string v3, "Other"

    invoke-direct {v1, v3, v2}, Lcom/audible/license/events/LicensingError;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/audible/license/events/LicensingError;->Other:Lcom/audible/license/events/LicensingError;

    aput-object v1, v0, v2

    sput-object v0, Lcom/audible/license/events/LicensingError;->$VALUES:[Lcom/audible/license/events/LicensingError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/license/events/LicensingError;
    .locals 1

    const-class v0, Lcom/audible/license/events/LicensingError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/license/events/LicensingError;

    return-object p0
.end method

.method public static values()[Lcom/audible/license/events/LicensingError;
    .locals 1

    sget-object v0, Lcom/audible/license/events/LicensingError;->$VALUES:[Lcom/audible/license/events/LicensingError;

    invoke-virtual {v0}, [Lcom/audible/license/events/LicensingError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/license/events/LicensingError;

    return-object v0
.end method
