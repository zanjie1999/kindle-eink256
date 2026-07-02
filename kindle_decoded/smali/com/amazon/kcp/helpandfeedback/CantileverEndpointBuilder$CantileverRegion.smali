.class public final enum Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;
.super Ljava/lang/Enum;
.source "CantileverEndpointBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CantileverRegion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;

.field public static final enum US:Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;


# instance fields
.field private final baseUrl:Ljava/lang/String;

.field private final marketplaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/application/Marketplace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;

    new-instance v2, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;

    new-array v3, v0, [Lcom/amazon/kcp/application/Marketplace;

    .line 61
    sget-object v4, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    const-string v4, "US"

    const-string v9, "https://digprjsurvey.amazon.com/csad/"

    .line 60
    invoke-direct {v2, v4, v5, v9, v3}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    sput-object v2, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;->US:Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;

    aput-object v2, v1, v5

    new-instance v2, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;

    const/4 v3, 0x7

    new-array v3, v3, [Lcom/amazon/kcp/application/Marketplace;

    .line 63
    sget-object v4, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    aput-object v4, v3, v5

    sget-object v4, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    aput-object v4, v3, v6

    sget-object v4, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    aput-object v4, v3, v7

    sget-object v4, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    aput-object v4, v3, v8

    .line 64
    sget-object v4, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    aput-object v4, v3, v0

    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const/4 v4, 0x5

    aput-object v0, v3, v4

    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const/4 v4, 0x6

    aput-object v0, v3, v4

    .line 63
    invoke-static {v3}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const-string v3, "UK"

    const-string v4, "https://digprjsurvey.amazon.co.uk/csad/"

    .line 62
    invoke-direct {v2, v3, v6, v4, v0}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    aput-object v2, v1, v6

    new-instance v0, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;

    new-array v2, v7, [Lcom/amazon/kcp/application/Marketplace;

    .line 66
    sget-object v3, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    aput-object v3, v2, v5

    sget-object v3, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    aput-object v3, v2, v6

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const-string v3, "JP"

    const-string v4, "https://digprjsurvey.amazon.co.jp/csad/"

    .line 65
    invoke-direct {v0, v3, v7, v4, v2}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    aput-object v0, v1, v7

    new-instance v0, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;

    .line 68
    sget-object v2, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const-string v3, "CN"

    const-string v4, "https://digprjsurvey.amazon.cn/csad/"

    .line 67
    invoke-direct {v0, v3, v8, v4, v2}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V

    aput-object v0, v1, v8

    sput-object v1, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;->$VALUES:[Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "+",
            "Lcom/amazon/kcp/application/Marketplace;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;->baseUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;->marketplaces:Ljava/util/Set;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;
    .locals 1

    const-class v0, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;->$VALUES:[Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;

    invoke-virtual {v0}, [Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;

    return-object v0
.end method


# virtual methods
.method public final getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getMarketplaces()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/application/Marketplace;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder$CantileverRegion;->marketplaces:Ljava/util/Set;

    return-object v0
.end method
