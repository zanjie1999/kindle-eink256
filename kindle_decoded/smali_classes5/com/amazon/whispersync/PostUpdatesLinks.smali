.class public Lcom/amazon/whispersync/PostUpdatesLinks;
.super Ljava/lang/Object;
.source "PostUpdatesLinks.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/amazon/whispersync/coral/annotation/Shape;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Wrapper;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlName;
    value = "PostUpdatesLinks"
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlNamespace;
    value = "http://internal.amazon.com/coral/com.amazon.whispersync/"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/whispersync/PostUpdatesLinks;",
        ">;"
    }
.end annotation


# instance fields
.field private dataset:Ljava/lang/String;

.field private directory:Ljava/lang/String;

.field private records:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/whispersync/PostUpdatesLinks;)I
    .locals 6

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    return v1

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesLinks;->getRecords()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {p1}, Lcom/amazon/whispersync/PostUpdatesLinks;->getRecords()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_6

    if-nez v2, :cond_2

    return v0

    :cond_2
    if-nez v3, :cond_3

    return v4

    .line 80
    :cond_3
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_4

    .line 82
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_6

    return v2

    .line 86
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 87
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 88
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_5

    return v0

    :cond_5
    if-le v2, v3, :cond_6

    return v4

    .line 95
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesLinks;->getDirectory()Ljava/lang/String;

    move-result-object v2

    .line 96
    invoke-virtual {p1}, Lcom/amazon/whispersync/PostUpdatesLinks;->getDirectory()Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_b

    if-nez v2, :cond_7

    return v0

    :cond_7
    if-nez v3, :cond_8

    return v4

    .line 102
    :cond_8
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_9

    .line 104
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_b

    return v2

    .line 108
    :cond_9
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 109
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 110
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_a

    return v0

    :cond_a
    if-le v2, v3, :cond_b

    return v4

    .line 117
    :cond_b
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesLinks;->getDataset()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {p1}, Lcom/amazon/whispersync/PostUpdatesLinks;->getDataset()Ljava/lang/String;

    move-result-object p1

    if-eq v2, p1, :cond_10

    if-nez v2, :cond_c

    return v0

    :cond_c
    if-nez p1, :cond_d

    return v4

    .line 124
    :cond_d
    instance-of v3, v2, Ljava/lang/Comparable;

    if-eqz v3, :cond_e

    .line 126
    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_10

    return p1

    .line 130
    :cond_e
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 131
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-ge v2, p1, :cond_f

    return v0

    :cond_f
    if-le v2, p1, :cond_10

    return v4

    :cond_10
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/amazon/whispersync/PostUpdatesLinks;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/PostUpdatesLinks;->compareTo(Lcom/amazon/whispersync/PostUpdatesLinks;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 58
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispersync/PostUpdatesLinks;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 59
    check-cast p1, Lcom/amazon/whispersync/PostUpdatesLinks;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/PostUpdatesLinks;->compareTo(Lcom/amazon/whispersync/PostUpdatesLinks;)I

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

.method public getDataset()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/whispersync/PostUpdatesLinks;->dataset:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectory()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/whispersync/PostUpdatesLinks;->directory:Ljava/lang/String;

    return-object v0
.end method

.method public getRecords()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/whispersync/PostUpdatesLinks;->records:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 47
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesLinks;->getRecords()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesLinks;->getRecords()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 48
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesLinks;->getDirectory()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesLinks;->getDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 49
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesLinks;->getDataset()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/whispersync/PostUpdatesLinks;->getDataset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public setDataset(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/whispersync/PostUpdatesLinks;->dataset:Ljava/lang/String;

    return-void
.end method

.method public setDirectory(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/whispersync/PostUpdatesLinks;->directory:Ljava/lang/String;

    return-void
.end method

.method public setRecords(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amazon/whispersync/PostUpdatesLinks;->records:Ljava/lang/String;

    return-void
.end method
