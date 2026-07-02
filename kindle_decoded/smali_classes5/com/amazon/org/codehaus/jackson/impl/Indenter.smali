.class public interface abstract Lcom/amazon/org/codehaus/jackson/impl/Indenter;
.super Ljava/lang/Object;
.source "Indenter.java"


# virtual methods
.method public abstract isInline()Z
.end method

.method public abstract writeIndentation(Lcom/amazon/org/codehaus/jackson/JsonGenerator;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation
.end method
