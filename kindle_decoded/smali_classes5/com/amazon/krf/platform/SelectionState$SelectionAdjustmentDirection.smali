.class public final enum Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;
.super Ljava/lang/Enum;
.source "SelectionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/SelectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectionAdjustmentDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

.field public static final enum END_POSITION_DECREMENTED:Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

.field public static final enum END_POSITION_INCREMENTED:Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

.field public static final enum NOT_CHANGED:Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

.field public static final enum START_POSITION_DECREMENTED:Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

.field public static final enum START_POSITION_INCREMENTED:Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 45
    new-instance v0, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

    const/4 v1, 0x0

    const-string v2, "NOT_CHANGED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;->NOT_CHANGED:Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

    .line 46
    new-instance v0, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

    const/4 v2, 0x1

    const-string v3, "START_POSITION_DECREMENTED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;->START_POSITION_DECREMENTED:Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

    .line 47
    new-instance v0, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

    const/4 v3, 0x2

    const-string v4, "START_POSITION_INCREMENTED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;->START_POSITION_INCREMENTED:Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

    .line 48
    new-instance v0, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

    const/4 v4, 0x3

    const-string v5, "END_POSITION_DECREMENTED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;->END_POSITION_DECREMENTED:Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

    .line 49
    new-instance v0, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

    const/4 v5, 0x4

    const-string v6, "END_POSITION_INCREMENTED"

    invoke-direct {v0, v6, v5}, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;->END_POSITION_INCREMENTED:Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

    .line 44
    sget-object v7, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;->NOT_CHANGED:Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;->START_POSITION_DECREMENTED:Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;->START_POSITION_INCREMENTED:Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;->END_POSITION_DECREMENTED:Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;->$VALUES:[Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;
    .locals 1

    .line 44
    const-class v0, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;
    .locals 1

    .line 44
    sget-object v0, Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;->$VALUES:[Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;

    return-object v0
.end method
