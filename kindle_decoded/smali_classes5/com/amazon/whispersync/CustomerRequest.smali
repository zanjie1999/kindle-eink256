.class public abstract Lcom/amazon/whispersync/CustomerRequest;
.super Lcom/amazon/whispersync/HttpRequest;
.source "CustomerRequest.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/coral/annotation/Shape;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Wrapper;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlName;
    value = "CustomerRequest"
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlNamespace;
    value = "http://internal.amazon.com/coral/com.amazon.whispersync/"
.end annotation


# instance fields
.field private customerId:Ljava/lang/String;

.field private subscriberId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/amazon/whispersync/HttpRequest;-><init>()V

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

    .line 63
    :cond_1
    instance-of v1, p1, Lcom/amazon/whispersync/CustomerRequest;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    return v2

    .line 65
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/amazon/whispersync/CustomerRequest;

    .line 67
    invoke-virtual {p0}, Lcom/amazon/whispersync/CustomerRequest;->getCustomerId()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-virtual {v1}, Lcom/amazon/whispersync/CustomerRequest;->getCustomerId()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_7

    if-nez v3, :cond_3

    return v0

    :cond_3
    if-nez v4, :cond_4

    return v2

    .line 74
    :cond_4
    instance-of v5, v3, Ljava/lang/Comparable;

    if-eqz v5, :cond_5

    .line 76
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_7

    return v3

    .line 80
    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 81
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 82
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ge v3, v4, :cond_6

    return v0

    :cond_6
    if-le v3, v4, :cond_7

    return v2

    .line 89
    :cond_7
    invoke-virtual {p0}, Lcom/amazon/whispersync/CustomerRequest;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {v1}, Lcom/amazon/whispersync/CustomerRequest;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    if-eq v3, v1, :cond_c

    if-nez v3, :cond_8

    return v0

    :cond_8
    if-nez v1, :cond_9

    return v2

    .line 96
    :cond_9
    instance-of v4, v3, Ljava/lang/Comparable;

    if-eqz v4, :cond_a

    .line 98
    invoke-interface {v3, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    .line 102
    :cond_a
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 103
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 104
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ge v3, v1, :cond_b

    return v0

    :cond_b
    if-le v3, v1, :cond_c

    return v2

    .line 110
    :cond_c
    invoke-super {p0, p1}, Lcom/amazon/whispersync/HttpRequest;->compareTo(Lcom/amazon/whispersync/HttpRequest;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/whispersync/HttpRequest;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/CustomerRequest;->compareTo(Lcom/amazon/whispersync/HttpRequest;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 50
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispersync/CustomerRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 51
    check-cast p1, Lcom/amazon/whispersync/CustomerRequest;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/CustomerRequest;->compareTo(Lcom/amazon/whispersync/HttpRequest;)I

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

.method public getCustomerId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/amazon/whispersync/CustomerRequest;->customerId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/whispersync/CustomerRequest;->subscriberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 41
    invoke-virtual {p0}, Lcom/amazon/whispersync/CustomerRequest;->getCustomerId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/CustomerRequest;->getCustomerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 42
    invoke-virtual {p0}, Lcom/amazon/whispersync/CustomerRequest;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/CustomerRequest;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 43
    invoke-super {p0}, Lcom/amazon/whispersync/HttpRequest;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setCustomerId(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/whispersync/CustomerRequest;->customerId:Ljava/lang/String;

    return-void
.end method

.method public setSubscriberId(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/whispersync/CustomerRequest;->subscriberId:Ljava/lang/String;

    return-void
.end method
