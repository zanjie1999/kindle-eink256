.class public Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64InputStream;
.super Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodecInputStream;
.source "Base64InputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64InputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2

    .line 65
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;-><init>(Z)V

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodecInputStream;-><init>(Ljava/io/InputStream;Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZI[B)V
    .locals 1

    .line 86
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;

    invoke-direct {v0, p3, p4}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base64;-><init>(I[B)V

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodecInputStream;-><init>(Ljava/io/InputStream;Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;Z)V

    return-void
.end method
