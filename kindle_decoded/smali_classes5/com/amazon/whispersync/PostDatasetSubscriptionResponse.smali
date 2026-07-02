.class public Lcom/amazon/whispersync/PostDatasetSubscriptionResponse;
.super Lcom/amazon/whispersync/HttpResponse;
.source "PostDatasetSubscriptionResponse.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/coral/annotation/Shape;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/Wrapper;
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlName;
    value = "PostDatasetSubscriptionResponse"
.end annotation

.annotation runtime Lcom/amazon/whispersync/coral/annotation/XmlNamespace;
    value = "http://internal.amazon.com/coral/com.amazon.whispersync/"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/whispersync/HttpResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/whispersync/HttpResponse;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 40
    :cond_1
    instance-of v0, p1, Lcom/amazon/whispersync/PostDatasetSubscriptionResponse;

    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 42
    :cond_2
    invoke-super {p0, p1}, Lcom/amazon/whispersync/HttpResponse;->compareTo(Lcom/amazon/whispersync/HttpResponse;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lcom/amazon/whispersync/HttpResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/PostDatasetSubscriptionResponse;->compareTo(Lcom/amazon/whispersync/HttpResponse;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 27
    :cond_0
    instance-of v1, p1, Lcom/amazon/whispersync/PostDatasetSubscriptionResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 28
    check-cast p1, Lcom/amazon/whispersync/PostDatasetSubscriptionResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/PostDatasetSubscriptionResponse;->compareTo(Lcom/amazon/whispersync/HttpResponse;)I

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

.method public hashCode()I
    .locals 2

    .line 20
    invoke-super {p0}, Lcom/amazon/whispersync/HttpResponse;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method
