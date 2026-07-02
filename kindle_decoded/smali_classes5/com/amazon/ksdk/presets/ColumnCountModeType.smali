.class public final enum Lcom/amazon/ksdk/presets/ColumnCountModeType;
.super Ljava/lang/Enum;
.source "ColumnCountModeType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ksdk/presets/ColumnCountModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ksdk/presets/ColumnCountModeType;

.field public static final enum DOUBLE:Lcom/amazon/ksdk/presets/ColumnCountModeType;

.field public static final enum INVALID:Lcom/amazon/ksdk/presets/ColumnCountModeType;

.field public static final enum SINGLE:Lcom/amazon/ksdk/presets/ColumnCountModeType;

.field public static final enum TRIPLE:Lcom/amazon/ksdk/presets/ColumnCountModeType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 13
    new-instance v0, Lcom/amazon/ksdk/presets/ColumnCountModeType;

    const/4 v1, 0x0

    const-string v2, "INVALID"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ksdk/presets/ColumnCountModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/ColumnCountModeType;->INVALID:Lcom/amazon/ksdk/presets/ColumnCountModeType;

    .line 14
    new-instance v0, Lcom/amazon/ksdk/presets/ColumnCountModeType;

    const/4 v2, 0x1

    const-string v3, "SINGLE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ksdk/presets/ColumnCountModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/ColumnCountModeType;->SINGLE:Lcom/amazon/ksdk/presets/ColumnCountModeType;

    .line 15
    new-instance v0, Lcom/amazon/ksdk/presets/ColumnCountModeType;

    const/4 v3, 0x2

    const-string v4, "DOUBLE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/ksdk/presets/ColumnCountModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/ColumnCountModeType;->DOUBLE:Lcom/amazon/ksdk/presets/ColumnCountModeType;

    .line 16
    new-instance v0, Lcom/amazon/ksdk/presets/ColumnCountModeType;

    const/4 v4, 0x3

    const-string v5, "TRIPLE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/ksdk/presets/ColumnCountModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ksdk/presets/ColumnCountModeType;->TRIPLE:Lcom/amazon/ksdk/presets/ColumnCountModeType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/ksdk/presets/ColumnCountModeType;

    .line 12
    sget-object v6, Lcom/amazon/ksdk/presets/ColumnCountModeType;->INVALID:Lcom/amazon/ksdk/presets/ColumnCountModeType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/ksdk/presets/ColumnCountModeType;->SINGLE:Lcom/amazon/ksdk/presets/ColumnCountModeType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/ksdk/presets/ColumnCountModeType;->DOUBLE:Lcom/amazon/ksdk/presets/ColumnCountModeType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/ksdk/presets/ColumnCountModeType;->$VALUES:[Lcom/amazon/ksdk/presets/ColumnCountModeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ksdk/presets/ColumnCountModeType;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/ksdk/presets/ColumnCountModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ksdk/presets/ColumnCountModeType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ksdk/presets/ColumnCountModeType;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/ksdk/presets/ColumnCountModeType;->$VALUES:[Lcom/amazon/ksdk/presets/ColumnCountModeType;

    invoke-virtual {v0}, [Lcom/amazon/ksdk/presets/ColumnCountModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ksdk/presets/ColumnCountModeType;

    return-object v0
.end method
