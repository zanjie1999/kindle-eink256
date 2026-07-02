.class public final enum Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;
.super Ljava/lang/Enum;
.source "SidekickSettings.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

.field public static final Companion:Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint$Companion;

.field public static final enum US:Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;


# instance fields
.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    new-instance v1, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    const/4 v2, 0x0

    const-string v3, "US"

    const-string v4, "kindle-home-gamma-us-iad.iad.proxy.amazon.com"

    .line 69
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;->US:Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    const/4 v2, 0x1

    const-string v3, "DE"

    const-string v4, "kindle-home-gamma-de-dub.dub.proxy.amazon.com"

    .line 70
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    const/4 v2, 0x2

    const-string v3, "ES"

    const-string v4, "kindle-home-gamma-es-dub.dub.proxy.amazon.com"

    .line 71
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    const/4 v2, 0x3

    const-string v3, "FR"

    const-string v4, "kindle-home-gamma-fr-dub.dub.proxy.amazon.com"

    .line 72
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    const/4 v2, 0x4

    const-string v3, "GB"

    const-string v4, "kindle-home-gamma-gb-dub.dub.proxy.amazon.com"

    .line 73
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    const/4 v2, 0x5

    const-string v3, "IT"

    const-string v4, "kindle-home-gamma-it-dub.dub.proxy.amazon.com"

    .line 74
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    const/4 v2, 0x6

    const-string v3, "IN"

    const-string v4, "kindle-home-gamma-in-dub.dub.proxy.amazon.com"

    .line 75
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    const/4 v2, 0x7

    const-string v3, "NL"

    const-string v4, "kindle-home-gamma-nl-dub.dub.proxy.amazon.com"

    .line 76
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    const/16 v2, 0x8

    const-string v3, "BR"

    const-string v4, "kindle-home-gamma-br-iad.iad.proxy.amazon.com"

    .line 77
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    const/16 v2, 0x9

    const-string v3, "CA"

    const-string v4, "kindle-home-gamma-ca-iad.iad.proxy.amazon.com"

    .line 78
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    const/16 v2, 0xa

    const-string v3, "MX"

    const-string v4, "kindle-home-gamma-mx-iad.iad.proxy.amazon.com"

    .line 79
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    const/16 v2, 0xb

    const-string v3, "JP"

    const-string v4, "kindle-home-gamma-jp-pdx.pdx.proxy.amazon.com"

    .line 80
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    const/16 v2, 0xc

    const-string v3, "AU"

    const-string v4, "kindle-home-gamma-au-pdx.pdx.proxy.amazon.com"

    .line 81
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    const/16 v2, 0xd

    const-string v3, "CN"

    const-string v4, "kindle-home-gamma-pek.pek.proxy.amazon.com"

    .line 82
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;->$VALUES:[Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    new-instance v0, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;->Companion:Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint$Companion;

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

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;->url:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;
    .locals 1

    const-class v0, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;->$VALUES:[Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    invoke-virtual {v0}, [Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;

    return-object v0
.end method


# virtual methods
.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/home/debug/SidekickGammaEndpoint;->url:Ljava/lang/String;

    return-object v0
.end method
