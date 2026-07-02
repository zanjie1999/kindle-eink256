.class public interface abstract Lcom/amazon/rma/rs/encoding/MessageEncoder;
.super Ljava/lang/Object;
.source "MessageEncoder.java"


# virtual methods
.method public abstract clear(Z)V
.end method

.method public abstract consumeContentPoint(Ljava/lang/String;Ljava/lang/String;IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract consumeContentPoint(Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract consumeContentSpan(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract consumeContentSpan(Ljava/lang/String;Ljava/lang/String;IIJLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getSizeInBytes()I
.end method

.method public abstract hasEvents()Z
.end method

.method public abstract hideContext(Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract hideContext(Ljava/lang/String;JLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract openContent(Lcom/amazon/rma/rs/encoding/ContentType;Ljava/lang/String;Ljava/lang/String;IIIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract openContent(Lcom/amazon/rma/rs/encoding/ContentType;Ljava/lang/String;Ljava/lang/String;IIIJLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract openContext(Ljava/lang/String;Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract openContext(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract performAction(Ljava/lang/String;Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract performAction(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract performContentAction(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract performContentAction(Ljava/lang/String;Ljava/lang/String;IIJLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract recordAuxContentAvailability(Ljava/lang/String;ZZZZJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract recordAuxContentAvailability(Ljava/lang/String;ZZZZJLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract recordMetadata(Ljava/lang/String;Ljava/util/Map;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract recordSetting(Ljava/lang/String;Ljava/lang/String;IZJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract recordSetting(Ljava/lang/String;Ljava/lang/String;IZJLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract recordSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract recordSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract recordSetting(Ljava/lang/String;Ljava/lang/String;ZZJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract recordSetting(Ljava/lang/String;Ljava/lang/String;ZZJLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract showContext(Ljava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract showContext(Ljava/lang/String;JLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract toByteArray(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract toByteArray(JZ)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
