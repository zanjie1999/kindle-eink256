.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;
.super Ljava/lang/Object;
.source "MapAccessTokenProvider.java"


# instance fields
.field private final mMapAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

.field private final mTokenKey:Ljava/lang/String;

.field private final mTokenManagement:Lcom/amazon/identity/auth/device/api/TokenManagement;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/api/MAPAccountManager;Lcom/amazon/identity/auth/device/api/TokenManagement;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p3, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->mTokenKey:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->mTokenManagement:Lcom/amazon/identity/auth/device/api/TokenManagement;

    .line 28
    iput-object p1, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->mMapAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;)Lcom/amazon/identity/auth/device/api/MAPAccountManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->mMapAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->mTokenKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;)Lcom/amazon/identity/auth/device/api/TokenManagement;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;->mTokenManagement:Lcom/amazon/identity/auth/device/api/TokenManagement;

    return-object p0
.end method


# virtual methods
.method public getAccessToken()Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider$1;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider$1;-><init>(Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method
