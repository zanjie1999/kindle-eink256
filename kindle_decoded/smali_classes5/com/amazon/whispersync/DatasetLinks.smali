.class public Lcom/amazon/whispersync/DatasetLinks;
.super Lcom/amazon/whispersync/PaginationLinks;
.source "DatasetLinks.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/coral/annotation/Shape;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Wrapper;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlName;
    value = "DatasetLinks"
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlNamespace;
    value = "http://internal.amazon.com/coral/com.amazon.whispersync/"
.end annotation


# instance fields
.field private future:Ljava/lang/String;

.field private records:Ljava/lang/String;

.field private self:Ljava/lang/String;

.field private subscriptions:Ljava/lang/String;

.field private updates:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/amazon/whispersync/PaginationLinks;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/whispersync/PaginationLinks;)I
    .locals 6

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 90
    :cond_1
    instance-of v1, p1, Lcom/amazon/whispersync/DatasetLinks;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    return v2

    .line 92
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/amazon/whispersync/DatasetLinks;

    .line 94
    invoke-virtual {p0}, Lcom/amazon/whispersync/DatasetLinks;->getSubscriptions()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-virtual {v1}, Lcom/amazon/whispersync/DatasetLinks;->getSubscriptions()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_7

    if-nez v3, :cond_3

    return v0

    :cond_3
    if-nez v4, :cond_4

    return v2

    .line 101
    :cond_4
    instance-of v5, v3, Ljava/lang/Comparable;

    if-eqz v5, :cond_5

    .line 103
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_7

    return v3

    .line 107
    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 108
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 109
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ge v3, v4, :cond_6

    return v0

    :cond_6
    if-le v3, v4, :cond_7

    return v2

    .line 116
    :cond_7
    invoke-virtual {p0}, Lcom/amazon/whispersync/DatasetLinks;->getSelf()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual {v1}, Lcom/amazon/whispersync/DatasetLinks;->getSelf()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_c

    if-nez v3, :cond_8

    return v0

    :cond_8
    if-nez v4, :cond_9

    return v2

    .line 123
    :cond_9
    instance-of v5, v3, Ljava/lang/Comparable;

    if-eqz v5, :cond_a

    .line 125
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_c

    return v3

    .line 129
    :cond_a
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 130
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 131
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ge v3, v4, :cond_b

    return v0

    :cond_b
    if-le v3, v4, :cond_c

    return v2

    .line 138
    :cond_c
    invoke-virtual {p0}, Lcom/amazon/whispersync/DatasetLinks;->getUpdates()Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-virtual {v1}, Lcom/amazon/whispersync/DatasetLinks;->getUpdates()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_11

    if-nez v3, :cond_d

    return v0

    :cond_d
    if-nez v4, :cond_e

    return v2

    .line 145
    :cond_e
    instance-of v5, v3, Ljava/lang/Comparable;

    if-eqz v5, :cond_f

    .line 147
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_11

    return v3

    .line 151
    :cond_f
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 152
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 153
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ge v3, v4, :cond_10

    return v0

    :cond_10
    if-le v3, v4, :cond_11

    return v2

    .line 160
    :cond_11
    invoke-virtual {p0}, Lcom/amazon/whispersync/DatasetLinks;->getFuture()Ljava/lang/String;

    move-result-object v3

    .line 161
    invoke-virtual {v1}, Lcom/amazon/whispersync/DatasetLinks;->getFuture()Ljava/lang/String;

    move-result-object v4

    if-eq v3, v4, :cond_16

    if-nez v3, :cond_12

    return v0

    :cond_12
    if-nez v4, :cond_13

    return v2

    .line 167
    :cond_13
    instance-of v5, v3, Ljava/lang/Comparable;

    if-eqz v5, :cond_14

    .line 169
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_16

    return v3

    .line 173
    :cond_14
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 174
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 175
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ge v3, v4, :cond_15

    return v0

    :cond_15
    if-le v3, v4, :cond_16

    return v2

    .line 182
    :cond_16
    invoke-virtual {p0}, Lcom/amazon/whispersync/DatasetLinks;->getRecords()Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-virtual {v1}, Lcom/amazon/whispersync/DatasetLinks;->getRecords()Ljava/lang/String;

    move-result-object v1

    if-eq v3, v1, :cond_1b

    if-nez v3, :cond_17

    return v0

    :cond_17
    if-nez v1, :cond_18

    return v2

    .line 189
    :cond_18
    instance-of v4, v3, Ljava/lang/Comparable;

    if-eqz v4, :cond_19

    .line 191
    invoke-interface {v3, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1b

    return v0

    .line 195
    :cond_19
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 196
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 197
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ge v3, v1, :cond_1a

    return v0

    :cond_1a
    if-le v3, v1, :cond_1b

    return v2

    .line 203
    :cond_1b
    invoke-super {p0, p1}, Lcom/amazon/whispersync/PaginationLinks;->compareTo(Lcom/amazon/whispersync/PaginationLinks;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/amazon/whispersync/PaginationLinks;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/DatasetLinks;->compareTo(Lcom/amazon/whispersync/PaginationLinks;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 77
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispersync/DatasetLinks;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 78
    check-cast p1, Lcom/amazon/whispersync/DatasetLinks;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/DatasetLinks;->compareTo(Lcom/amazon/whispersync/PaginationLinks;)I

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

.method public getFuture()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/whispersync/DatasetLinks;->future:Ljava/lang/String;

    return-object v0
.end method

.method public getRecords()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/whispersync/DatasetLinks;->records:Ljava/lang/String;

    return-object v0
.end method

.method public getSelf()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/whispersync/DatasetLinks;->self:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriptions()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/whispersync/DatasetLinks;->subscriptions:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdates()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/whispersync/DatasetLinks;->updates:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 65
    invoke-virtual {p0}, Lcom/amazon/whispersync/DatasetLinks;->getSubscriptions()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/DatasetLinks;->getSubscriptions()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 66
    invoke-virtual {p0}, Lcom/amazon/whispersync/DatasetLinks;->getSelf()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/DatasetLinks;->getSelf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 67
    invoke-virtual {p0}, Lcom/amazon/whispersync/DatasetLinks;->getUpdates()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/DatasetLinks;->getUpdates()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    .line 68
    invoke-virtual {p0}, Lcom/amazon/whispersync/DatasetLinks;->getFuture()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispersync/DatasetLinks;->getFuture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    .line 69
    invoke-virtual {p0}, Lcom/amazon/whispersync/DatasetLinks;->getRecords()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazon/whispersync/DatasetLinks;->getRecords()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 70
    invoke-super {p0}, Lcom/amazon/whispersync/PaginationLinks;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setFuture(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/whispersync/DatasetLinks;->future:Ljava/lang/String;

    return-void
.end method

.method public setRecords(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/whispersync/DatasetLinks;->records:Ljava/lang/String;

    return-void
.end method

.method public setSelf(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/whispersync/DatasetLinks;->self:Ljava/lang/String;

    return-void
.end method

.method public setSubscriptions(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/whispersync/DatasetLinks;->subscriptions:Ljava/lang/String;

    return-void
.end method

.method public setUpdates(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/whispersync/DatasetLinks;->updates:Ljava/lang/String;

    return-void
.end method
