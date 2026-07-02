.class public final enum Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;
.super Ljava/lang/Enum;
.source "MobileWeblabCachePolicyType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

.field public static final enum AUTO:Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

.field public static final enum DISABLED:Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

.field public static final enum ON_FIRST:Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    const/4 v1, 0x0

    const-string v2, "DISABLED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;->DISABLED:Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    .line 17
    new-instance v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    const/4 v2, 0x1

    const-string v3, "ON_FIRST"

    invoke-direct {v0, v3, v2}, Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;->ON_FIRST:Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    .line 23
    new-instance v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    const/4 v3, 0x2

    const-string v4, "AUTO"

    invoke-direct {v0, v4, v3}, Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;->AUTO:Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    .line 6
    sget-object v5, Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;->DISABLED:Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;->ON_FIRST:Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;->$VALUES:[Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;->$VALUES:[Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    invoke-virtual {v0}, [Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/weblab/mobile/settings/MobileWeblabCachePolicyType;

    return-object v0
.end method
