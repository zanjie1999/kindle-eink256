.class Lcom/amazon/weblab/mobile/service/BasePathProvider;
.super Ljava/lang/Object;
.source "BasePathProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;
    }
.end annotation


# static fields
.field private static final BETA:Ljava/lang/String; = "mobileweblab-live-beta.corp.amazon.com/mwl"

.field private static final CN_GAMMA:Ljava/lang/String; = "shm.amazon.cn/mwl"

.field private static final CN_PROD:Ljava/lang/String; = "msh.amazon.cn/mwl"

.field private static final EU_GAMMA:Ljava/lang/String; = "shm.amazon.co.uk/mwl"

.field private static final EU_PROD:Ljava/lang/String; = "msh.amazon.co.uk/mwl"

.field private static final FE_GAMMA:Ljava/lang/String; = "shm.amazon.co.jp/mwl"

.field private static final FE_PROD:Ljava/lang/String; = "msh.amazon.co.jp/mwl"

.field private static final NA_GAMMA:Ljava/lang/String; = "shm.amazon.com/mwl"

.field private static final NA_PROD:Ljava/lang/String; = "msh.amazon.com/mwl"


# instance fields
.field private mMarketplaces:Lcom/amazon/weblab/mobile/service/Marketplaces;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/amazon/weblab/mobile/service/Marketplaces;

    invoke-direct {v0}, Lcom/amazon/weblab/mobile/service/Marketplaces;-><init>()V

    iput-object v0, p0, Lcom/amazon/weblab/mobile/service/BasePathProvider;->mMarketplaces:Lcom/amazon/weblab/mobile/service/Marketplaces;

    return-void
.end method

.method private getBasePath(Ljava/lang/String;)Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/BasePathProvider;->mMarketplaces:Lcom/amazon/weblab/mobile/service/Marketplaces;

    invoke-virtual {v0, p1}, Lcom/amazon/weblab/mobile/service/Marketplaces;->getRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    invoke-static {p1}, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;->valueOf(Ljava/lang/String;)Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;

    move-result-object p1

    return-object p1

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "obfuscatedMarketplaceId is not supported."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method getBasePath(Ljava/lang/String;Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 82
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/service/BasePathProvider;->getBasePath(Ljava/lang/String;)Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;

    move-result-object p1

    .line 84
    invoke-static {p1, p2}, Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;->access$000(Lcom/amazon/weblab/mobile/service/BasePathProvider$BasePath;Lcom/amazon/weblab/mobile/settings/MobileWeblabServiceEndpoint;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "endpointType cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "obfuscatedMarketplaceId cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
