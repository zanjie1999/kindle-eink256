.class public final enum Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

.field public static final enum BOTTOM_CENTER:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum BOTTOM_LEFT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum BOTTOM_RIGHT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum CENTER_CENTER:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum CENTER_LEFT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum CENTER_RIGHT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum TOP_CENTER:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum TOP_LEFT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final enum TOP_RIGHT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1612
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    const/4 v1, 0x0

    const-string v2, "TOP_LEFT"

    const-string/jumbo v3, "top_left"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->TOP_LEFT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    .line 1614
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    const/4 v2, 0x1

    const-string v3, "TOP_CENTER"

    const-string/jumbo v4, "top_center"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->TOP_CENTER:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    .line 1616
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    const/4 v3, 0x2

    const-string v4, "TOP_RIGHT"

    const-string/jumbo v5, "top_right"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->TOP_RIGHT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    .line 1618
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    const/4 v4, 0x3

    const-string v5, "CENTER_LEFT"

    const-string v6, "center_left"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->CENTER_LEFT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    .line 1620
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    const/4 v5, 0x4

    const-string v6, "CENTER_CENTER"

    const-string v7, "center_center"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->CENTER_CENTER:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    .line 1622
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    const/4 v6, 0x5

    const-string v7, "CENTER_RIGHT"

    const-string v8, "center_right"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->CENTER_RIGHT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    .line 1624
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    const/4 v7, 0x6

    const-string v8, "BOTTOM_LEFT"

    const-string v9, "bottom_left"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->BOTTOM_LEFT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    .line 1626
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    const/4 v8, 0x7

    const-string v9, "BOTTOM_CENTER"

    const-string v10, "bottom_center"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->BOTTOM_CENTER:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    .line 1628
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    const/16 v9, 0x8

    const-string v10, "BOTTOM_RIGHT"

    const-string v11, "bottom_right"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->BOTTOM_RIGHT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    .line 1610
    sget-object v11, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->TOP_LEFT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    aput-object v11, v10, v1

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->TOP_CENTER:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    aput-object v1, v10, v2

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->TOP_RIGHT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    aput-object v1, v10, v3

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->CENTER_LEFT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    aput-object v1, v10, v4

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->CENTER_CENTER:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    aput-object v1, v10, v5

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->CENTER_RIGHT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    aput-object v1, v10, v6

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->BOTTOM_LEFT:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    aput-object v1, v10, v7

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->BOTTOM_CENTER:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->$VALUES:[Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

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

    .line 1634
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1635
    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;
    .locals 6

    .line 1660
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->values()[Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1662
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1667
    :cond_1
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string p0, "Invalid ScreenPosition value: %s"

    invoke-static {v0, p0, v1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;
    .locals 1

    .line 1610
    const-class v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;
    .locals 1

    .line 1610
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->$VALUES:[Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 1644
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 1651
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
