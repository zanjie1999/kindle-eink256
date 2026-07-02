.class public final enum Lcom/amazon/ksdk/presets/ReadingPresetType;
.super Ljava/lang/Enum;
.source "ReadingPresetType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ksdk/presets/ReadingPresetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ksdk/presets/ReadingPresetType;

.field public static final enum BUILT_IN:Lcom/amazon/ksdk/presets/ReadingPresetType;

.field public static final enum BUILT_IN_FALLBACK:Lcom/amazon/ksdk/presets/ReadingPresetType;

.field public static final enum CUSTOM:Lcom/amazon/ksdk/presets/ReadingPresetType;

.field public static final enum INVALID:Lcom/amazon/ksdk/presets/ReadingPresetType;

.field public static final enum USER_DEFINED:Lcom/amazon/ksdk/presets/ReadingPresetType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 15
    new-instance v0, Lcom/amazon/ksdk/presets/ReadingPresetType;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ksdk/presets/ReadingPresetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/ReadingPresetType;->INVALID:Lcom/amazon/ksdk/presets/ReadingPresetType;

    .line 16
    new-instance v0, Lcom/amazon/ksdk/presets/ReadingPresetType;

    const/4 v2, 0x1

    const-string v3, "BUILT_IN"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ksdk/presets/ReadingPresetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/ReadingPresetType;->BUILT_IN:Lcom/amazon/ksdk/presets/ReadingPresetType;

    .line 17
    new-instance v0, Lcom/amazon/ksdk/presets/ReadingPresetType;

    const/4 v3, 0x2

    const-string v4, "CUSTOM"

    invoke-direct {v0, v4, v3}, Lcom/amazon/ksdk/presets/ReadingPresetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/ReadingPresetType;->CUSTOM:Lcom/amazon/ksdk/presets/ReadingPresetType;

    .line 18
    new-instance v0, Lcom/amazon/ksdk/presets/ReadingPresetType;

    const/4 v4, 0x3

    const-string v5, "USER_DEFINED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/ksdk/presets/ReadingPresetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/ReadingPresetType;->USER_DEFINED:Lcom/amazon/ksdk/presets/ReadingPresetType;

    .line 19
    new-instance v0, Lcom/amazon/ksdk/presets/ReadingPresetType;

    const/4 v5, 0x4

    const-string v6, "BUILT_IN_FALLBACK"

    invoke-direct {v0, v6, v5}, Lcom/amazon/ksdk/presets/ReadingPresetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/ReadingPresetType;->BUILT_IN_FALLBACK:Lcom/amazon/ksdk/presets/ReadingPresetType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/ksdk/presets/ReadingPresetType;

    .line 14
    sget-object v7, Lcom/amazon/ksdk/presets/ReadingPresetType;->INVALID:Lcom/amazon/ksdk/presets/ReadingPresetType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/ksdk/presets/ReadingPresetType;->BUILT_IN:Lcom/amazon/ksdk/presets/ReadingPresetType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/ksdk/presets/ReadingPresetType;->CUSTOM:Lcom/amazon/ksdk/presets/ReadingPresetType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/ksdk/presets/ReadingPresetType;->USER_DEFINED:Lcom/amazon/ksdk/presets/ReadingPresetType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/ksdk/presets/ReadingPresetType;->$VALUES:[Lcom/amazon/ksdk/presets/ReadingPresetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ksdk/presets/ReadingPresetType;
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/ksdk/presets/ReadingPresetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ksdk/presets/ReadingPresetType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ksdk/presets/ReadingPresetType;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/ksdk/presets/ReadingPresetType;->$VALUES:[Lcom/amazon/ksdk/presets/ReadingPresetType;

    invoke-virtual {v0}, [Lcom/amazon/ksdk/presets/ReadingPresetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ksdk/presets/ReadingPresetType;

    return-object v0
.end method
