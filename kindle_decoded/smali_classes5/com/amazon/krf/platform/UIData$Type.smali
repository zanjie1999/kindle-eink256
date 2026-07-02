.class public final enum Lcom/amazon/krf/platform/UIData$Type;
.super Ljava/lang/Enum;
.source "UIData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/UIData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/UIData$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/UIData$Type;

.field public static final enum DOUBLE_TAP:Lcom/amazon/krf/platform/UIData$Type;

.field public static final enum DOUBLE_TAP_UP:Lcom/amazon/krf/platform/UIData$Type;

.field public static final enum DRAG:Lcom/amazon/krf/platform/UIData$Type;

.field public static final enum FLING:Lcom/amazon/krf/platform/UIData$Type;

.field public static final enum HOVER:Lcom/amazon/krf/platform/UIData$Type;

.field public static final enum KEYSTROKE:Lcom/amazon/krf/platform/UIData$Type;

.field public static final enum LONG_PRESS:Lcom/amazon/krf/platform/UIData$Type;

.field public static final enum PINCH:Lcom/amazon/krf/platform/UIData$Type;

.field public static final enum PINCH_FLING:Lcom/amazon/krf/platform/UIData$Type;

.field public static final enum RIGHT_CLICK:Lcom/amazon/krf/platform/UIData$Type;

.field public static final enum SINGLE_TAP:Lcom/amazon/krf/platform/UIData$Type;

.field public static final enum SINGLE_TAP_UP:Lcom/amazon/krf/platform/UIData$Type;

.field public static final enum TRIPLE_TAP:Lcom/amazon/krf/platform/UIData$Type;

.field public static final enum TRIPLE_TAP_UP:Lcom/amazon/krf/platform/UIData$Type;

.field public static final enum UNKNOWN:Lcom/amazon/krf/platform/UIData$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 36
    new-instance v0, Lcom/amazon/krf/platform/UIData$Type;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/UIData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/UIData$Type;->UNKNOWN:Lcom/amazon/krf/platform/UIData$Type;

    .line 40
    new-instance v0, Lcom/amazon/krf/platform/UIData$Type;

    const/4 v2, 0x1

    const-string v3, "DRAG"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/UIData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/UIData$Type;->DRAG:Lcom/amazon/krf/platform/UIData$Type;

    .line 44
    new-instance v0, Lcom/amazon/krf/platform/UIData$Type;

    const/4 v3, 0x2

    const-string v4, "HOVER"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/UIData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/UIData$Type;->HOVER:Lcom/amazon/krf/platform/UIData$Type;

    .line 48
    new-instance v0, Lcom/amazon/krf/platform/UIData$Type;

    const/4 v4, 0x3

    const-string v5, "PINCH"

    invoke-direct {v0, v5, v4}, Lcom/amazon/krf/platform/UIData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/UIData$Type;->PINCH:Lcom/amazon/krf/platform/UIData$Type;

    .line 52
    new-instance v0, Lcom/amazon/krf/platform/UIData$Type;

    const/4 v5, 0x4

    const-string v6, "PINCH_FLING"

    invoke-direct {v0, v6, v5}, Lcom/amazon/krf/platform/UIData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/UIData$Type;->PINCH_FLING:Lcom/amazon/krf/platform/UIData$Type;

    .line 56
    new-instance v0, Lcom/amazon/krf/platform/UIData$Type;

    const/4 v6, 0x5

    const-string v7, "SINGLE_TAP_UP"

    invoke-direct {v0, v7, v6}, Lcom/amazon/krf/platform/UIData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/UIData$Type;->SINGLE_TAP_UP:Lcom/amazon/krf/platform/UIData$Type;

    .line 60
    new-instance v0, Lcom/amazon/krf/platform/UIData$Type;

    const/4 v7, 0x6

    const-string v8, "SINGLE_TAP"

    invoke-direct {v0, v8, v7}, Lcom/amazon/krf/platform/UIData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/UIData$Type;->SINGLE_TAP:Lcom/amazon/krf/platform/UIData$Type;

    .line 64
    new-instance v0, Lcom/amazon/krf/platform/UIData$Type;

    const/4 v8, 0x7

    const-string v9, "DOUBLE_TAP_UP"

    invoke-direct {v0, v9, v8}, Lcom/amazon/krf/platform/UIData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/UIData$Type;->DOUBLE_TAP_UP:Lcom/amazon/krf/platform/UIData$Type;

    .line 68
    new-instance v0, Lcom/amazon/krf/platform/UIData$Type;

    const/16 v9, 0x8

    const-string v10, "DOUBLE_TAP"

    invoke-direct {v0, v10, v9}, Lcom/amazon/krf/platform/UIData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/UIData$Type;->DOUBLE_TAP:Lcom/amazon/krf/platform/UIData$Type;

    .line 72
    new-instance v0, Lcom/amazon/krf/platform/UIData$Type;

    const/16 v10, 0x9

    const-string v11, "TRIPLE_TAP_UP"

    invoke-direct {v0, v11, v10}, Lcom/amazon/krf/platform/UIData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/UIData$Type;->TRIPLE_TAP_UP:Lcom/amazon/krf/platform/UIData$Type;

    .line 76
    new-instance v0, Lcom/amazon/krf/platform/UIData$Type;

    const/16 v11, 0xa

    const-string v12, "TRIPLE_TAP"

    invoke-direct {v0, v12, v11}, Lcom/amazon/krf/platform/UIData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/UIData$Type;->TRIPLE_TAP:Lcom/amazon/krf/platform/UIData$Type;

    .line 80
    new-instance v0, Lcom/amazon/krf/platform/UIData$Type;

    const/16 v12, 0xb

    const-string v13, "LONG_PRESS"

    invoke-direct {v0, v13, v12}, Lcom/amazon/krf/platform/UIData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/UIData$Type;->LONG_PRESS:Lcom/amazon/krf/platform/UIData$Type;

    .line 84
    new-instance v0, Lcom/amazon/krf/platform/UIData$Type;

    const/16 v13, 0xc

    const-string v14, "FLING"

    invoke-direct {v0, v14, v13}, Lcom/amazon/krf/platform/UIData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/UIData$Type;->FLING:Lcom/amazon/krf/platform/UIData$Type;

    .line 88
    new-instance v0, Lcom/amazon/krf/platform/UIData$Type;

    const/16 v14, 0xd

    const-string v15, "KEYSTROKE"

    invoke-direct {v0, v15, v14}, Lcom/amazon/krf/platform/UIData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/UIData$Type;->KEYSTROKE:Lcom/amazon/krf/platform/UIData$Type;

    .line 92
    new-instance v0, Lcom/amazon/krf/platform/UIData$Type;

    const/16 v15, 0xe

    const-string v14, "RIGHT_CLICK"

    invoke-direct {v0, v14, v15}, Lcom/amazon/krf/platform/UIData$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/UIData$Type;->RIGHT_CLICK:Lcom/amazon/krf/platform/UIData$Type;

    const/16 v14, 0xf

    new-array v14, v14, [Lcom/amazon/krf/platform/UIData$Type;

    .line 35
    sget-object v16, Lcom/amazon/krf/platform/UIData$Type;->UNKNOWN:Lcom/amazon/krf/platform/UIData$Type;

    aput-object v16, v14, v1

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->DRAG:Lcom/amazon/krf/platform/UIData$Type;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->HOVER:Lcom/amazon/krf/platform/UIData$Type;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->PINCH:Lcom/amazon/krf/platform/UIData$Type;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->PINCH_FLING:Lcom/amazon/krf/platform/UIData$Type;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->SINGLE_TAP_UP:Lcom/amazon/krf/platform/UIData$Type;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->SINGLE_TAP:Lcom/amazon/krf/platform/UIData$Type;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->DOUBLE_TAP_UP:Lcom/amazon/krf/platform/UIData$Type;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->DOUBLE_TAP:Lcom/amazon/krf/platform/UIData$Type;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->TRIPLE_TAP_UP:Lcom/amazon/krf/platform/UIData$Type;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->TRIPLE_TAP:Lcom/amazon/krf/platform/UIData$Type;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->LONG_PRESS:Lcom/amazon/krf/platform/UIData$Type;

    aput-object v1, v14, v12

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->FLING:Lcom/amazon/krf/platform/UIData$Type;

    aput-object v1, v14, v13

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->KEYSTROKE:Lcom/amazon/krf/platform/UIData$Type;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lcom/amazon/krf/platform/UIData$Type;->$VALUES:[Lcom/amazon/krf/platform/UIData$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/UIData$Type;
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/krf/platform/UIData$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/UIData$Type;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/UIData$Type;
    .locals 1

    .line 35
    sget-object v0, Lcom/amazon/krf/platform/UIData$Type;->$VALUES:[Lcom/amazon/krf/platform/UIData$Type;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/UIData$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/UIData$Type;

    return-object v0
.end method
