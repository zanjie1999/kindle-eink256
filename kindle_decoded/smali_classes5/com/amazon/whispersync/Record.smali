.class public Lcom/amazon/whispersync/Record;
.super Ljava/lang/Object;
.source "Record.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/amazon/whispersync/coral/annotation/Shape;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Wrapper;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlName;
    value = "Record"
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlNamespace;
    value = "http://internal.amazon.com/coral/com.amazon.whispersync/"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/whispersync/Record;",
        ">;"
    }
.end annotation


# instance fields
.field private isDeleted:Z

.field private key:Ljava/lang/String;

.field private lastUpdatedTime:Ljava/lang/String;

.field private serverSyncCount:Ljava/lang/Long;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/whispersync/Record;)I
    .locals 6

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    return v1

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/Record;->getType()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_6

    if-nez v2, :cond_2

    return v0

    :cond_2
    if-nez v3, :cond_3

    return v4

    .line 115
    :cond_3
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_4

    .line 117
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_6

    return v2

    .line 121
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 122
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 123
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_5

    return v0

    :cond_5
    if-le v2, v3, :cond_6

    return v4

    .line 130
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_b

    if-nez v2, :cond_7

    return v0

    :cond_7
    if-nez v3, :cond_8

    return v4

    .line 137
    :cond_8
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_9

    .line 139
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_b

    return v2

    .line 143
    :cond_9
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 144
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 145
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_a

    return v0

    :cond_a
    if-le v2, v3, :cond_b

    return v4

    .line 152
    :cond_b
    invoke-virtual {p0}, Lcom/amazon/whispersync/Record;->getServerSyncCount()Ljava/lang/Long;

    move-result-object v2

    .line 153
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getServerSyncCount()Ljava/lang/Long;

    move-result-object v3

    if-eq v2, v3, :cond_10

    if-nez v2, :cond_c

    return v0

    :cond_c
    if-nez v3, :cond_d

    return v4

    .line 159
    :cond_d
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_e

    .line 161
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_10

    return v2

    .line 165
    :cond_e
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 166
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 167
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_f

    return v0

    :cond_f
    if-le v2, v3, :cond_10

    return v4

    .line 174
    :cond_10
    invoke-virtual {p0}, Lcom/amazon/whispersync/Record;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_15

    if-nez v2, :cond_11

    return v0

    :cond_11
    if-nez v3, :cond_12

    return v4

    .line 181
    :cond_12
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_13

    .line 183
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_15

    return v2

    .line 187
    :cond_13
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 188
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 189
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_14

    return v0

    :cond_14
    if-le v2, v3, :cond_15

    return v4

    .line 195
    :cond_15
    invoke-virtual {p0}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result v2

    if-eqz v2, :cond_16

    return v0

    .line 197
    :cond_16
    invoke-virtual {p0}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result v2

    if-nez v2, :cond_17

    return v4

    .line 200
    :cond_17
    invoke-virtual {p0}, Lcom/amazon/whispersync/Record;->getLastUpdatedTime()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->getLastUpdatedTime()Ljava/lang/String;

    move-result-object p1

    if-eq v2, p1, :cond_1c

    if-nez v2, :cond_18

    return v0

    :cond_18
    if-nez p1, :cond_19

    return v4

    .line 207
    :cond_19
    instance-of v3, v2, Ljava/lang/Comparable;

    if-eqz v3, :cond_1a

    .line 209
    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_1c

    return p1

    .line 213
    :cond_1a
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 214
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-ge v2, p1, :cond_1b

    return v0

    :cond_1b
    if-le v2, p1, :cond_1c

    return v4

    :cond_1c
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/whispersync/Record;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/Record;->compareTo(Lcom/amazon/whispersync/Record;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 93
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispersync/Record;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 94
    check-cast p1, Lcom/amazon/whispersync/Record;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/Record;->compareTo(Lcom/amazon/whispersync/Record;)I

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

.method public getKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/amazon/whispersync/Record;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdatedTime()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/whispersync/Record;->lastUpdatedTime:Ljava/lang/String;

    return-object v0
.end method

.method public getServerSyncCount()Ljava/lang/Long;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/whispersync/Record;->serverSyncCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/EnumValues;
        value = {
            "BLOB",
            "TEXT"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/amazon/whispersync/Record;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/whispersync/Record;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 79
    invoke-virtual {p0}, Lcom/amazon/whispersync/Record;->getType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/Record;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 80
    invoke-virtual {p0}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/Record;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 81
    invoke-virtual {p0}, Lcom/amazon/whispersync/Record;->getServerSyncCount()Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/Record;->getServerSyncCount()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    .line 82
    invoke-virtual {p0}, Lcom/amazon/whispersync/Record;->getValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispersync/Record;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    .line 83
    invoke-virtual {p0}, Lcom/amazon/whispersync/Record;->isIsDeleted()Z

    move-result v2

    add-int/2addr v0, v2

    .line 84
    invoke-virtual {p0}, Lcom/amazon/whispersync/Record;->getLastUpdatedTime()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/amazon/whispersync/Record;->getLastUpdatedTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public isIsDeleted()Z
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
    .end annotation

    .line 60
    iget-boolean v0, p0, Lcom/amazon/whispersync/Record;->isDeleted:Z

    return v0
.end method

.method public setIsDeleted(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/amazon/whispersync/Record;->isDeleted:Z

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/whispersync/Record;->key:Ljava/lang/String;

    return-void
.end method

.method public setLastUpdatedTime(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/whispersync/Record;->lastUpdatedTime:Ljava/lang/String;

    return-void
.end method

.method public setServerSyncCount(Ljava/lang/Long;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amazon/whispersync/Record;->serverSyncCount:Ljava/lang/Long;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/amazon/whispersync/Record;->type:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/whispersync/Record;->value:Ljava/lang/String;

    return-void
.end method
