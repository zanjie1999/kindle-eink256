.class public Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base32OutputStream;
.super Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodecOutputStream;
.source "Base32OutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x1

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base32OutputStream;-><init>(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 2

    .line 61
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base32;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base32;-><init>(Z)V

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodecOutputStream;-><init>(Ljava/io/OutputStream;Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZI[B)V
    .locals 1

    .line 82
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base32;

    invoke-direct {v0, p3, p4}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/Base32;-><init>(I[B)V

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodecOutputStream;-><init>(Ljava/io/OutputStream;Lcom/amazon/whispersync/org/apache/commons/codec/binary/BaseNCodec;Z)V

    return-void
.end method
