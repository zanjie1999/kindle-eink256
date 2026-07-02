.class public final enum Lcom/amazon/client/metrics/common/DataPointType;
.super Ljava/lang/Enum;
.source "DataPointType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/client/metrics/common/DataPointType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/client/metrics/common/DataPointType;

.field public static final enum CK:Lcom/amazon/client/metrics/common/DataPointType;

.field public static final enum CT:Lcom/amazon/client/metrics/common/DataPointType;

.field public static final enum DV:Lcom/amazon/client/metrics/common/DataPointType;

.field public static final enum TI:Lcom/amazon/client/metrics/common/DataPointType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 21
    new-instance v0, Lcom/amazon/client/metrics/common/DataPointType;

    const/4 v1, 0x0

    const-string v2, "CT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/client/metrics/common/DataPointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/client/metrics/common/DataPointType;->CT:Lcom/amazon/client/metrics/common/DataPointType;

    .line 25
    new-instance v0, Lcom/amazon/client/metrics/common/DataPointType;

    const/4 v2, 0x1

    const-string v3, "TI"

    invoke-direct {v0, v3, v2}, Lcom/amazon/client/metrics/common/DataPointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/client/metrics/common/DataPointType;->TI:Lcom/amazon/client/metrics/common/DataPointType;

    .line 29
    new-instance v0, Lcom/amazon/client/metrics/common/DataPointType;

    const/4 v3, 0x2

    const-string v4, "DV"

    invoke-direct {v0, v4, v3}, Lcom/amazon/client/metrics/common/DataPointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/client/metrics/common/DataPointType;->DV:Lcom/amazon/client/metrics/common/DataPointType;

    .line 33
    new-instance v0, Lcom/amazon/client/metrics/common/DataPointType;

    const/4 v4, 0x3

    const-string v5, "CK"

    invoke-direct {v0, v5, v4}, Lcom/amazon/client/metrics/common/DataPointType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/client/metrics/common/DataPointType;->CK:Lcom/amazon/client/metrics/common/DataPointType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/client/metrics/common/DataPointType;

    .line 16
    sget-object v6, Lcom/amazon/client/metrics/common/DataPointType;->CT:Lcom/amazon/client/metrics/common/DataPointType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/client/metrics/common/DataPointType;->TI:Lcom/amazon/client/metrics/common/DataPointType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/client/metrics/common/DataPointType;->DV:Lcom/amazon/client/metrics/common/DataPointType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/client/metrics/common/DataPointType;->$VALUES:[Lcom/amazon/client/metrics/common/DataPointType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/common/DataPointType;
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/client/metrics/common/DataPointType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/client/metrics/common/DataPointType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/client/metrics/common/DataPointType;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/client/metrics/common/DataPointType;->$VALUES:[Lcom/amazon/client/metrics/common/DataPointType;

    invoke-virtual {v0}, [Lcom/amazon/client/metrics/common/DataPointType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/client/metrics/common/DataPointType;

    return-object v0
.end method
