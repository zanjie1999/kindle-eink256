.class public Lcom/amazon/device/ads/PreferredMarketplaceRetriever$NullPreferredMarketplaceRetriever;
.super Ljava/lang/Object;
.source "PreferredMarketplaceRetriever.java"

# interfaces
.implements Lcom/amazon/device/ads/PreferredMarketplaceRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/PreferredMarketplaceRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullPreferredMarketplaceRetriever"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrievePreferredMarketplace(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
