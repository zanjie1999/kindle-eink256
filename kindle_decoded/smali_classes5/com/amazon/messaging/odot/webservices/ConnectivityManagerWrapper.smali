.class public Lcom/amazon/messaging/odot/webservices/ConnectivityManagerWrapper;
.super Ljava/lang/Object;
.source "ConnectivityManagerWrapper.java"


# instance fields
.field private final mInner:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectivity"

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/ConnectivityManagerWrapper;->mInner:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private wrapNetworkInfo(Landroid/net/NetworkInfo;)Lcom/amazon/messaging/odot/webservices/util/NetworkInfoWrapper;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 30
    :cond_0
    new-instance v0, Lcom/amazon/messaging/odot/webservices/util/NetworkInfoWrapper;

    invoke-direct {v0, p1}, Lcom/amazon/messaging/odot/webservices/util/NetworkInfoWrapper;-><init>(Landroid/net/NetworkInfo;)V

    return-object v0
.end method


# virtual methods
.method public getActiveNetworkInfo()Lcom/amazon/messaging/odot/webservices/util/NetworkInfoWrapper;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/ConnectivityManagerWrapper;->mInner:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 22
    invoke-direct {p0, v0}, Lcom/amazon/messaging/odot/webservices/ConnectivityManagerWrapper;->wrapNetworkInfo(Landroid/net/NetworkInfo;)Lcom/amazon/messaging/odot/webservices/util/NetworkInfoWrapper;

    move-result-object v0

    return-object v0
.end method
