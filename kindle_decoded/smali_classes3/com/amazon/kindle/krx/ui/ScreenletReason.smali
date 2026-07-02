.class public final enum Lcom/amazon/kindle/krx/ui/ScreenletReason;
.super Ljava/lang/Enum;
.source "ScreenletReason.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/ui/ScreenletReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/ui/ScreenletReason;

.field public static final enum ACTIVITY_INTENT:Lcom/amazon/kindle/krx/ui/ScreenletReason;

.field public static final enum ACTIVITY_START:Lcom/amazon/kindle/krx/ui/ScreenletReason;

.field public static final enum ACTIVITY_STOP:Lcom/amazon/kindle/krx/ui/ScreenletReason;

.field public static final enum BACK_BUTTON_TAP:Lcom/amazon/kindle/krx/ui/ScreenletReason;

.field public static final enum BOTTOM_BAR_BUTTON_TAP:Lcom/amazon/kindle/krx/ui/ScreenletReason;

.field public static final enum INLINE_SCREENLET_LAUNCH:Lcom/amazon/kindle/krx/ui/ScreenletReason;

.field public static final enum LOGOUT:Lcom/amazon/kindle/krx/ui/ScreenletReason;

.field public static final enum NAVIGATE_UP_BUTTON_TAP:Lcom/amazon/kindle/krx/ui/ScreenletReason;


# instance fields
.field private final displayName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/amazon/kindle/krx/ui/ScreenletReason;

    new-instance v1, Lcom/amazon/kindle/krx/ui/ScreenletReason;

    const/4 v2, 0x0

    const-string v3, "ACTIVITY_START"

    const-string v4, "ActivityStart"

    .line 10
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/krx/ui/ScreenletReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/krx/ui/ScreenletReason;->ACTIVITY_START:Lcom/amazon/kindle/krx/ui/ScreenletReason;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/ui/ScreenletReason;

    const/4 v2, 0x1

    const-string v3, "ACTIVITY_STOP"

    const-string v4, "ActivityStop"

    .line 11
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/krx/ui/ScreenletReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/krx/ui/ScreenletReason;->ACTIVITY_STOP:Lcom/amazon/kindle/krx/ui/ScreenletReason;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/ui/ScreenletReason;

    const/4 v2, 0x2

    const-string v3, "ACTIVITY_INTENT"

    const-string v4, "ActivityIntent"

    .line 12
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/krx/ui/ScreenletReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/krx/ui/ScreenletReason;->ACTIVITY_INTENT:Lcom/amazon/kindle/krx/ui/ScreenletReason;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/ui/ScreenletReason;

    const/4 v2, 0x3

    const-string v3, "BOTTOM_BAR_BUTTON_TAP"

    const-string v4, "BottomBarButtonTap"

    .line 13
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/krx/ui/ScreenletReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/krx/ui/ScreenletReason;->BOTTOM_BAR_BUTTON_TAP:Lcom/amazon/kindle/krx/ui/ScreenletReason;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/ui/ScreenletReason;

    const/4 v2, 0x4

    const-string v3, "BACK_BUTTON_TAP"

    const-string v4, "BackButtonTap"

    .line 14
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/krx/ui/ScreenletReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/krx/ui/ScreenletReason;->BACK_BUTTON_TAP:Lcom/amazon/kindle/krx/ui/ScreenletReason;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/ui/ScreenletReason;

    const/4 v2, 0x5

    const-string v3, "NAVIGATE_UP_BUTTON_TAP"

    const-string v4, "NavigateUpButtonTap"

    .line 15
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/krx/ui/ScreenletReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/krx/ui/ScreenletReason;->NAVIGATE_UP_BUTTON_TAP:Lcom/amazon/kindle/krx/ui/ScreenletReason;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/ui/ScreenletReason;

    const/4 v2, 0x6

    const-string v3, "INLINE_SCREENLET_LAUNCH"

    const-string v4, "InlineScreenletLaunch"

    .line 16
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/krx/ui/ScreenletReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/krx/ui/ScreenletReason;->INLINE_SCREENLET_LAUNCH:Lcom/amazon/kindle/krx/ui/ScreenletReason;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/krx/ui/ScreenletReason;

    const/4 v2, 0x7

    const-string v3, "LOGOUT"

    const-string v4, "LogOut"

    .line 17
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/krx/ui/ScreenletReason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/krx/ui/ScreenletReason;->LOGOUT:Lcom/amazon/kindle/krx/ui/ScreenletReason;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/krx/ui/ScreenletReason;->$VALUES:[Lcom/amazon/kindle/krx/ui/ScreenletReason;

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

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kindle/krx/ui/ScreenletReason;->displayName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/ScreenletReason;
    .locals 1

    const-class v0, Lcom/amazon/kindle/krx/ui/ScreenletReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/ui/ScreenletReason;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/ui/ScreenletReason;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/krx/ui/ScreenletReason;->$VALUES:[Lcom/amazon/kindle/krx/ui/ScreenletReason;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/ui/ScreenletReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/ui/ScreenletReason;

    return-object v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/ScreenletReason;->displayName:Ljava/lang/String;

    return-object v0
.end method
