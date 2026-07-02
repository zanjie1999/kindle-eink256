.class public final enum Lcom/amazon/krf/platform/SelectionState$SelectionToolType;
.super Ljava/lang/Enum;
.source "SelectionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/SelectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectionToolType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/SelectionState$SelectionToolType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/SelectionState$SelectionToolType;

.field public static final enum FINGER:Lcom/amazon/krf/platform/SelectionState$SelectionToolType;

.field public static final enum PEN:Lcom/amazon/krf/platform/SelectionState$SelectionToolType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 56
    new-instance v0, Lcom/amazon/krf/platform/SelectionState$SelectionToolType;

    const/4 v1, 0x0

    const-string v2, "FINGER"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/SelectionState$SelectionToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/SelectionState$SelectionToolType;->FINGER:Lcom/amazon/krf/platform/SelectionState$SelectionToolType;

    new-instance v0, Lcom/amazon/krf/platform/SelectionState$SelectionToolType;

    const/4 v2, 0x1

    const-string v3, "PEN"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/SelectionState$SelectionToolType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/SelectionState$SelectionToolType;->PEN:Lcom/amazon/krf/platform/SelectionState$SelectionToolType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/krf/platform/SelectionState$SelectionToolType;

    .line 55
    sget-object v4, Lcom/amazon/krf/platform/SelectionState$SelectionToolType;->FINGER:Lcom/amazon/krf/platform/SelectionState$SelectionToolType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/krf/platform/SelectionState$SelectionToolType;->$VALUES:[Lcom/amazon/krf/platform/SelectionState$SelectionToolType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/SelectionState$SelectionToolType;
    .locals 1

    .line 55
    const-class v0, Lcom/amazon/krf/platform/SelectionState$SelectionToolType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/SelectionState$SelectionToolType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/SelectionState$SelectionToolType;
    .locals 1

    .line 55
    sget-object v0, Lcom/amazon/krf/platform/SelectionState$SelectionToolType;->$VALUES:[Lcom/amazon/krf/platform/SelectionState$SelectionToolType;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/SelectionState$SelectionToolType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/SelectionState$SelectionToolType;

    return-object v0
.end method
