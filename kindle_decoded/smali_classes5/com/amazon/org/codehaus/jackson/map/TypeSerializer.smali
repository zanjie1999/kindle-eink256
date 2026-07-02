.class public abstract Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;
.super Ljava/lang/Object;
.source "TypeSerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getPropertyName()Ljava/lang/String;
.end method

.method public abstract getTypeIdResolver()Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;
.end method

.method public abstract getTypeInclusion()Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;
.end method

.method public abstract writeTypePrefixForArray(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public writeTypePrefixForArray(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/amazon/org/codehaus/jackson/JsonGenerator;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForArray(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    return-void
.end method

.method public abstract writeTypePrefixForObject(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public writeTypePrefixForObject(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/amazon/org/codehaus/jackson/JsonGenerator;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    return-void
.end method

.method public abstract writeTypePrefixForScalar(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public writeTypePrefixForScalar(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/amazon/org/codehaus/jackson/JsonGenerator;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    return-void
.end method

.method public abstract writeTypeSuffixForArray(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract writeTypeSuffixForObject(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method

.method public abstract writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation
.end method
