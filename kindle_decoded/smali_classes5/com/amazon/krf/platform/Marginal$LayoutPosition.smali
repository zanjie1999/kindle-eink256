.class public final enum Lcom/amazon/krf/platform/Marginal$LayoutPosition;
.super Ljava/lang/Enum;
.source "Marginal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/Marginal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/Marginal$LayoutPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/Marginal$LayoutPosition;

.field public static final enum LEFT:Lcom/amazon/krf/platform/Marginal$LayoutPosition;

.field public static final enum MIDDLE:Lcom/amazon/krf/platform/Marginal$LayoutPosition;

.field public static final enum RIGHT:Lcom/amazon/krf/platform/Marginal$LayoutPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 43
    new-instance v0, Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    const/4 v1, 0x0

    const-string v2, "LEFT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/Marginal$LayoutPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/Marginal$LayoutPosition;->LEFT:Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    .line 48
    new-instance v0, Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    const/4 v2, 0x1

    const-string v3, "MIDDLE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/Marginal$LayoutPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/Marginal$LayoutPosition;->MIDDLE:Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    .line 53
    new-instance v0, Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    const/4 v3, 0x2

    const-string v4, "RIGHT"

    invoke-direct {v0, v4, v3}, Lcom/amazon/krf/platform/Marginal$LayoutPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/Marginal$LayoutPosition;->RIGHT:Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    .line 38
    sget-object v5, Lcom/amazon/krf/platform/Marginal$LayoutPosition;->LEFT:Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/krf/platform/Marginal$LayoutPosition;->MIDDLE:Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/krf/platform/Marginal$LayoutPosition;->$VALUES:[Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static createFromInt(I)Lcom/amazon/krf/platform/Marginal$LayoutPosition;
    .locals 1

    .line 56
    invoke-static {}, Lcom/amazon/krf/platform/Marginal$LayoutPosition;->values()[Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/Marginal$LayoutPosition;
    .locals 1

    .line 38
    const-class v0, Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/Marginal$LayoutPosition;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/krf/platform/Marginal$LayoutPosition;->$VALUES:[Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/Marginal$LayoutPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/Marginal$LayoutPosition;

    return-object v0
.end method
