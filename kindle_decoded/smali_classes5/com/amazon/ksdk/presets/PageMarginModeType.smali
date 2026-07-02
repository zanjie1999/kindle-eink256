.class public final enum Lcom/amazon/ksdk/presets/PageMarginModeType;
.super Ljava/lang/Enum;
.source "PageMarginModeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ksdk/presets/PageMarginModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ksdk/presets/PageMarginModeType;

.field public static final enum INVALID:Lcom/amazon/ksdk/presets/PageMarginModeType;

.field public static final enum NARROW:Lcom/amazon/ksdk/presets/PageMarginModeType;

.field public static final enum NORMAL:Lcom/amazon/ksdk/presets/PageMarginModeType;

.field public static final enum WIDE:Lcom/amazon/ksdk/presets/PageMarginModeType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 12
    new-instance v0, Lcom/amazon/ksdk/presets/PageMarginModeType;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ksdk/presets/PageMarginModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/PageMarginModeType;->INVALID:Lcom/amazon/ksdk/presets/PageMarginModeType;

    .line 13
    new-instance v0, Lcom/amazon/ksdk/presets/PageMarginModeType;

    const/4 v2, 0x1

    const-string v3, "NARROW"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ksdk/presets/PageMarginModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/PageMarginModeType;->NARROW:Lcom/amazon/ksdk/presets/PageMarginModeType;

    .line 14
    new-instance v0, Lcom/amazon/ksdk/presets/PageMarginModeType;

    const/4 v3, 0x2

    const-string v4, "NORMAL"

    invoke-direct {v0, v4, v3}, Lcom/amazon/ksdk/presets/PageMarginModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/PageMarginModeType;->NORMAL:Lcom/amazon/ksdk/presets/PageMarginModeType;

    .line 15
    new-instance v0, Lcom/amazon/ksdk/presets/PageMarginModeType;

    const/4 v4, 0x3

    const-string v5, "WIDE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/ksdk/presets/PageMarginModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/PageMarginModeType;->WIDE:Lcom/amazon/ksdk/presets/PageMarginModeType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/ksdk/presets/PageMarginModeType;

    .line 11
    sget-object v6, Lcom/amazon/ksdk/presets/PageMarginModeType;->INVALID:Lcom/amazon/ksdk/presets/PageMarginModeType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/ksdk/presets/PageMarginModeType;->NARROW:Lcom/amazon/ksdk/presets/PageMarginModeType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/ksdk/presets/PageMarginModeType;->NORMAL:Lcom/amazon/ksdk/presets/PageMarginModeType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/ksdk/presets/PageMarginModeType;->$VALUES:[Lcom/amazon/ksdk/presets/PageMarginModeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ksdk/presets/PageMarginModeType;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/ksdk/presets/PageMarginModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ksdk/presets/PageMarginModeType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ksdk/presets/PageMarginModeType;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/ksdk/presets/PageMarginModeType;->$VALUES:[Lcom/amazon/ksdk/presets/PageMarginModeType;

    invoke-virtual {v0}, [Lcom/amazon/ksdk/presets/PageMarginModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ksdk/presets/PageMarginModeType;

    return-object v0
.end method
