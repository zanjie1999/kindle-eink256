.class Lcom/amazon/device/ads/AdContainer$AdContainerFactory;
.super Ljava/lang/Object;
.source "AdContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdContainerFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdContainer(Landroid/content/Context;Lcom/amazon/device/ads/AdCloser;)Lcom/amazon/device/ads/AdContainer;
    .locals 1

    .line 267
    new-instance v0, Lcom/amazon/device/ads/AdContainer;

    invoke-direct {v0, p1, p2}, Lcom/amazon/device/ads/AdContainer;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdCloser;)V

    return-object v0
.end method
