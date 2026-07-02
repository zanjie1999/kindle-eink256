.class public final enum Lcom/amazon/ksdk/presets/ReadingRulerColorType;
.super Ljava/lang/Enum;
.source "ReadingRulerColorType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ksdk/presets/ReadingRulerColorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ksdk/presets/ReadingRulerColorType;

.field public static final enum BLUE:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

.field public static final enum GRAY:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

.field public static final enum GREEN:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

.field public static final enum INVALID:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

.field public static final enum ORANGE:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

.field public static final enum PURPLE:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

.field public static final enum RED:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

.field public static final enum YELLOW:Lcom/amazon/ksdk/presets/ReadingRulerColorType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 13
    new-instance v0, Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ksdk/presets/ReadingRulerColorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->INVALID:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    .line 14
    new-instance v0, Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    const/4 v2, 0x1

    const-string v3, "GRAY"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ksdk/presets/ReadingRulerColorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->GRAY:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    .line 15
    new-instance v0, Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    const/4 v3, 0x2

    const-string v4, "BLUE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/ksdk/presets/ReadingRulerColorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->BLUE:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    .line 16
    new-instance v0, Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    const/4 v4, 0x3

    const-string v5, "RED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/ksdk/presets/ReadingRulerColorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->RED:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    .line 17
    new-instance v0, Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    const/4 v5, 0x4

    const-string v6, "YELLOW"

    invoke-direct {v0, v6, v5}, Lcom/amazon/ksdk/presets/ReadingRulerColorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->YELLOW:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    .line 18
    new-instance v0, Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    const/4 v6, 0x5

    const-string v7, "ORANGE"

    invoke-direct {v0, v7, v6}, Lcom/amazon/ksdk/presets/ReadingRulerColorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->ORANGE:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    .line 19
    new-instance v0, Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    const/4 v7, 0x6

    const-string v8, "PURPLE"

    invoke-direct {v0, v8, v7}, Lcom/amazon/ksdk/presets/ReadingRulerColorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->PURPLE:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    .line 20
    new-instance v0, Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    const/4 v8, 0x7

    const-string v9, "GREEN"

    invoke-direct {v0, v9, v8}, Lcom/amazon/ksdk/presets/ReadingRulerColorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->GREEN:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    .line 12
    sget-object v10, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->INVALID:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->GRAY:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->BLUE:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->RED:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->YELLOW:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->ORANGE:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->PURPLE:Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->$VALUES:[Lcom/amazon/ksdk/presets/ReadingRulerColorType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ksdk/presets/ReadingRulerColorType;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ksdk/presets/ReadingRulerColorType;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/ksdk/presets/ReadingRulerColorType;->$VALUES:[Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    invoke-virtual {v0}, [Lcom/amazon/ksdk/presets/ReadingRulerColorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ksdk/presets/ReadingRulerColorType;

    return-object v0
.end method
