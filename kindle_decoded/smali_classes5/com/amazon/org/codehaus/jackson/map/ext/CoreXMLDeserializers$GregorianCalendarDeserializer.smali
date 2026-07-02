.class public Lcom/amazon/org/codehaus/jackson/map/ext/CoreXMLDeserializers$GregorianCalendarDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;
.source "CoreXMLDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/ext/CoreXMLDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GregorianCalendarDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/deser/std/StdScalarDeserializer<",
        "Ljavax/xml/datatype/XMLGregorianCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    const-class v0, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/ext/CoreXMLDeserializers$GregorianCalendarDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdDeserializer;->_parseDate(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 96
    :cond_0
    new-instance p2, Ljava/util/GregorianCalendar;

    invoke-direct {p2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 97
    invoke-virtual {p2, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 98
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/ext/CoreXMLDeserializers;->_dataTypeFactory:Ljavax/xml/datatype/DatatypeFactory;

    invoke-virtual {p1, p2}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/util/GregorianCalendar;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p1

    return-object p1
.end method
