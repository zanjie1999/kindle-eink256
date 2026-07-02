.class public final enum Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;
.super Ljava/lang/Enum;
.source "MobileWeblabDomain.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

.field public static final enum DEVELOPMENT:Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

.field public static final enum PILOT:Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

.field public static final enum PROD:Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;


# instance fields
.field domainValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 13
    new-instance v0, Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    const/4 v1, 0x0

    const-string v2, "PROD"

    const-string/jumbo v3, "production"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;->PROD:Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    .line 14
    new-instance v0, Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    const/4 v2, 0x1

    const-string v3, "PILOT"

    const-string/jumbo v4, "pilot"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;->PILOT:Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    .line 15
    new-instance v0, Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    const/4 v3, 0x2

    const-string v4, "DEVELOPMENT"

    const-string v5, "development"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;->DEVELOPMENT:Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    .line 12
    sget-object v5, Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;->PROD:Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;->PILOT:Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;->$VALUES:[Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;->domainValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;
    .locals 1

    .line 12
    const-class v0, Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    return-object p0
.end method

.method public static values()[Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;->$VALUES:[Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    invoke-virtual {v0}, [Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;

    return-object v0
.end method


# virtual methods
.method getDomainValue()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/MobileWeblabDomain;->domainValue:Ljava/lang/String;

    return-object v0
.end method
