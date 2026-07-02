.class public abstract Lcom/amazon/whispersync/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime Lcom/amazon/whispersync/coral/annotation/Shape;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Wrapper;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlName;
    value = "HttpResponse"
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlNamespace;
    value = "http://internal.amazon.com/coral/com.amazon.whispersync/"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/whispersync/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/whispersync/HttpResponse;)I
    .locals 5

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    return v1

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v2

    .line 59
    invoke-virtual {p1}, Lcom/amazon/whispersync/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    if-eq v2, p1, :cond_6

    if-nez v2, :cond_2

    return v0

    :cond_2
    const/4 v3, 0x1

    if-nez p1, :cond_3

    return v3

    .line 65
    :cond_3
    instance-of v4, v2, Ljava/lang/Comparable;

    if-eqz v4, :cond_4

    .line 66
    check-cast v2, Ljava/lang/Comparable;

    .line 67
    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_6

    return p1

    .line 71
    :cond_4
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-ge v2, p1, :cond_5

    return v0

    :cond_5
    if-le v2, p1, :cond_6

    return v3

    :cond_6
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 11
    check-cast p1, Lcom/amazon/whispersync/HttpResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/HttpResponse;->compareTo(Lcom/amazon/whispersync/HttpResponse;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 43
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispersync/HttpResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 44
    check-cast p1, Lcom/amazon/whispersync/HttpResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/HttpResponse;->compareTo(Lcom/amazon/whispersync/HttpResponse;)I

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

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/coral/annotation/MapKeyConstraint;
        value = .subannotation Lcom/amazon/whispersync/coral/annotation/NestedConstraints;
        .end subannotation
    .end annotation

    .annotation runtime Lcom/amazon/whispersync/coral/annotation/MapValueConstraint;
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/amazon/whispersync/HttpResponse;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/amazon/whispersync/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/amazon/whispersync/HttpResponse;->headers:Ljava/util/Map;

    return-void
.end method
