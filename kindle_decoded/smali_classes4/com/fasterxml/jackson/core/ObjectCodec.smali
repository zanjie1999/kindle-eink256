.class public abstract Lcom/fasterxml/jackson/core/ObjectCodec;
.super Lcom/fasterxml/jackson/core/TreeCodec;
.source "ObjectCodec.java"

# interfaces
.implements Lcom/fasterxml/jackson/core/Versioned;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/TreeCodec;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation
.end method
