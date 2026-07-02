.class public abstract Lcom/amazon/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;
.super Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "ContainerSerializerBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method


# virtual methods
.method public abstract _withValueTypeSerializer(Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)Lcom/amazon/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/ser/std/ContainerSerializerBase<",
            "*>;"
        }
    .end annotation
.end method

.method public withValueTypeSerializer(Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)Lcom/amazon/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/ser/std/ContainerSerializerBase<",
            "*>;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 47
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;->_withValueTypeSerializer(Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)Lcom/amazon/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;

    move-result-object p1

    return-object p1
.end method
