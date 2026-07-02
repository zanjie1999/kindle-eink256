.class public final enum Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgressBarState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

.field public static final enum OFF:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum PROGRESS_BAR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum SPINNER_LARGE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum SPINNER_MEDIUM:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum SPINNER_SMALL:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1488
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    const/4 v1, 0x0

    const-string v2, "OFF"

    const-string/jumbo v3, "off"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->OFF:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    .line 1493
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    const/4 v2, 0x1

    const-string v3, "PROGRESS_BAR"

    const-string/jumbo v4, "progress_bar"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->PROGRESS_BAR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    .line 1498
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    const/4 v3, 0x2

    const-string v4, "SPINNER_SMALL"

    const-string/jumbo v5, "spinner_small"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->SPINNER_SMALL:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    .line 1503
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    const/4 v4, 0x3

    const-string v5, "SPINNER_MEDIUM"

    const-string/jumbo v6, "spinner_medium"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->SPINNER_MEDIUM:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    .line 1508
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    const/4 v5, 0x4

    const-string v6, "SPINNER_LARGE"

    const-string/jumbo v7, "spinner_large"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->SPINNER_LARGE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    .line 1483
    sget-object v7, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->OFF:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->PROGRESS_BAR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->SPINNER_SMALL:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->SPINNER_MEDIUM:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->$VALUES:[Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

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

    .line 1514
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1515
    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;
    .locals 6

    .line 1540
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->values()[Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1542
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1547
    :cond_1
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string p0, "Invalid ProgressBarState value: %s"

    invoke-static {v0, p0, v1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;
    .locals 1

    .line 1483
    const-class v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;
    .locals 1

    .line 1483
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->$VALUES:[Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1524
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 1531
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
