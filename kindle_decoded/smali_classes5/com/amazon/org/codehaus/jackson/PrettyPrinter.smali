.class public interface abstract Lcom/amazon/org/codehaus/jackson/PrettyPrinter;
.super Ljava/lang/Object;
.source "PrettyPrinter.java"


# virtual methods
.method public abstract beforeArrayValues(Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract beforeObjectEntries(Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeArrayValueSeparator(Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeEndArray(Lcom/amazon/org/codehaus/jackson/JsonGenerator;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeEndObject(Lcom/amazon/org/codehaus/jackson/JsonGenerator;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeObjectEntrySeparator(Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeObjectFieldValueSeparator(Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeRootValueSeparator(Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeStartArray(Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method

.method public abstract writeStartObject(Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method
