.class public final enum Lcom/amazon/device/utils/det/Domain;
.super Ljava/lang/Enum;
.source "Domain.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/device/utils/det/Domain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/device/utils/det/Domain;

.field public static final enum BETA:Lcom/amazon/device/utils/det/Domain;

.field public static final enum PROD:Lcom/amazon/device/utils/det/Domain;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/amazon/device/utils/det/Domain;

    const/4 v1, 0x0

    const-string v2, "PROD"

    invoke-direct {v0, v2, v1}, Lcom/amazon/device/utils/det/Domain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/utils/det/Domain;->PROD:Lcom/amazon/device/utils/det/Domain;

    .line 5
    new-instance v0, Lcom/amazon/device/utils/det/Domain;

    const/4 v2, 0x1

    const-string v3, "BETA"

    invoke-direct {v0, v3, v2}, Lcom/amazon/device/utils/det/Domain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/device/utils/det/Domain;->BETA:Lcom/amazon/device/utils/det/Domain;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/device/utils/det/Domain;

    .line 3
    sget-object v4, Lcom/amazon/device/utils/det/Domain;->PROD:Lcom/amazon/device/utils/det/Domain;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/device/utils/det/Domain;->$VALUES:[Lcom/amazon/device/utils/det/Domain;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/device/utils/det/Domain;
    .locals 1

    .line 3
    const-class v0, Lcom/amazon/device/utils/det/Domain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/device/utils/det/Domain;

    return-object p0
.end method

.method public static values()[Lcom/amazon/device/utils/det/Domain;
    .locals 1

    .line 3
    sget-object v0, Lcom/amazon/device/utils/det/Domain;->$VALUES:[Lcom/amazon/device/utils/det/Domain;

    invoke-virtual {v0}, [Lcom/amazon/device/utils/det/Domain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/device/utils/det/Domain;

    return-object v0
.end method
