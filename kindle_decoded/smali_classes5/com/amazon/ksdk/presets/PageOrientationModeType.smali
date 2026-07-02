.class public final enum Lcom/amazon/ksdk/presets/PageOrientationModeType;
.super Ljava/lang/Enum;
.source "PageOrientationModeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ksdk/presets/PageOrientationModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ksdk/presets/PageOrientationModeType;

.field public static final enum INVALID:Lcom/amazon/ksdk/presets/PageOrientationModeType;

.field public static final enum LANDSCAPE:Lcom/amazon/ksdk/presets/PageOrientationModeType;

.field public static final enum LANDSCAPE_LEFT:Lcom/amazon/ksdk/presets/PageOrientationModeType;

.field public static final enum NONE:Lcom/amazon/ksdk/presets/PageOrientationModeType;

.field public static final enum PORTRAIT:Lcom/amazon/ksdk/presets/PageOrientationModeType;

.field public static final enum PORTRAIT_DOWN:Lcom/amazon/ksdk/presets/PageOrientationModeType;

.field public static final enum SYSTEM:Lcom/amazon/ksdk/presets/PageOrientationModeType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 13
    new-instance v0, Lcom/amazon/ksdk/presets/PageOrientationModeType;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ksdk/presets/PageOrientationModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/PageOrientationModeType;->INVALID:Lcom/amazon/ksdk/presets/PageOrientationModeType;

    .line 14
    new-instance v0, Lcom/amazon/ksdk/presets/PageOrientationModeType;

    const/4 v2, 0x1

    const-string v3, "PORTRAIT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ksdk/presets/PageOrientationModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/PageOrientationModeType;->PORTRAIT:Lcom/amazon/ksdk/presets/PageOrientationModeType;

    .line 15
    new-instance v0, Lcom/amazon/ksdk/presets/PageOrientationModeType;

    const/4 v3, 0x2

    const-string v4, "PORTRAIT_DOWN"

    invoke-direct {v0, v4, v3}, Lcom/amazon/ksdk/presets/PageOrientationModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/PageOrientationModeType;->PORTRAIT_DOWN:Lcom/amazon/ksdk/presets/PageOrientationModeType;

    .line 16
    new-instance v0, Lcom/amazon/ksdk/presets/PageOrientationModeType;

    const/4 v4, 0x3

    const-string v5, "LANDSCAPE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/ksdk/presets/PageOrientationModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/PageOrientationModeType;->LANDSCAPE:Lcom/amazon/ksdk/presets/PageOrientationModeType;

    .line 17
    new-instance v0, Lcom/amazon/ksdk/presets/PageOrientationModeType;

    const/4 v5, 0x4

    const-string v6, "LANDSCAPE_LEFT"

    invoke-direct {v0, v6, v5}, Lcom/amazon/ksdk/presets/PageOrientationModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/PageOrientationModeType;->LANDSCAPE_LEFT:Lcom/amazon/ksdk/presets/PageOrientationModeType;

    .line 18
    new-instance v0, Lcom/amazon/ksdk/presets/PageOrientationModeType;

    const/4 v6, 0x5

    const-string v7, "SYSTEM"

    invoke-direct {v0, v7, v6}, Lcom/amazon/ksdk/presets/PageOrientationModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/PageOrientationModeType;->SYSTEM:Lcom/amazon/ksdk/presets/PageOrientationModeType;

    .line 19
    new-instance v0, Lcom/amazon/ksdk/presets/PageOrientationModeType;

    const/4 v7, 0x6

    const-string v8, "NONE"

    invoke-direct {v0, v8, v7}, Lcom/amazon/ksdk/presets/PageOrientationModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/PageOrientationModeType;->NONE:Lcom/amazon/ksdk/presets/PageOrientationModeType;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/ksdk/presets/PageOrientationModeType;

    .line 12
    sget-object v9, Lcom/amazon/ksdk/presets/PageOrientationModeType;->INVALID:Lcom/amazon/ksdk/presets/PageOrientationModeType;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/ksdk/presets/PageOrientationModeType;->PORTRAIT:Lcom/amazon/ksdk/presets/PageOrientationModeType;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/ksdk/presets/PageOrientationModeType;->PORTRAIT_DOWN:Lcom/amazon/ksdk/presets/PageOrientationModeType;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/ksdk/presets/PageOrientationModeType;->LANDSCAPE:Lcom/amazon/ksdk/presets/PageOrientationModeType;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/ksdk/presets/PageOrientationModeType;->LANDSCAPE_LEFT:Lcom/amazon/ksdk/presets/PageOrientationModeType;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/ksdk/presets/PageOrientationModeType;->SYSTEM:Lcom/amazon/ksdk/presets/PageOrientationModeType;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/ksdk/presets/PageOrientationModeType;->$VALUES:[Lcom/amazon/ksdk/presets/PageOrientationModeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ksdk/presets/PageOrientationModeType;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/ksdk/presets/PageOrientationModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ksdk/presets/PageOrientationModeType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ksdk/presets/PageOrientationModeType;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/ksdk/presets/PageOrientationModeType;->$VALUES:[Lcom/amazon/ksdk/presets/PageOrientationModeType;

    invoke-virtual {v0}, [Lcom/amazon/ksdk/presets/PageOrientationModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ksdk/presets/PageOrientationModeType;

    return-object v0
.end method
