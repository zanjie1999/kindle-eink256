.class public final enum Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;
.super Ljava/lang/Enum;
.source "OneTapBookOpenDebugUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgressInterpolationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

.field public static final enum ACCELERATE_DECELERATE:Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

.field public static final enum FAST_OUT_SLOW_IN:Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

.field public static final enum LINEAR:Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;


# instance fields
.field private debugDisplayName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 22
    new-instance v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    const/4 v1, 0x0

    const-string v2, "LINEAR"

    const-string v3, "Linear Interpolation"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;->LINEAR:Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    .line 23
    new-instance v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    const/4 v2, 0x1

    const-string v3, "FAST_OUT_SLOW_IN"

    const-string v4, "Fast Out Slow In interpolation"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;->FAST_OUT_SLOW_IN:Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    .line 24
    new-instance v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    const/4 v3, 0x2

    const-string v4, "ACCELERATE_DECELERATE"

    const-string v5, "Accelerate Decelerate Interpolation"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;->ACCELERATE_DECELERATE:Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    .line 21
    sget-object v5, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;->LINEAR:Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;->FAST_OUT_SLOW_IN:Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;->$VALUES:[Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;->debugDisplayName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;
    .locals 1

    .line 21
    sget-object v0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;->$VALUES:[Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/debug/OneTapBookOpenDebugUtils$ProgressInterpolationType;->debugDisplayName:Ljava/lang/String;

    return-object v0
.end method
