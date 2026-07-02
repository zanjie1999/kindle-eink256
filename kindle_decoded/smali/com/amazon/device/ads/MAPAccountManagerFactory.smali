.class Lcom/amazon/device/ads/MAPAccountManagerFactory;
.super Ljava/lang/Object;
.source "MAPAccountManagerFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMapAccountManager()Lcom/amazon/device/ads/AccountManagerWrapper;
    .locals 1

    .line 13
    new-instance v0, Lcom/amazon/device/ads/MAPAccountManagerWrapper;

    invoke-direct {v0}, Lcom/amazon/device/ads/MAPAccountManagerWrapper;-><init>()V

    return-object v0
.end method
