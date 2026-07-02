.class public Lcom/amazon/kindle/rendering/KRIFTextPosition;
.super Lcom/amazon/kindle/model/Annotations/IntPosition;
.source "KRIFTextPosition.java"

# interfaces
.implements Lcom/amazon/kindle/rendering/IKRIFPlatformPosition;


# instance fields
.field private final platformPosition:Lcom/amazon/krf/platform/Position;


# direct methods
.method public constructor <init>(Lcom/amazon/krf/platform/Position;)V
    .locals 2

    .line 15
    invoke-interface {p1}, Lcom/amazon/krf/platform/Position;->getShortPosition()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-direct {p0, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    .line 16
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFTextPosition;->platformPosition:Lcom/amazon/krf/platform/Position;

    return-void
.end method


# virtual methods
.method public getPlatformPosition()Lcom/amazon/krf/platform/Position;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFTextPosition;->platformPosition:Lcom/amazon/krf/platform/Position;

    return-object v0
.end method
