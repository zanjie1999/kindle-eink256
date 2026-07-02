.class public Lcom/amazon/whispersync/CreateDatasetRequest;
.super Lcom/amazon/whispersync/CustomerRequest;
.source "CreateDatasetRequest.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/coral/annotation/Shape;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Wrapper;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlName;
    value = "CreateDatasetRequest"
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlNamespace;
    value = "http://internal.amazon.com/coral/com.amazon.whispersync/"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private subscription:Lcom/amazon/whispersync/Subscription;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/amazon/whispersync/CustomerRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/whispersync/HttpRequest;)I
    .locals 6

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 74
    :cond_1
    instance-of v1, p1, Lcom/amazon/whispersync/CreateDatasetRequest;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    return v2

    .line 76
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/amazon/whispersync/CreateDatasetRequest;

    .line 78
    invoke-virtual {p0}, Lcom/amazon/whispersync/CreateDatasetRequest;->getNamespace()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {v1}, Lcom/amazon/whispersync/CreateDatasetRequest;->getNamespace()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_7

    if-nez v3, :cond_3

    return v0

    :cond_3
    if-nez v4, :cond_4

    return v2

    .line 85
    :cond_4
    instance-of v5, v3, Ljava/lang/Comparable;

    if-eqz v5, :cond_5

    .line 87
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_7

    return v3

    .line 91
    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 92
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 93
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ge v3, v4, :cond_6

    return v0

    :cond_6
    if-le v3, v4, :cond_7

    return v2

    .line 100
    :cond_7
    invoke-virtual {p0}, Lcom/amazon/whispersync/CreateDatasetRequest;->getName()Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-virtual {v1}, Lcom/amazon/whispersync/CreateDatasetRequest;->getName()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_c

    if-nez v3, :cond_8

    return v0

    :cond_8
    if-nez v4, :cond_9

    return v2

    .line 107
    :cond_9
    instance-of v5, v3, Ljava/lang/Comparable;

    if-eqz v5, :cond_a

    .line 109
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_c

    return v3

    .line 113
    :cond_a
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 114
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 115
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ge v3, v4, :cond_b

    return v0

    :cond_b
    if-le v3, v4, :cond_c

    return v2

    .line 122
    :cond_c
    invoke-virtual {p0}, Lcom/amazon/whispersync/CreateDatasetRequest;->getSubscription()Lcom/amazon/whispersync/Subscription;

    move-result-object v3

    .line 123
    invoke-virtual {v1}, Lcom/amazon/whispersync/CreateDatasetRequest;->getSubscription()Lcom/amazon/whispersync/Subscription;

    move-result-object v1

    if-eq v3, v1, :cond_11

    if-nez v3, :cond_d

    return v0

    :cond_d
    if-nez v1, :cond_e

    return v2

    .line 129
    :cond_e
    instance-of v4, v3, Ljava/lang/Comparable;

    if-eqz v4, :cond_f

    .line 131
    invoke-interface {v3, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_11

    return v0

    .line 135
    :cond_f
    invoke-virtual {v3, v1}, Lcom/amazon/whispersync/Subscription;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 136
    invoke-virtual {v3}, Lcom/amazon/whispersync/Subscription;->hashCode()I

    move-result v3

    .line 137
    invoke-virtual {v1}, Lcom/amazon/whispersync/Subscription;->hashCode()I

    move-result v1

    if-ge v3, v1, :cond_10

    return v0

    :cond_10
    if-le v3, v1, :cond_11

    return v2

    .line 143
    :cond_11
    invoke-super {p0, p1}, Lcom/amazon/whispersync/CustomerRequest;->compareTo(Lcom/amazon/whispersync/HttpRequest;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/whispersync/HttpRequest;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/CreateDatasetRequest;->compareTo(Lcom/amazon/whispersync/HttpRequest;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 61
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispersync/CreateDatasetRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 62
    check-cast p1, Lcom/amazon/whispersync/CreateDatasetRequest;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/CreateDatasetRequest;->compareTo(Lcom/amazon/whispersync/HttpRequest;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/amazon/whispersync/CreateDatasetRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/amazon/whispersync/CreateDatasetRequest;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscription()Lcom/amazon/whispersync/Subscription;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/whispersync/CreateDatasetRequest;->subscription:Lcom/amazon/whispersync/Subscription;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcom/amazon/whispersync/CreateDatasetRequest;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/CreateDatasetRequest;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 52
    invoke-virtual {p0}, Lcom/amazon/whispersync/CreateDatasetRequest;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/CreateDatasetRequest;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 53
    invoke-virtual {p0}, Lcom/amazon/whispersync/CreateDatasetRequest;->getSubscription()Lcom/amazon/whispersync/Subscription;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/CreateDatasetRequest;->getSubscription()Lcom/amazon/whispersync/Subscription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/Subscription;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 54
    invoke-super {p0}, Lcom/amazon/whispersync/CustomerRequest;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amazon/whispersync/CreateDatasetRequest;->name:Ljava/lang/String;

    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/amazon/whispersync/CreateDatasetRequest;->namespace:Ljava/lang/String;

    return-void
.end method

.method public setSubscription(Lcom/amazon/whispersync/Subscription;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/whispersync/CreateDatasetRequest;->subscription:Lcom/amazon/whispersync/Subscription;

    return-void
.end method
