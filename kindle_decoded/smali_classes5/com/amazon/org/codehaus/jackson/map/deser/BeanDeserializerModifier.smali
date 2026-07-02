.class public abstract Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;
.super Ljava/lang/Object;
.source "BeanDeserializerModifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public modifyDeserializer(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    return-object p3
.end method

.method public updateBuilder(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;)Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerBuilder;
    .locals 0

    return-object p3
.end method
