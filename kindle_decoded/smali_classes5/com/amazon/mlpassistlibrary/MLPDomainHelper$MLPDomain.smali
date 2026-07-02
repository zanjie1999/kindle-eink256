.class final enum Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;
.super Ljava/lang/Enum;
.source "MLPDomainHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/mlpassistlibrary/MLPDomainHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MLPDomain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

.field public static final enum BR:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

.field public static final enum CA:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

.field public static final enum CN:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

.field public static final enum DE:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

.field public static final enum ES:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

.field public static final enum FR:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

.field public static final enum GB:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

.field public static final enum IN:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

.field public static final enum IT:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

.field public static final enum JP:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

.field public static final enum MX:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

.field public static final enum NL:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

.field public static final enum US:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;


# instance fields
.field private final domain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 77
    new-instance v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    const/4 v1, 0x0

    const-string v2, "US"

    const-string v3, "amazon.com"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->US:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    .line 80
    new-instance v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    const/4 v2, 0x1

    const-string v3, "GB"

    const-string v4, "amazon.co.uk"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->GB:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    .line 83
    new-instance v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    const/4 v3, 0x2

    const-string v4, "FR"

    const-string v5, "amazon.fr"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->FR:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    .line 86
    new-instance v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    const/4 v4, 0x3

    const-string v5, "DE"

    const-string v6, "amazon.de"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->DE:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    .line 89
    new-instance v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    const/4 v5, 0x4

    const-string v6, "ES"

    const-string v7, "amazon.es"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->ES:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    .line 92
    new-instance v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    const/4 v6, 0x5

    const-string v7, "IT"

    const-string v8, "amazon.it"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->IT:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    .line 95
    new-instance v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    const/4 v7, 0x6

    const-string v8, "JP"

    const-string v9, "amazon.co.jp"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->JP:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    .line 98
    new-instance v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    const/4 v8, 0x7

    const-string v9, "CN"

    const-string v10, "amazon.cn"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->CN:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    .line 101
    new-instance v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    const/16 v9, 0x8

    const-string v10, "CA"

    const-string v11, "amazon.ca"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->CA:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    .line 104
    new-instance v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    const/16 v10, 0x9

    const-string v11, "IN"

    const-string v12, "amazon.in"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->IN:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    .line 107
    new-instance v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    const/16 v11, 0xa

    const-string v12, "BR"

    const-string v13, "amazon.com.br"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->BR:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    .line 110
    new-instance v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    const/16 v12, 0xb

    const-string v13, "MX"

    const-string v14, "amazon.com.mx"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->MX:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    .line 113
    new-instance v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    const/16 v13, 0xc

    const-string v14, "NL"

    const-string v15, "amazon.nl"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->NL:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    const/16 v14, 0xd

    new-array v14, v14, [Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    .line 74
    sget-object v15, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->US:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    aput-object v15, v14, v1

    sget-object v1, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->GB:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->FR:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->DE:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->ES:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->IT:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->JP:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->CN:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->CA:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->IN:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->BR:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->MX:Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    aput-object v1, v14, v12

    aput-object v0, v14, v13

    sput-object v14, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->$VALUES:[Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

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

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    iput-object p3, p0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->domain:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;
    .locals 1

    .line 74
    const-class v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    return-object p0
.end method

.method public static values()[Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;
    .locals 1

    .line 74
    sget-object v0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->$VALUES:[Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    invoke-virtual {v0}, [Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;

    return-object v0
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/mlpassistlibrary/MLPDomainHelper$MLPDomain;->domain:Ljava/lang/String;

    return-object v0
.end method
