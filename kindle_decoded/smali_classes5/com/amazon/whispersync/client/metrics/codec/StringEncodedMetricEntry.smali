.class public Lcom/amazon/whispersync/client/metrics/codec/StringEncodedMetricEntry;
.super Ljava/lang/Object;
.source "StringEncodedMetricEntry.java"

# interfaces
.implements Lcom/amazon/whispersync/client/metrics/codec/EncodedMetricEntry;


# instance fields
.field private mEncodedMetricEntry:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/codec/StringEncodedMetricEntry;->mEncodedMetricEntry:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 34
    :cond_1
    const-class v1, Lcom/amazon/whispersync/client/metrics/codec/StringEncodedMetricEntry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 37
    :cond_2
    check-cast p1, Lcom/amazon/whispersync/client/metrics/codec/StringEncodedMetricEntry;

    .line 38
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/StringEncodedMetricEntry;->mEncodedMetricEntry:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/whispersync/client/metrics/codec/StringEncodedMetricEntry;->getEncodedMetricEntry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getEncodedMetricEntry()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/whispersync/client/metrics/codec/StringEncodedMetricEntry;->getEncodedMetricEntry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedMetricEntry()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/StringEncodedMetricEntry;->mEncodedMetricEntry:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodedSize()I
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/StringEncodedMetricEntry;->mEncodedMetricEntry:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/StringEncodedMetricEntry;->mEncodedMetricEntry:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/codec/StringEncodedMetricEntry;->mEncodedMetricEntry:Ljava/lang/String;

    return-object v0
.end method
