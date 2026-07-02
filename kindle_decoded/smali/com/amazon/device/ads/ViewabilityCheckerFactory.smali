.class public Lcom/amazon/device/ads/ViewabilityCheckerFactory;
.super Ljava/lang/Object;
.source "ViewabilityCheckerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildViewabilityChecker(Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/ViewabilityChecker;
    .locals 1

    .line 14
    new-instance v0, Lcom/amazon/device/ads/ViewabilityChecker;

    invoke-direct {v0, p1}, Lcom/amazon/device/ads/ViewabilityChecker;-><init>(Lcom/amazon/device/ads/AdController;)V

    return-object v0
.end method
