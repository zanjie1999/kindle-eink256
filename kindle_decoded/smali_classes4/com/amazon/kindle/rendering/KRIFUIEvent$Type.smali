.class public final enum Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;
.super Ljava/lang/Enum;
.source "KRIFUIEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/rendering/KRIFUIEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

.field public static final enum DOUBLE_TAP:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

.field public static final enum DRAG:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

.field public static final enum FLING:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

.field public static final enum HOVER:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

.field public static final enum KEYSTROKE:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

.field public static final enum LONG_PRESS:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

.field public static final enum PINCH:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

.field public static final enum PINCH_FLING:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

.field public static final enum SINGLE_TAP:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

.field public static final enum SINGLE_TAP_UP:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

.field public static final enum UNKNOWN:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 16
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->UNKNOWN:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    .line 17
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    const/4 v2, 0x1

    const-string v3, "DRAG"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->DRAG:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    .line 18
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    const/4 v3, 0x2

    const-string v4, "HOVER"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->HOVER:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    .line 19
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    const/4 v4, 0x3

    const-string v5, "PINCH"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->PINCH:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    .line 20
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    const/4 v5, 0x4

    const-string v6, "PINCH_FLING"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->PINCH_FLING:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    .line 21
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    const/4 v6, 0x5

    const-string v7, "SINGLE_TAP"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->SINGLE_TAP:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    .line 22
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    const/4 v7, 0x6

    const-string v8, "SINGLE_TAP_UP"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->SINGLE_TAP_UP:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    .line 23
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    const/4 v8, 0x7

    const-string v9, "DOUBLE_TAP"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->DOUBLE_TAP:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    .line 24
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    const/16 v9, 0x8

    const-string v10, "LONG_PRESS"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->LONG_PRESS:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    .line 25
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    const/16 v10, 0x9

    const-string v11, "FLING"

    invoke-direct {v0, v11, v10}, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->FLING:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    .line 26
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    const/16 v11, 0xa

    const-string v12, "KEYSTROKE"

    invoke-direct {v0, v12, v11}, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->KEYSTROKE:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    .line 15
    sget-object v13, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->UNKNOWN:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    aput-object v13, v12, v1

    sget-object v1, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->DRAG:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    aput-object v1, v12, v2

    sget-object v1, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->HOVER:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    aput-object v1, v12, v3

    sget-object v1, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->PINCH:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    aput-object v1, v12, v4

    sget-object v1, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->PINCH_FLING:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    aput-object v1, v12, v5

    sget-object v1, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->SINGLE_TAP:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    aput-object v1, v12, v6

    sget-object v1, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->SINGLE_TAP_UP:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    aput-object v1, v12, v7

    sget-object v1, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->DOUBLE_TAP:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    aput-object v1, v12, v8

    sget-object v1, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->LONG_PRESS:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    aput-object v1, v12, v9

    sget-object v1, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->FLING:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->$VALUES:[Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->$VALUES:[Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    invoke-virtual {v0}, [Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    return-object v0
.end method
