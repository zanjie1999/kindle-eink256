.class public Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;
.super Ljava/lang/Object;
.source "GoodreadsShelfData.java"


# instance fields
.field public final asin:Ljava/lang/String;

.field public final isSensitive:Z

.field public final shelves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->asin:Ljava/lang/String;

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->shelves:Ljava/util/List;

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->isSensitive:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->asin:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->shelves:Ljava/util/List;

    .line 38
    iput-boolean p3, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->isSensitive:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 61
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    if-eq v2, v3, :cond_2

    return v1

    .line 65
    :cond_2
    check-cast p1, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;

    .line 66
    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->asin:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->asin:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->shelves:Ljava/util/List;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->shelves:Ljava/util/List;

    .line 67
    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->isSensitive:Z

    .line 68
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean p1, p1, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->isSensitive:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->asin:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->shelves:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/ea/sidecar/def/data/GoodreadsShelfData;->isSensitive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
