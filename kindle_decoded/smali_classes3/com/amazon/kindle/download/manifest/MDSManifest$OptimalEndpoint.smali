.class public final Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;
.super Ljava/lang/Object;
.source "MDSManifest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/manifest/MDSManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OptimalEndpoint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint$Companion;
    }
.end annotation


# instance fields
.field private final directUrl:Ljava/net/URI;

.field private final expiresAfter:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;I)V
    .locals 1

    const-string v0, "directUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;->directUrl:Ljava/net/URI;

    iput p2, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;->expiresAfter:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;->directUrl:Ljava/net/URI;

    iget-object v1, p1, Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;->directUrl:Ljava/net/URI;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;->expiresAfter:I

    iget p1, p1, Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;->expiresAfter:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getDirectUrl()Ljava/net/URI;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;->directUrl:Ljava/net/URI;

    return-object v0
.end method

.method public final getExpiresAfter()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;->expiresAfter:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;->directUrl:Ljava/net/URI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;->expiresAfter:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OptimalEndpoint(directUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;->directUrl:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expiresAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;->expiresAfter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
