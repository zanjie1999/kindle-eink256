.class public Lcom/amazon/messaging/odot/webservices/util/NetworkInfoWrapper;
.super Ljava/lang/Object;
.source "NetworkInfoWrapper.java"


# instance fields
.field private final mInner:Landroid/net/NetworkInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/util/NetworkInfoWrapper;->mInner:Landroid/net/NetworkInfo;

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkInfo;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/util/NetworkInfoWrapper;->mInner:Landroid/net/NetworkInfo;

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/util/NetworkInfoWrapper;->mInner:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/util/NetworkInfoWrapper;->mInner:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/util/NetworkInfoWrapper;->mInner:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
