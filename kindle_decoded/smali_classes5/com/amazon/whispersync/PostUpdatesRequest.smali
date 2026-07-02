.class public Lcom/amazon/whispersync/PostUpdatesRequest;
.super Lcom/amazon/whispersync/DatasetRequest;
.source "PostUpdatesRequest.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/coral/annotation/Shape;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Wrapper;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlName;
    value = "PostUpdatesRequest"
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlNamespace;
    value = "http://internal.amazon.com/coral/com.amazon.whispersync/"
.end annotation


# instance fields
.field private links:Lcom/amazon/whispersync/DirectoryRequestLinks;

.field private updates:Ljava/util/Map;
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

    .line 15
    invoke-direct {p0}, Lcom/amazon/whispersync/DatasetRequest;-><init>()V

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

    .line 64
    :cond_1
    instance-of v1, p1, Lcom/amazon/whispersync/PostUpdatesRequest;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    return v2

    .line 66
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/amazon/whispersync/PostUpdatesRequest;

    .line 68
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesRequest;->getLinks()Lcom/amazon/whispersync/DirectoryRequestLinks;

    move-result-object v3

    .line 69
    invoke-virtual {v1}, Lcom/amazon/whispersync/PostUpdatesRequest;->getLinks()Lcom/amazon/whispersync/DirectoryRequestLinks;

    move-result-object v4

    if-eq v3, v4, :cond_7

    if-nez v3, :cond_3

    return v0

    :cond_3
    if-nez v4, :cond_4

    return v2

    .line 75
    :cond_4
    instance-of v5, v3, Ljava/lang/Comparable;

    if-eqz v5, :cond_5

    .line 77
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_7

    return v3

    .line 81
    :cond_5
    invoke-virtual {v3, v4}, Lcom/amazon/whispersync/DirectoryRequestLinks;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 82
    invoke-virtual {v3}, Lcom/amazon/whispersync/DirectoryRequestLinks;->hashCode()I

    move-result v3

    .line 83
    invoke-virtual {v4}, Lcom/amazon/whispersync/DirectoryRequestLinks;->hashCode()I

    move-result v4

    if-ge v3, v4, :cond_6

    return v0

    :cond_6
    if-le v3, v4, :cond_7

    return v2

    .line 90
    :cond_7
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesRequest;->getUpdates()Ljava/util/Map;

    move-result-object v3

    .line 91
    invoke-virtual {v1}, Lcom/amazon/whispersync/PostUpdatesRequest;->getUpdates()Ljava/util/Map;

    move-result-object v1

    if-eq v3, v1, :cond_c

    if-nez v3, :cond_8

    return v0

    :cond_8
    if-nez v1, :cond_9

    return v2

    .line 97
    :cond_9
    instance-of v4, v3, Ljava/lang/Comparable;

    if-eqz v4, :cond_a

    .line 98
    check-cast v3, Ljava/lang/Comparable;

    .line 99
    invoke-interface {v3, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    .line 103
    :cond_a
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 104
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ge v3, v1, :cond_b

    return v0

    :cond_b
    if-le v3, v1, :cond_c

    return v2

    .line 111
    :cond_c
    invoke-super {p0, p1}, Lcom/amazon/whispersync/DatasetRequest;->compareTo(Lcom/amazon/whispersync/HttpRequest;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/whispersync/HttpRequest;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/PostUpdatesRequest;->compareTo(Lcom/amazon/whispersync/HttpRequest;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 51
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispersync/PostUpdatesRequest;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 52
    check-cast p1, Lcom/amazon/whispersync/PostUpdatesRequest;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/PostUpdatesRequest;->compareTo(Lcom/amazon/whispersync/HttpRequest;)I

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

.method public getLinks()Lcom/amazon/whispersync/DirectoryRequestLinks;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/whispersync/PostUpdatesRequest;->links:Lcom/amazon/whispersync/DirectoryRequestLinks;

    return-object v0
.end method

.method public getUpdates()Ljava/util/Map;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/MapKeyConstraint;
        value = .subannotation Lcom/amazon/whispersync/coral/annotation/NestedConstraints;
        .end subannotation
    .end annotation

    .annotation runtime Lcom/amazon/whispersync/coral/annotation/Required;
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

    .line 31
    iget-object v0, p0, Lcom/amazon/whispersync/PostUpdatesRequest;->updates:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 42
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesRequest;->getLinks()Lcom/amazon/whispersync/DirectoryRequestLinks;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesRequest;->getLinks()Lcom/amazon/whispersync/DirectoryRequestLinks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/DirectoryRequestLinks;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 43
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesRequest;->getUpdates()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesRequest;->getUpdates()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 44
    invoke-super {p0}, Lcom/amazon/whispersync/DatasetRequest;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setLinks(Lcom/amazon/whispersync/DirectoryRequestLinks;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/amazon/whispersync/PostUpdatesRequest;->links:Lcom/amazon/whispersync/DirectoryRequestLinks;

    return-void
.end method

.method public setUpdates(Ljava/util/Map;)V
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

    .line 35
    iput-object p1, p0, Lcom/amazon/whispersync/PostUpdatesRequest;->updates:Ljava/util/Map;

    return-void
.end method
