.class public Lcom/amazon/device/ads/DirectedIdParameter;
.super Ljava/lang/Object;
.source "DirectedIdParameter.java"

# interfaces
.implements Lcom/amazon/device/ads/UserIdParameter;


# instance fields
.field private final directedIdRetriever:Lcom/amazon/device/ads/DirectedIdRetriever;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/amazon/device/ads/MAPDirectedIdRetriever;

    invoke-direct {v0}, Lcom/amazon/device/ads/MAPDirectedIdRetriever;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/DirectedIdParameter;-><init>(Lcom/amazon/device/ads/DirectedIdRetriever;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/DirectedIdRetriever;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/device/ads/DirectedIdParameter;->directedIdRetriever:Lcom/amazon/device/ads/DirectedIdRetriever;

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/amazon/device/ads/WebRequest;)Z
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/amazon/device/ads/DirectedIdParameter;->directedIdRetriever:Lcom/amazon/device/ads/DirectedIdRetriever;

    invoke-interface {v0}, Lcom/amazon/device/ads/DirectedIdRetriever;->getDirectedId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "directedId"

    .line 29
    invoke-virtual {p1, v1, v0}, Lcom/amazon/device/ads/WebRequest;->putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
