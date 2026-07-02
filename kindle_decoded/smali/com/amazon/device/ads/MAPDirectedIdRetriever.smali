.class Lcom/amazon/device/ads/MAPDirectedIdRetriever;
.super Ljava/lang/Object;
.source "MAPDirectedIdRetriever.java"

# interfaces
.implements Lcom/amazon/device/ads/DirectedIdRetriever;


# instance fields
.field private final mapUtils:Lcom/amazon/device/ads/MAPUtils;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/amazon/device/ads/MAPUtils;

    invoke-direct {v0}, Lcom/amazon/device/ads/MAPUtils;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/MAPDirectedIdRetriever;-><init>(Lcom/amazon/device/ads/MAPUtils;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/MAPUtils;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/device/ads/MAPDirectedIdRetriever;->mapUtils:Lcom/amazon/device/ads/MAPUtils;

    return-void
.end method


# virtual methods
.method public getDirectedId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/device/ads/MAPDirectedIdRetriever;->mapUtils:Lcom/amazon/device/ads/MAPUtils;

    invoke-virtual {v0}, Lcom/amazon/device/ads/MAPUtils;->getDirectedId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
