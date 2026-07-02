.class public final enum Lcom/amazon/kindle/ReferralSource;
.super Ljava/lang/Enum;
.source "ReferralSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/ReferralSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/ReferralSource;

.field public static final enum FREE_MANGA:Lcom/amazon/kindle/ReferralSource;

.field public static final enum KINDLE_PLAYER:Lcom/amazon/kindle/ReferralSource;


# instance fields
.field private kindleProtocolContext:Ljava/lang/String;

.field private kindleProtocolRefTag:Ljava/lang/String;

.field private marketReferralContext:Ljava/lang/String;

.field private marketSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 15
    new-instance v7, Lcom/amazon/kindle/ReferralSource;

    const-string v1, "KINDLE_PLAYER"

    const/4 v2, 0x0

    const-string v3, "kindle_player"

    const-string v4, "KPReferral"

    const-string v5, "kindleplayer"

    const-string v6, "KPKindleProtocol"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/ReferralSource;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/amazon/kindle/ReferralSource;->KINDLE_PLAYER:Lcom/amazon/kindle/ReferralSource;

    .line 16
    new-instance v0, Lcom/amazon/kindle/ReferralSource;

    const-string v9, "FREE_MANGA"

    const/4 v10, 0x1

    const-string v11, "free_manga"

    const-string v12, "FreeMangaReferral"

    const-string v13, "free_manga"

    const-string v14, "FreeMangaKindleProtocol"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/amazon/kindle/ReferralSource;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/ReferralSource;->FREE_MANGA:Lcom/amazon/kindle/ReferralSource;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/amazon/kindle/ReferralSource;

    .line 14
    sget-object v2, Lcom/amazon/kindle/ReferralSource;->KINDLE_PLAYER:Lcom/amazon/kindle/ReferralSource;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/amazon/kindle/ReferralSource;->$VALUES:[Lcom/amazon/kindle/ReferralSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/amazon/kindle/ReferralSource;->marketSource:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/amazon/kindle/ReferralSource;->marketReferralContext:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/amazon/kindle/ReferralSource;->kindleProtocolRefTag:Ljava/lang/String;

    .line 27
    iput-object p6, p0, Lcom/amazon/kindle/ReferralSource;->kindleProtocolContext:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/ReferralSource;
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/kindle/ReferralSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/ReferralSource;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/ReferralSource;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/kindle/ReferralSource;->$VALUES:[Lcom/amazon/kindle/ReferralSource;

    invoke-virtual {v0}, [Lcom/amazon/kindle/ReferralSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/ReferralSource;

    return-object v0
.end method


# virtual methods
.method public getKindleProtocolRefTag()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/ReferralSource;->kindleProtocolRefTag:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketSource()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/ReferralSource;->marketSource:Ljava/lang/String;

    return-object v0
.end method
