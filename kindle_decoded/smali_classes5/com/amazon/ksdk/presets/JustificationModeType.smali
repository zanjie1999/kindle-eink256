.class public final enum Lcom/amazon/ksdk/presets/JustificationModeType;
.super Ljava/lang/Enum;
.source "JustificationModeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ksdk/presets/JustificationModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ksdk/presets/JustificationModeType;

.field public static final enum INVALID:Lcom/amazon/ksdk/presets/JustificationModeType;

.field public static final enum JUSTIFIED:Lcom/amazon/ksdk/presets/JustificationModeType;

.field public static final enum NOT_JUSTIFIED:Lcom/amazon/ksdk/presets/JustificationModeType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Lcom/amazon/ksdk/presets/JustificationModeType;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ksdk/presets/JustificationModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/JustificationModeType;->INVALID:Lcom/amazon/ksdk/presets/JustificationModeType;

    .line 14
    new-instance v0, Lcom/amazon/ksdk/presets/JustificationModeType;

    const/4 v2, 0x1

    const-string v3, "NOT_JUSTIFIED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ksdk/presets/JustificationModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/JustificationModeType;->NOT_JUSTIFIED:Lcom/amazon/ksdk/presets/JustificationModeType;

    .line 15
    new-instance v0, Lcom/amazon/ksdk/presets/JustificationModeType;

    const/4 v3, 0x2

    const-string v4, "JUSTIFIED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/ksdk/presets/JustificationModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/JustificationModeType;->JUSTIFIED:Lcom/amazon/ksdk/presets/JustificationModeType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/ksdk/presets/JustificationModeType;

    .line 12
    sget-object v5, Lcom/amazon/ksdk/presets/JustificationModeType;->INVALID:Lcom/amazon/ksdk/presets/JustificationModeType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/ksdk/presets/JustificationModeType;->NOT_JUSTIFIED:Lcom/amazon/ksdk/presets/JustificationModeType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/ksdk/presets/JustificationModeType;->$VALUES:[Lcom/amazon/ksdk/presets/JustificationModeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ksdk/presets/JustificationModeType;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/ksdk/presets/JustificationModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ksdk/presets/JustificationModeType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ksdk/presets/JustificationModeType;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/ksdk/presets/JustificationModeType;->$VALUES:[Lcom/amazon/ksdk/presets/JustificationModeType;

    invoke-virtual {v0}, [Lcom/amazon/ksdk/presets/JustificationModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ksdk/presets/JustificationModeType;

    return-object v0
.end method
