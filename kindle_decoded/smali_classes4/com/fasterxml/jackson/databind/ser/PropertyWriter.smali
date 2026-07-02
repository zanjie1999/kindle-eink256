.class public abstract Lcom/fasterxml/jackson/databind/ser/PropertyWriter;
.super Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;
.source "PropertyWriter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/PropertyMetadata;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;-><init>(Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)V
    .locals 0

    .line 31
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;-><init>(Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/PropertyWriter;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;-><init>(Lcom/fasterxml/jackson/databind/introspect/ConcreteBeanPropertyBase;)V

    return-void
.end method
