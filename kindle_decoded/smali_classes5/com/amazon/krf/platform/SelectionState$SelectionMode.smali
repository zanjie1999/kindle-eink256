.class public final enum Lcom/amazon/krf/platform/SelectionState$SelectionMode;
.super Ljava/lang/Enum;
.source "SelectionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/SelectionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/SelectionState$SelectionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/SelectionState$SelectionMode;

.field public static final enum QUICKHIGHLIGHT:Lcom/amazon/krf/platform/SelectionState$SelectionMode;

.field public static final enum REGULAR:Lcom/amazon/krf/platform/SelectionState$SelectionMode;

.field public static final enum UNKNOWN:Lcom/amazon/krf/platform/SelectionState$SelectionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 38
    new-instance v0, Lcom/amazon/krf/platform/SelectionState$SelectionMode;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/SelectionState$SelectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/SelectionState$SelectionMode;->UNKNOWN:Lcom/amazon/krf/platform/SelectionState$SelectionMode;

    new-instance v0, Lcom/amazon/krf/platform/SelectionState$SelectionMode;

    const/4 v2, 0x1

    const-string v3, "QUICKHIGHLIGHT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/SelectionState$SelectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/SelectionState$SelectionMode;->QUICKHIGHLIGHT:Lcom/amazon/krf/platform/SelectionState$SelectionMode;

    new-instance v0, Lcom/amazon/krf/platform/SelectionState$SelectionMode;

    const/4 v3, 0x2

    const-string v4, "REGULAR"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/SelectionState$SelectionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/SelectionState$SelectionMode;->REGULAR:Lcom/amazon/krf/platform/SelectionState$SelectionMode;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/krf/platform/SelectionState$SelectionMode;

    .line 37
    sget-object v5, Lcom/amazon/krf/platform/SelectionState$SelectionMode;->UNKNOWN:Lcom/amazon/krf/platform/SelectionState$SelectionMode;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/krf/platform/SelectionState$SelectionMode;->QUICKHIGHLIGHT:Lcom/amazon/krf/platform/SelectionState$SelectionMode;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/krf/platform/SelectionState$SelectionMode;->$VALUES:[Lcom/amazon/krf/platform/SelectionState$SelectionMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/SelectionState$SelectionMode;
    .locals 1

    .line 37
    const-class v0, Lcom/amazon/krf/platform/SelectionState$SelectionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/SelectionState$SelectionMode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/SelectionState$SelectionMode;
    .locals 1

    .line 37
    sget-object v0, Lcom/amazon/krf/platform/SelectionState$SelectionMode;->$VALUES:[Lcom/amazon/krf/platform/SelectionState$SelectionMode;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/SelectionState$SelectionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/SelectionState$SelectionMode;

    return-object v0
.end method
