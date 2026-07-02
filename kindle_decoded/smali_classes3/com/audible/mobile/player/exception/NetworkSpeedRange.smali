.class public final enum Lcom/audible/mobile/player/exception/NetworkSpeedRange;
.super Ljava/lang/Enum;
.source "NetworkSpeedRange.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/player/exception/NetworkSpeedRange$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/player/exception/NetworkSpeedRange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/player/exception/NetworkSpeedRange;

.field public static final Companion:Lcom/audible/mobile/player/exception/NetworkSpeedRange$Companion;

.field public static final enum HIGH:Lcom/audible/mobile/player/exception/NetworkSpeedRange;

.field public static final enum UNKNOWN:Lcom/audible/mobile/player/exception/NetworkSpeedRange;


# instance fields
.field private final networkSpeed:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x17

    new-array v0, v0, [Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    new-instance v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const/4 v2, 0x0

    const-string v3, "UNKNOWN"

    const-wide/16 v4, -0x1

    .line 11
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;->UNKNOWN:Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const/4 v2, 0x1

    const-string v3, "TEN_KBPS"

    const-wide/16 v4, 0x2710

    .line 16
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;-><init>(Ljava/lang/String;IJ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const/4 v2, 0x2

    const-string v3, "TWENTY_KBPS"

    const-wide/16 v4, 0x4e20

    .line 20
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;-><init>(Ljava/lang/String;IJ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const/4 v2, 0x3

    const-string v3, "THIRTY_KBPS"

    const-wide/16 v4, 0x7530

    .line 25
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;-><init>(Ljava/lang/String;IJ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const/4 v2, 0x4

    const-string v3, "FORTY_KBPS"

    const-wide/32 v4, 0x9c40

    .line 30
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;-><init>(Ljava/lang/String;IJ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const/4 v2, 0x5

    const-string v3, "FIFTY_KBPS"

    const-wide/32 v4, 0xc350

    .line 35
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;-><init>(Ljava/lang/String;IJ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const/4 v2, 0x6

    const-string v3, "SIXTY_KBPS"

    const-wide/32 v4, 0xea60

    .line 40
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;-><init>(Ljava/lang/String;IJ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const/4 v2, 0x7

    const-string v3, "SEVENTY_KBPS"

    const-wide/32 v4, 0x11170

    .line 45
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;-><init>(Ljava/lang/String;IJ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const/16 v2, 0x8

    const-string v3, "EIGHTY5_KBPS"

    const-wide/32 v4, 0x14c08

    .line 50
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;-><init>(Ljava/lang/String;IJ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const/16 v2, 0x9

    const-string v3, "HUNDRED_KBPS"

    const-wide/32 v4, 0x186a0

    .line 55
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;-><init>(Ljava/lang/String;IJ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const/16 v2, 0xa

    const-string v3, "HUNDRED15_KBPS"

    const-wide/32 v4, 0x1c138

    .line 60
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;-><init>(Ljava/lang/String;IJ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const/16 v2, 0xb

    const-string v3, "HUNDRED30_KBPS"

    const-wide/32 v4, 0x1fbd0

    .line 65
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;-><init>(Ljava/lang/String;IJ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const/16 v2, 0xc

    const-string v3, "HUNDRED60_KBPS"

    const-wide/32 v4, 0x27100

    .line 70
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;-><init>(Ljava/lang/String;IJ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const/16 v2, 0xd

    const-string v3, "HUNDRED90_KBPS"

    const-wide/32 v4, 0x2e630

    .line 75
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;-><init>(Ljava/lang/String;IJ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const/16 v2, 0xe

    const-string v3, "TWO_HUNDRED20_KBPS"

    const-wide/32 v4, 0x35b60

    .line 80
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;-><init>(Ljava/lang/String;IJ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const/16 v2, 0xf

    const-string v3, "TWO_HUNDRED60_KBPS"

    const-wide/32 v4, 0x3f7a0

    .line 85
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;-><init>(Ljava/lang/String;IJ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const/16 v2, 0x10

    const-string v3, "THREE_HUNDRED_KBPS"

    const-wide/32 v4, 0x493e0

    .line 90
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;-><init>(Ljava/lang/String;IJ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const/16 v2, 0x11

    const-string v3, "THREE_HUNDRED50_KBPS"

    const-wide/32 v4, 0x55730

    .line 95
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;-><init>(Ljava/lang/String;IJ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const/16 v2, 0x12

    const-string v3, "FOUR_HUNDRED_KBPS"

    const-wide/32 v4, 0x61a80

    .line 100
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;-><init>(Ljava/lang/String;IJ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const/16 v2, 0x13

    const-string v3, "FOUR_HUNDRED50_KBPS"

    const-wide/32 v4, 0x6ddd0

    .line 105
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;-><init>(Ljava/lang/String;IJ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const/16 v2, 0x14

    const-string v3, "FIVE_HUNDRED_KBPS"

    const-wide/32 v4, 0x7a120

    .line 110
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;-><init>(Ljava/lang/String;IJ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const/16 v2, 0x15

    const-string v3, "FIVE_HUNDRED50_KBPS"

    const-wide/32 v4, 0x86470

    .line 115
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;-><init>(Ljava/lang/String;IJ)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const-string v2, "HIGH"

    const/16 v3, 0x16

    const-wide v4, 0x7fffffffffffffffL

    .line 120
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/audible/mobile/player/exception/NetworkSpeedRange;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Lcom/audible/mobile/player/exception/NetworkSpeedRange;->HIGH:Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sput-object v0, Lcom/audible/mobile/player/exception/NetworkSpeedRange;->$VALUES:[Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    new-instance v0, Lcom/audible/mobile/player/exception/NetworkSpeedRange$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/mobile/player/exception/NetworkSpeedRange$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/audible/mobile/player/exception/NetworkSpeedRange;->Companion:Lcom/audible/mobile/player/exception/NetworkSpeedRange$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lcom/audible/mobile/player/exception/NetworkSpeedRange;->networkSpeed:J

    return-void
.end method

.method public static final synthetic access$getNetworkSpeed$p(Lcom/audible/mobile/player/exception/NetworkSpeedRange;)J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/audible/mobile/player/exception/NetworkSpeedRange;->networkSpeed:J

    return-wide v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/player/exception/NetworkSpeedRange;
    .locals 1

    const-class v0, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/player/exception/NetworkSpeedRange;
    .locals 1

    sget-object v0, Lcom/audible/mobile/player/exception/NetworkSpeedRange;->$VALUES:[Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    invoke-virtual {v0}, [Lcom/audible/mobile/player/exception/NetworkSpeedRange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/player/exception/NetworkSpeedRange;

    return-object v0
.end method
