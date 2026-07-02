.class public final Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;
.super Ljava/lang/Object;
.source "MDSManifest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/manifest/MDSManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ManifestResource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource$Companion;
    }
.end annotation


# instance fields
.field private final deliveryType:Ljava/lang/String;

.field private final endpoint:Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;

.field private final id:Ljava/lang/String;

.field private final optimalEndpoint:Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;

.field private final requirement:Ljava/lang/String;

.field private final responseContext:Ljava/lang/String;

.field private final size:Ljava/lang/Long;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "endpoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseContext"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->endpoint:Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;

    iput-object p3, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->optimalEndpoint:Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;

    iput-object p4, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->requirement:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->responseContext:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->size:Ljava/lang/Long;

    iput-object p7, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->type:Ljava/lang/String;

    iput-object p8, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->deliveryType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->endpoint:Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;

    iget-object v1, p1, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->endpoint:Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->optimalEndpoint:Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;

    iget-object v1, p1, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->optimalEndpoint:Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->requirement:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->requirement:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->responseContext:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->responseContext:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->size:Ljava/lang/Long;

    iget-object v1, p1, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->size:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->type:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->deliveryType:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->deliveryType:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getDeliveryType()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->deliveryType:Ljava/lang/String;

    return-object v0
.end method

.method public final getEndpoint()Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->endpoint:Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getOptimalEndpoint()Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->optimalEndpoint:Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;

    return-object v0
.end method

.method public final getRequirement()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->requirement:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseContext()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->responseContext:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()Ljava/lang/Long;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->endpoint:Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->optimalEndpoint:Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->requirement:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->responseContext:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->size:Ljava/lang/Long;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->type:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->deliveryType:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ManifestResource(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->endpoint:Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", optimalEndpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->optimalEndpoint:Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requirement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->requirement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", responseContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->responseContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->size:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", deliveryType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;->deliveryType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
