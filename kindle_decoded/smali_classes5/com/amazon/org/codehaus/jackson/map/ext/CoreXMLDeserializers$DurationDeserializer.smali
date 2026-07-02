.class public Lcom/amazon/org/codehaus/jackson/map/ext/CoreXMLDeserializers$DurationDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/deser/std/FromStringDeserializer;
.source "CoreXMLDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/ext/CoreXMLDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DurationDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/deser/std/FromStringDeserializer<",
        "Ljavax/xml/datatype/Duration;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    const-class v0, Ljavax/xml/datatype/Duration;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/FromStringDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic _deserialize(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/ext/CoreXMLDeserializers$DurationDeserializer;->_deserialize(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljavax/xml/datatype/Duration;

    move-result-object p1

    return-object p1
.end method

.method protected _deserialize(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljavax/xml/datatype/Duration;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 79
    sget-object p2, Lcom/amazon/org/codehaus/jackson/map/ext/CoreXMLDeserializers;->_dataTypeFactory:Ljavax/xml/datatype/DatatypeFactory;

    invoke-virtual {p2, p1}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(Ljava/lang/String;)Ljavax/xml/datatype/Duration;

    move-result-object p1

    return-object p1
.end method
