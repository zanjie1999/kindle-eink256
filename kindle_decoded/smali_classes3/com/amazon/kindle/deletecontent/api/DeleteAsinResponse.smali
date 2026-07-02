.class public final Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;
.super Ljava/lang/Object;
.source "DeleteContentApiModel.kt"


# instance fields
.field private final asinResultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final error:Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

.field private final success:Z


# direct methods
.method public constructor <init>(Ljava/util/Map;ZLcom/amazon/kindle/deletecontent/api/DeleteContentError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Lcom/amazon/kindle/deletecontent/api/DeleteContentError;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->asinResultMap:Ljava/util/Map;

    iput-boolean p2, p0, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->success:Z

    iput-object p3, p0, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->error:Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->asinResultMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->asinResultMap:Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->success:Z

    iget-boolean v1, p1, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->success:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->error:Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    iget-object p1, p1, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->error:Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

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

.method public final getAsinResultMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->asinResultMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getError()Lcom/amazon/kindle/deletecontent/api/DeleteContentError;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->error:Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    return-object v0
.end method

.method public final getSuccess()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->success:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->asinResultMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->success:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->error:Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteAsinResponse(asinResultMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->asinResultMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/deletecontent/api/DeleteAsinResponse;->error:Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
