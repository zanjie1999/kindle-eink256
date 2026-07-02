.class public Lcom/amazon/whispersync/Dataset;
.super Ljava/lang/Object;
.source "Dataset.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/amazon/whispersync/coral/annotation/Shape;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Wrapper;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlName;
    value = "Dataset"
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlNamespace;
    value = "http://internal.amazon.com/coral/com.amazon.whispersync/"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/whispersync/Dataset;",
        ">;"
    }
.end annotation


# instance fields
.field private identifier:Ljava/lang/String;

.field private isDeleted:Z

.field private links:Lcom/amazon/whispersync/DatasetLinks;

.field private name:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private owner:Ljava/lang/String;

.field private records:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Record;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/whispersync/Dataset;)I
    .locals 6

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    return v1

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/Dataset;->getRecords()Ljava/util/Map;

    move-result-object v2

    .line 116
    invoke-virtual {p1}, Lcom/amazon/whispersync/Dataset;->getRecords()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_6

    if-nez v2, :cond_2

    return v0

    :cond_2
    if-nez v3, :cond_3

    return v4

    .line 122
    :cond_3
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_4

    .line 123
    check-cast v2, Ljava/lang/Comparable;

    .line 124
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_6

    return v2

    .line 128
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 129
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 130
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_5

    return v0

    :cond_5
    if-le v2, v3, :cond_6

    return v4

    .line 137
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/whispersync/Dataset;->getName()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-virtual {p1}, Lcom/amazon/whispersync/Dataset;->getName()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_b

    if-nez v2, :cond_7

    return v0

    :cond_7
    if-nez v3, :cond_8

    return v4

    .line 144
    :cond_8
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_9

    .line 146
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_b

    return v2

    .line 150
    :cond_9
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 151
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 152
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_a

    return v0

    :cond_a
    if-le v2, v3, :cond_b

    return v4

    .line 159
    :cond_b
    invoke-virtual {p0}, Lcom/amazon/whispersync/Dataset;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-virtual {p1}, Lcom/amazon/whispersync/Dataset;->getNamespace()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_10

    if-nez v2, :cond_c

    return v0

    :cond_c
    if-nez v3, :cond_d

    return v4

    .line 166
    :cond_d
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_e

    .line 168
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_10

    return v2

    .line 172
    :cond_e
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 173
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 174
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_f

    return v0

    :cond_f
    if-le v2, v3, :cond_10

    return v4

    .line 181
    :cond_10
    invoke-virtual {p0}, Lcom/amazon/whispersync/Dataset;->getLinks()Lcom/amazon/whispersync/DatasetLinks;

    move-result-object v2

    .line 182
    invoke-virtual {p1}, Lcom/amazon/whispersync/Dataset;->getLinks()Lcom/amazon/whispersync/DatasetLinks;

    move-result-object v3

    if-eq v2, v3, :cond_15

    if-nez v2, :cond_11

    return v0

    :cond_11
    if-nez v3, :cond_12

    return v4

    .line 188
    :cond_12
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_13

    .line 190
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_15

    return v2

    .line 194
    :cond_13
    invoke-virtual {v2, v3}, Lcom/amazon/whispersync/DatasetLinks;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 195
    invoke-virtual {v2}, Lcom/amazon/whispersync/DatasetLinks;->hashCode()I

    move-result v2

    .line 196
    invoke-virtual {v3}, Lcom/amazon/whispersync/DatasetLinks;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_14

    return v0

    :cond_14
    if-le v2, v3, :cond_15

    return v4

    .line 203
    :cond_15
    invoke-virtual {p0}, Lcom/amazon/whispersync/Dataset;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-virtual {p1}, Lcom/amazon/whispersync/Dataset;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_1a

    if-nez v2, :cond_16

    return v0

    :cond_16
    if-nez v3, :cond_17

    return v4

    .line 210
    :cond_17
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_18

    .line 212
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1a

    return v2

    .line 216
    :cond_18
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 217
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 218
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_19

    return v0

    :cond_19
    if-le v2, v3, :cond_1a

    return v4

    .line 225
    :cond_1a
    invoke-virtual {p0}, Lcom/amazon/whispersync/Dataset;->getOwner()Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-virtual {p1}, Lcom/amazon/whispersync/Dataset;->getOwner()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_1f

    if-nez v2, :cond_1b

    return v0

    :cond_1b
    if-nez v3, :cond_1c

    return v4

    .line 232
    :cond_1c
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_1d

    .line 234
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1f

    return v2

    .line 238
    :cond_1d
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 239
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 240
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_1e

    return v0

    :cond_1e
    if-le v2, v3, :cond_1f

    return v4

    .line 246
    :cond_1f
    invoke-virtual {p0}, Lcom/amazon/whispersync/Dataset;->isIsDeleted()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {p1}, Lcom/amazon/whispersync/Dataset;->isIsDeleted()Z

    move-result v2

    if-eqz v2, :cond_20

    return v0

    .line 248
    :cond_20
    invoke-virtual {p0}, Lcom/amazon/whispersync/Dataset;->isIsDeleted()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/amazon/whispersync/Dataset;->isIsDeleted()Z

    move-result p1

    if-nez p1, :cond_21

    return v4

    :cond_21
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lcom/amazon/whispersync/Dataset;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/Dataset;->compareTo(Lcom/amazon/whispersync/Dataset;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 100
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispersync/Dataset;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 101
    check-cast p1, Lcom/amazon/whispersync/Dataset;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/Dataset;->compareTo(Lcom/amazon/whispersync/Dataset;)I

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

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/whispersync/Dataset;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getLinks()Lcom/amazon/whispersync/DatasetLinks;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/whispersync/Dataset;->links:Lcom/amazon/whispersync/DatasetLinks;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/whispersync/Dataset;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/whispersync/Dataset;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/whispersync/Dataset;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getRecords()Ljava/util/Map;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/MapKeyConstraint;
        value = .subannotation Lcom/amazon/whispersync/coral/annotation/NestedConstraints;
        .end subannotation
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Record;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/amazon/whispersync/Dataset;->records:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 85
    invoke-virtual {p0}, Lcom/amazon/whispersync/Dataset;->getRecords()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/Dataset;->getRecords()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 86
    invoke-virtual {p0}, Lcom/amazon/whispersync/Dataset;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/Dataset;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 87
    invoke-virtual {p0}, Lcom/amazon/whispersync/Dataset;->getNamespace()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/Dataset;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    .line 88
    invoke-virtual {p0}, Lcom/amazon/whispersync/Dataset;->getLinks()Lcom/amazon/whispersync/DatasetLinks;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispersync/Dataset;->getLinks()Lcom/amazon/whispersync/DatasetLinks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispersync/DatasetLinks;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    .line 89
    invoke-virtual {p0}, Lcom/amazon/whispersync/Dataset;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazon/whispersync/Dataset;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    .line 90
    invoke-virtual {p0}, Lcom/amazon/whispersync/Dataset;->getOwner()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/amazon/whispersync/Dataset;->getOwner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    .line 91
    invoke-virtual {p0}, Lcom/amazon/whispersync/Dataset;->isIsDeleted()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isIsDeleted()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/amazon/whispersync/Dataset;->isDeleted:Z

    return v0
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/whispersync/Dataset;->identifier:Ljava/lang/String;

    return-void
.end method

.method public setIsDeleted(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/amazon/whispersync/Dataset;->isDeleted:Z

    return-void
.end method

.method public setLinks(Lcom/amazon/whispersync/DatasetLinks;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/whispersync/Dataset;->links:Lcom/amazon/whispersync/DatasetLinks;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazon/whispersync/Dataset;->name:Ljava/lang/String;

    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/amazon/whispersync/Dataset;->namespace:Ljava/lang/String;

    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazon/whispersync/Dataset;->owner:Ljava/lang/String;

    return-void
.end method

.method public setRecords(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Record;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/amazon/whispersync/Dataset;->records:Ljava/util/Map;

    return-void
.end method
