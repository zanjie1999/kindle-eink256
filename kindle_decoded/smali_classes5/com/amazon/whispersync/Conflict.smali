.class public Lcom/amazon/whispersync/Conflict;
.super Ljava/lang/Object;
.source "Conflict.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/amazon/whispersync/coral/annotation/Shape;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Wrapper;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlName;
    value = "Conflict"
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlNamespace;
    value = "http://internal.amazon.com/coral/com.amazon.whispersync/"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/whispersync/Conflict;",
        ">;"
    }
.end annotation


# instance fields
.field private cloud:Lcom/amazon/whispersync/Record;

.field private local:Lcom/amazon/whispersync/Record;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/whispersync/Conflict;)I
    .locals 6

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    return v1

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/Conflict;->getCloud()Lcom/amazon/whispersync/Record;

    move-result-object v2

    .line 64
    invoke-virtual {p1}, Lcom/amazon/whispersync/Conflict;->getCloud()Lcom/amazon/whispersync/Record;

    move-result-object v3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_6

    if-nez v2, :cond_2

    return v0

    :cond_2
    if-nez v3, :cond_3

    return v4

    .line 70
    :cond_3
    instance-of v5, v2, Ljava/lang/Comparable;

    if-eqz v5, :cond_4

    .line 72
    invoke-interface {v2, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_6

    return v2

    .line 76
    :cond_4
    invoke-virtual {v2, v3}, Lcom/amazon/whispersync/Record;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 77
    invoke-virtual {v2}, Lcom/amazon/whispersync/Record;->hashCode()I

    move-result v2

    .line 78
    invoke-virtual {v3}, Lcom/amazon/whispersync/Record;->hashCode()I

    move-result v3

    if-ge v2, v3, :cond_5

    return v0

    :cond_5
    if-le v2, v3, :cond_6

    return v4

    .line 85
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/whispersync/Conflict;->getLocal()Lcom/amazon/whispersync/Record;

    move-result-object v2

    .line 86
    invoke-virtual {p1}, Lcom/amazon/whispersync/Conflict;->getLocal()Lcom/amazon/whispersync/Record;

    move-result-object p1

    if-eq v2, p1, :cond_b

    if-nez v2, :cond_7

    return v0

    :cond_7
    if-nez p1, :cond_8

    return v4

    .line 92
    :cond_8
    instance-of v3, v2, Ljava/lang/Comparable;

    if-eqz v3, :cond_9

    .line 94
    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_b

    return p1

    .line 98
    :cond_9
    invoke-virtual {v2, p1}, Lcom/amazon/whispersync/Record;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 99
    invoke-virtual {v2}, Lcom/amazon/whispersync/Record;->hashCode()I

    move-result v2

    .line 100
    invoke-virtual {p1}, Lcom/amazon/whispersync/Record;->hashCode()I

    move-result p1

    if-ge v2, p1, :cond_a

    return v0

    :cond_a
    if-le v2, p1, :cond_b

    return v4

    :cond_b
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/amazon/whispersync/Conflict;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/Conflict;->compareTo(Lcom/amazon/whispersync/Conflict;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 48
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispersync/Conflict;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 49
    check-cast p1, Lcom/amazon/whispersync/Conflict;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/Conflict;->compareTo(Lcom/amazon/whispersync/Conflict;)I

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

.method public getCloud()Lcom/amazon/whispersync/Record;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/whispersync/Conflict;->cloud:Lcom/amazon/whispersync/Record;

    return-object v0
.end method

.method public getLocal()Lcom/amazon/whispersync/Record;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/whispersync/Conflict;->local:Lcom/amazon/whispersync/Record;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 38
    invoke-virtual {p0}, Lcom/amazon/whispersync/Conflict;->getCloud()Lcom/amazon/whispersync/Record;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/Conflict;->getCloud()Lcom/amazon/whispersync/Record;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/Record;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 39
    invoke-virtual {p0}, Lcom/amazon/whispersync/Conflict;->getLocal()Lcom/amazon/whispersync/Record;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/Conflict;->getLocal()Lcom/amazon/whispersync/Record;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/Record;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public setCloud(Lcom/amazon/whispersync/Record;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/whispersync/Conflict;->cloud:Lcom/amazon/whispersync/Record;

    return-void
.end method

.method public setLocal(Lcom/amazon/whispersync/Record;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/whispersync/Conflict;->local:Lcom/amazon/whispersync/Record;

    return-void
.end method
