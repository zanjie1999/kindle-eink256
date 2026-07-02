.class public interface abstract Lcom/audible/pfm/network/parser/IPfmReaderWriter;
.super Ljava/lang/Object;
.source "IPfmReaderWriter.java"


# virtual methods
.method public abstract read(Ljava/lang/String;)Lcom/audible/pfm/domain/DevicePlatformConfig;
.end method

.method public abstract updateTimestamp(Lcom/audible/pfm/domain/DevicePlatformConfig;)V
.end method

.method public abstract write(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
