.class public final enum Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;
.super Ljava/lang/Enum;
.source "MobileWeblabServiceEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

.field public static final enum BETA:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

.field public static final enum GAMMA:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

.field public static final enum PROD:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    const/4 v1, 0x0

    const-string v2, "PROD"

    invoke-direct {v0, v2, v1}, Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;->PROD:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    new-instance v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    const/4 v2, 0x1

    const-string v3, "GAMMA"

    invoke-direct {v0, v3, v2}, Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;->GAMMA:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    new-instance v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    const/4 v3, 0x2

    const-string v4, "BETA"

    invoke-direct {v0, v4, v3}, Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;->BETA:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    .line 7
    sget-object v5, Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;->PROD:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;->GAMMA:Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;->$VALUES:[Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    return-object p0
.end method

.method public static values()[Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;->$VALUES:[Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    invoke-virtual {v0}, [Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;

    return-object v0
.end method
