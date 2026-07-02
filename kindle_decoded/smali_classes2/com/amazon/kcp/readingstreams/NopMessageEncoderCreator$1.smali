.class Lcom/amazon/kcp/readingstreams/NopMessageEncoderCreator$1;
.super Ljava/lang/Object;
.source "NopMessageEncoderCreator.java"

# interfaces
.implements Lcom/amazon/rma/rs/encoding/MessageEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/readingstreams/NopMessageEncoderCreator;->createMessageEncoder(Lcom/amazon/rma/rs/encoding/IReadingStreamsMessagePublisher;)Lcom/amazon/rma/rs/encoding/MessageEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/readingstreams/NopMessageEncoderCreator;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/readingstreams/NopMessageEncoderCreator;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amazon/kcp/readingstreams/NopMessageEncoderCreator$1;->this$0:Lcom/amazon/kcp/readingstreams/NopMessageEncoderCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear(Z)V
    .locals 0

    return-void
.end method

.method public consumeContentPoint(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public consumeContentPoint(Ljava/lang/String;Ljava/lang/String;IJLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public consumeContentSpan(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public consumeContentSpan(Ljava/lang/String;Ljava/lang/String;IIJLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public getSizeInBytes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasEvents()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideContext(Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public hideContext(Ljava/lang/String;JLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public openContent(Lcom/amazon/rma/rs/encoding/ContentType;Ljava/lang/String;Ljava/lang/String;IIIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public openContent(Lcom/amazon/rma/rs/encoding/ContentType;Ljava/lang/String;Ljava/lang/String;IIIJLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public openContext(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public openContext(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public performAction(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public performAction(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public performContentAction(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public performContentAction(Ljava/lang/String;Ljava/lang/String;IIJLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public recordAuxContentAvailability(Ljava/lang/String;ZZZZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public recordAuxContentAvailability(Ljava/lang/String;ZZZZJLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public recordMetadata(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public recordSetting(Ljava/lang/String;Ljava/lang/String;IZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public recordSetting(Ljava/lang/String;Ljava/lang/String;IZJLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public recordSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public recordSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public recordSetting(Ljava/lang/String;Ljava/lang/String;ZZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public recordSetting(Ljava/lang/String;Ljava/lang/String;ZZJLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public showContext(Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public showContext(Ljava/lang/String;JLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public toByteArray(J)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method

.method public toByteArray(JZ)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method
