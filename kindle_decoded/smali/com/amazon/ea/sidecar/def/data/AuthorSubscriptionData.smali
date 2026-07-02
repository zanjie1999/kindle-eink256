.class public Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;
.super Ljava/lang/Object;
.source "AuthorSubscriptionData.java"


# instance fields
.field public final asin:Ljava/lang/String;

.field public final imageURL:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final subscribed:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->asin:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->name:Ljava/lang/String;

    .line 34
    iput-boolean p3, p0, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->subscribed:Z

    .line 35
    iput-object p4, p0, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->imageURL:Ljava/lang/String;

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

    .line 46
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;

    if-eq v2, v3, :cond_2

    return v1

    .line 49
    :cond_2
    check-cast p1, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;

    .line 50
    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->asin:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->asin:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->subscribed:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->subscribed:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/ea/guava/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->imageURL:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->imageURL:Ljava/lang/String;

    .line 51
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

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->asin:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->subscribed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->imageURL:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/amazon/ea/guava/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 61
    invoke-static {p0}, Lcom/amazon/ea/guava/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->asin:Ljava/lang/String;

    const-string v2, "asin"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->name:Ljava/lang/String;

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->subscribed:Z

    const-string/jumbo v2, "subscribed"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/ea/sidecar/def/data/AuthorSubscriptionData;->imageURL:Ljava/lang/String;

    const-string v2, "imageURL"

    .line 62
    invoke-virtual {v0, v2, v1}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/amazon/ea/guava/Objects$ToStringHelper;

    invoke-virtual {v0}, Lcom/amazon/ea/guava/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
