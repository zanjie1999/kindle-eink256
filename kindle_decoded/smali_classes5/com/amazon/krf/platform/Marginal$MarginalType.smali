.class public final enum Lcom/amazon/krf/platform/Marginal$MarginalType;
.super Ljava/lang/Enum;
.source "Marginal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/krf/platform/Marginal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MarginalType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/krf/platform/Marginal$MarginalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/krf/platform/Marginal$MarginalType;

.field public static final enum FOOTER:Lcom/amazon/krf/platform/Marginal$MarginalType;

.field public static final enum HEADER:Lcom/amazon/krf/platform/Marginal$MarginalType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Lcom/amazon/krf/platform/Marginal$MarginalType;

    const/4 v1, 0x0

    const-string v2, "HEADER"

    invoke-direct {v0, v2, v1}, Lcom/amazon/krf/platform/Marginal$MarginalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/Marginal$MarginalType;->HEADER:Lcom/amazon/krf/platform/Marginal$MarginalType;

    .line 28
    new-instance v0, Lcom/amazon/krf/platform/Marginal$MarginalType;

    const/4 v2, 0x1

    const-string v3, "FOOTER"

    invoke-direct {v0, v3, v2}, Lcom/amazon/krf/platform/Marginal$MarginalType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/krf/platform/Marginal$MarginalType;->FOOTER:Lcom/amazon/krf/platform/Marginal$MarginalType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/krf/platform/Marginal$MarginalType;

    .line 18
    sget-object v4, Lcom/amazon/krf/platform/Marginal$MarginalType;->HEADER:Lcom/amazon/krf/platform/Marginal$MarginalType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/krf/platform/Marginal$MarginalType;->$VALUES:[Lcom/amazon/krf/platform/Marginal$MarginalType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static createFromInt(I)Lcom/amazon/krf/platform/Marginal$MarginalType;
    .locals 1

    .line 31
    invoke-static {}, Lcom/amazon/krf/platform/Marginal$MarginalType;->values()[Lcom/amazon/krf/platform/Marginal$MarginalType;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/krf/platform/Marginal$MarginalType;
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/krf/platform/Marginal$MarginalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/krf/platform/Marginal$MarginalType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/krf/platform/Marginal$MarginalType;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/krf/platform/Marginal$MarginalType;->$VALUES:[Lcom/amazon/krf/platform/Marginal$MarginalType;

    invoke-virtual {v0}, [Lcom/amazon/krf/platform/Marginal$MarginalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/Marginal$MarginalType;

    return-object v0
.end method
