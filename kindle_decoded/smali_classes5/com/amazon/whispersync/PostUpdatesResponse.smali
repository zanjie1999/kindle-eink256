.class public Lcom/amazon/whispersync/PostUpdatesResponse;
.super Lcom/amazon/whispersync/HttpResponse;
.source "PostUpdatesResponse.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/coral/annotation/Shape;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Wrapper;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlName;
    value = "PostUpdatesResponse"
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlNamespace;
    value = "http://internal.amazon.com/coral/com.amazon.whispersync/"
.end annotation


# instance fields
.field private conflicts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Conflict;",
            ">;"
        }
    .end annotation
.end field

.field private links:Lcom/amazon/whispersync/PostUpdatesLinks;

.field private resolved:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/Record;",
            ">;"
        }
    .end annotation
.end field

.field private saved:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/Acknowledgment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/amazon/whispersync/HttpResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/whispersync/HttpResponse;)I
    .locals 6

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 83
    :cond_1
    instance-of v1, p1, Lcom/amazon/whispersync/PostUpdatesResponse;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    return v2

    .line 85
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/amazon/whispersync/PostUpdatesResponse;

    .line 87
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesResponse;->getConflicts()Ljava/util/Map;

    move-result-object v3

    .line 88
    invoke-virtual {v1}, Lcom/amazon/whispersync/PostUpdatesResponse;->getConflicts()Ljava/util/Map;

    move-result-object v4

    if-eq v3, v4, :cond_7

    if-nez v3, :cond_3

    return v0

    :cond_3
    if-nez v4, :cond_4

    return v2

    .line 94
    :cond_4
    instance-of v5, v3, Ljava/lang/Comparable;

    if-eqz v5, :cond_5

    .line 95
    check-cast v3, Ljava/lang/Comparable;

    .line 96
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_7

    return v3

    .line 100
    :cond_5
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 101
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 102
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ge v3, v4, :cond_6

    return v0

    :cond_6
    if-le v3, v4, :cond_7

    return v2

    .line 109
    :cond_7
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesResponse;->getSaved()Ljava/util/List;

    move-result-object v3

    .line 110
    invoke-virtual {v1}, Lcom/amazon/whispersync/PostUpdatesResponse;->getSaved()Ljava/util/List;

    move-result-object v4

    if-eq v3, v4, :cond_c

    if-nez v3, :cond_8

    return v0

    :cond_8
    if-nez v4, :cond_9

    return v2

    .line 116
    :cond_9
    instance-of v5, v3, Ljava/lang/Comparable;

    if-eqz v5, :cond_a

    .line 117
    check-cast v3, Ljava/lang/Comparable;

    .line 118
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_c

    return v3

    .line 122
    :cond_a
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 123
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 124
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    if-ge v3, v4, :cond_b

    return v0

    :cond_b
    if-le v3, v4, :cond_c

    return v2

    .line 131
    :cond_c
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesResponse;->getLinks()Lcom/amazon/whispersync/PostUpdatesLinks;

    move-result-object v3

    .line 132
    invoke-virtual {v1}, Lcom/amazon/whispersync/PostUpdatesResponse;->getLinks()Lcom/amazon/whispersync/PostUpdatesLinks;

    move-result-object v4

    if-eq v3, v4, :cond_11

    if-nez v3, :cond_d

    return v0

    :cond_d
    if-nez v4, :cond_e

    return v2

    .line 138
    :cond_e
    instance-of v5, v3, Ljava/lang/Comparable;

    if-eqz v5, :cond_f

    .line 140
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_11

    return v3

    .line 144
    :cond_f
    invoke-virtual {v3, v4}, Lcom/amazon/whispersync/PostUpdatesLinks;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 145
    invoke-virtual {v3}, Lcom/amazon/whispersync/PostUpdatesLinks;->hashCode()I

    move-result v3

    .line 146
    invoke-virtual {v4}, Lcom/amazon/whispersync/PostUpdatesLinks;->hashCode()I

    move-result v4

    if-ge v3, v4, :cond_10

    return v0

    :cond_10
    if-le v3, v4, :cond_11

    return v2

    .line 153
    :cond_11
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesResponse;->getResolved()Ljava/util/List;

    move-result-object v3

    .line 154
    invoke-virtual {v1}, Lcom/amazon/whispersync/PostUpdatesResponse;->getResolved()Ljava/util/List;

    move-result-object v1

    if-eq v3, v1, :cond_16

    if-nez v3, :cond_12

    return v0

    :cond_12
    if-nez v1, :cond_13

    return v2

    .line 160
    :cond_13
    instance-of v4, v3, Ljava/lang/Comparable;

    if-eqz v4, :cond_14

    .line 161
    check-cast v3, Ljava/lang/Comparable;

    .line 162
    invoke-interface {v3, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_16

    return v0

    .line 166
    :cond_14
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 167
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 168
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ge v3, v1, :cond_15

    return v0

    :cond_15
    if-le v3, v1, :cond_16

    return v2

    .line 174
    :cond_16
    invoke-super {p0, p1}, Lcom/amazon/whispersync/HttpResponse;->compareTo(Lcom/amazon/whispersync/HttpResponse;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/whispersync/HttpResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/PostUpdatesResponse;->compareTo(Lcom/amazon/whispersync/HttpResponse;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 70
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispersync/PostUpdatesResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 71
    check-cast p1, Lcom/amazon/whispersync/PostUpdatesResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/PostUpdatesResponse;->compareTo(Lcom/amazon/whispersync/HttpResponse;)I

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

.method public getConflicts()Ljava/util/Map;
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
            "Lcom/amazon/whispersync/Conflict;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/amazon/whispersync/PostUpdatesResponse;->conflicts:Ljava/util/Map;

    return-object v0
.end method

.method public getLinks()Lcom/amazon/whispersync/PostUpdatesLinks;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/whispersync/PostUpdatesResponse;->links:Lcom/amazon/whispersync/PostUpdatesLinks;

    return-object v0
.end method

.method public getResolved()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/Record;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/amazon/whispersync/PostUpdatesResponse;->resolved:Ljava/util/List;

    return-object v0
.end method

.method public getSaved()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/Acknowledgment;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/amazon/whispersync/PostUpdatesResponse;->saved:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 59
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesResponse;->getConflicts()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesResponse;->getConflicts()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 60
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesResponse;->getSaved()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesResponse;->getSaved()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 61
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesResponse;->getLinks()Lcom/amazon/whispersync/PostUpdatesLinks;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesResponse;->getLinks()Lcom/amazon/whispersync/PostUpdatesLinks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/whispersync/PostUpdatesLinks;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    .line 62
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesResponse;->getResolved()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesResponse;->getResolved()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 63
    invoke-super {p0}, Lcom/amazon/whispersync/HttpResponse;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setConflicts(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/whispersync/Conflict;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/amazon/whispersync/PostUpdatesResponse;->conflicts:Ljava/util/Map;

    return-void
.end method

.method public setLinks(Lcom/amazon/whispersync/PostUpdatesLinks;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/whispersync/PostUpdatesResponse;->links:Lcom/amazon/whispersync/PostUpdatesLinks;

    return-void
.end method

.method public setResolved(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/Record;",
            ">;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/amazon/whispersync/PostUpdatesResponse;->resolved:Ljava/util/List;

    return-void
.end method

.method public setSaved(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/Acknowledgment;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/amazon/whispersync/PostUpdatesResponse;->saved:Ljava/util/List;

    return-void
.end method
