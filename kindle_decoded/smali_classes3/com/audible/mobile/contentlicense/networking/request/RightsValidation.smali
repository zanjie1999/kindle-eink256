.class public final enum Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;
.super Ljava/lang/Enum;
.source "RightsValidation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;

.field public static final enum AYCL:Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AYCL"
    .end annotation
.end field

.field public static final enum OWNERSHIP:Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Ownership"
    .end annotation
.end field

.field public static final enum RADIO:Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Radio"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;

    const/4 v1, 0x0

    const-string v2, "OWNERSHIP"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;->OWNERSHIP:Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;

    .line 14
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;

    const/4 v2, 0x1

    const-string v3, "RADIO"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;->RADIO:Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;

    .line 17
    new-instance v0, Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;

    const/4 v3, 0x2

    const-string v4, "AYCL"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;->AYCL:Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;

    .line 10
    sget-object v5, Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;->OWNERSHIP:Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;

    aput-object v5, v4, v1

    sget-object v1, Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;->RADIO:Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;->$VALUES:[Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;

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

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;
    .locals 1

    .line 10
    const-class v0, Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;
    .locals 1

    .line 10
    sget-object v0, Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;->$VALUES:[Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;

    invoke-virtual {v0}, [Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;

    return-object v0
.end method
