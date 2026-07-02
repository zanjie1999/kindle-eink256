.class public interface abstract Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;
.super Ljava/lang/Object;
.source "IReadingStreamsEncoder.java"


# virtual methods
.method public abstract consumeContentPoint(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract consumeContentPoint(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
.end method

.method public abstract consumeContentSpan(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract consumeContentSpan(Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V
.end method

.method public abstract getSizeInBytes()I
.end method

.method public abstract hasEvents()Z
.end method

.method public abstract hideContext(Ljava/lang/String;)V
.end method

.method public abstract hideContext(Ljava/lang/String;Ljava/util/Map;)V
.end method

.method public abstract invokeExplicitMessageProcessing(Z)V
.end method

.method public abstract openContent(Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;Ljava/lang/String;III)V
.end method

.method public abstract openContent(Lcom/amazon/kindle/krx/content/ContentType;Ljava/lang/String;Ljava/lang/String;IIILjava/util/Map;)V
.end method

.method public abstract openContext(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract openContext(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end method

.method public abstract performAction(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
.end method

.method public abstract performContentAction(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract performContentAction(Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V
.end method

.method public abstract recordAuxContentAvailability(Ljava/lang/String;ZZZZ)V
.end method

.method public abstract recordAuxContentAvailability(Ljava/lang/String;ZZZZLjava/util/Map;)V
.end method

.method public abstract recordMetadata(Ljava/lang/String;Ljava/util/Map;)V
.end method

.method public abstract recordSetting(Ljava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public abstract recordSetting(Ljava/lang/String;Ljava/lang/String;IZLjava/util/Map;)V
.end method

.method public abstract recordSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract recordSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V
.end method

.method public abstract recordSetting(Ljava/lang/String;Ljava/lang/String;ZZ)V
.end method

.method public abstract recordSetting(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/Map;)V
.end method

.method public abstract showContext(Ljava/lang/String;)V
.end method

.method public abstract showContext(Ljava/lang/String;Ljava/util/Map;)V
.end method

.method public abstract toByteArray()[B
.end method
