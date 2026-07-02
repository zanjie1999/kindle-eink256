.class public final enum Lcom/amazon/ksdk/presets/ToggleStatus;
.super Ljava/lang/Enum;
.source "ToggleStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ksdk/presets/ToggleStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ksdk/presets/ToggleStatus;

.field public static final enum INVALID:Lcom/amazon/ksdk/presets/ToggleStatus;

.field public static final enum OFF:Lcom/amazon/ksdk/presets/ToggleStatus;

.field public static final enum ON:Lcom/amazon/ksdk/presets/ToggleStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Lcom/amazon/ksdk/presets/ToggleStatus;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ksdk/presets/ToggleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/ToggleStatus;->INVALID:Lcom/amazon/ksdk/presets/ToggleStatus;

    .line 14
    new-instance v0, Lcom/amazon/ksdk/presets/ToggleStatus;

    const/4 v2, 0x1

    const-string v3, "ON"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ksdk/presets/ToggleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/ToggleStatus;->ON:Lcom/amazon/ksdk/presets/ToggleStatus;

    .line 15
    new-instance v0, Lcom/amazon/ksdk/presets/ToggleStatus;

    const/4 v3, 0x2

    const-string v4, "OFF"

    invoke-direct {v0, v4, v3}, Lcom/amazon/ksdk/presets/ToggleStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/ToggleStatus;->OFF:Lcom/amazon/ksdk/presets/ToggleStatus;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/ksdk/presets/ToggleStatus;

    .line 12
    sget-object v5, Lcom/amazon/ksdk/presets/ToggleStatus;->INVALID:Lcom/amazon/ksdk/presets/ToggleStatus;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/ksdk/presets/ToggleStatus;->ON:Lcom/amazon/ksdk/presets/ToggleStatus;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/ksdk/presets/ToggleStatus;->$VALUES:[Lcom/amazon/ksdk/presets/ToggleStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/ksdk/presets/ToggleStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ksdk/presets/ToggleStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ksdk/presets/ToggleStatus;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/ksdk/presets/ToggleStatus;->$VALUES:[Lcom/amazon/ksdk/presets/ToggleStatus;

    invoke-virtual {v0}, [Lcom/amazon/ksdk/presets/ToggleStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ksdk/presets/ToggleStatus;

    return-object v0
.end method
