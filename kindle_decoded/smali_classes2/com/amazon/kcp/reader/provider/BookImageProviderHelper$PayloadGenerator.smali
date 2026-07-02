.class interface abstract Lcom/amazon/kcp/reader/provider/BookImageProviderHelper$PayloadGenerator;
.super Ljava/lang/Object;
.source "BookImageProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/provider/BookImageProviderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PayloadGenerator"
.end annotation


# virtual methods
.method public abstract getPayload()Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
