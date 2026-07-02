.class public final Lcom/amazon/kindle/download/manifest/MDSManifest;
.super Ljava/lang/Object;
.source "MDSManifest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/manifest/MDSManifest$Content;,
        Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;,
        Lcom/amazon/kindle/download/manifest/MDSManifest$Endpoint;,
        Lcom/amazon/kindle/download/manifest/MDSManifest$OptimalEndpoint;,
        Lcom/amazon/kindle/download/manifest/MDSManifest$Companion;
    }
.end annotation


# instance fields
.field private final content:Lcom/amazon/kindle/download/manifest/MDSManifest$Content;

.field private final resources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;",
            ">;"
        }
    .end annotation
.end field

.field private final responseContext:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/download/manifest/MDSManifest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/download/manifest/MDSManifest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/download/manifest/MDSManifest$Content;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/manifest/MDSManifest$Content;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resources"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/MDSManifest;->content:Lcom/amazon/kindle/download/manifest/MDSManifest$Content;

    iput-object p2, p0, Lcom/amazon/kindle/download/manifest/MDSManifest;->resources:Ljava/util/List;

    iput-object p3, p0, Lcom/amazon/kindle/download/manifest/MDSManifest;->responseContext:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/download/manifest/MDSManifest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/download/manifest/MDSManifest;

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest;->content:Lcom/amazon/kindle/download/manifest/MDSManifest$Content;

    iget-object v1, p1, Lcom/amazon/kindle/download/manifest/MDSManifest;->content:Lcom/amazon/kindle/download/manifest/MDSManifest$Content;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest;->resources:Ljava/util/List;

    iget-object v1, p1, Lcom/amazon/kindle/download/manifest/MDSManifest;->resources:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest;->responseContext:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kindle/download/manifest/MDSManifest;->responseContext:Ljava/lang/String;

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

.method public final getContent()Lcom/amazon/kindle/download/manifest/MDSManifest$Content;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest;->content:Lcom/amazon/kindle/download/manifest/MDSManifest$Content;

    return-object v0
.end method

.method public final getResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/download/manifest/MDSManifest$ManifestResource;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest;->resources:Ljava/util/List;

    return-object v0
.end method

.method public final getResponseContext()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest;->responseContext:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/MDSManifest;->content:Lcom/amazon/kindle/download/manifest/MDSManifest$Content;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/MDSManifest$Content;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/download/manifest/MDSManifest;->resources:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/download/manifest/MDSManifest;->responseContext:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MDSManifest(content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/MDSManifest;->content:Lcom/amazon/kindle/download/manifest/MDSManifest$Content;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resources="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/MDSManifest;->resources:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", responseContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/MDSManifest;->responseContext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
