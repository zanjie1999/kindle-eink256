.class public Lcom/amazon/org/codehaus/jackson/map/ext/CoreXMLSerializers$XMLGregorianCalendarSerializer;
.super Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "CoreXMLSerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/ext/CoreXMLSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XMLGregorianCalendarSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase<",
        "Ljavax/xml/datatype/XMLGregorianCalendar;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    const-class v0, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getSchema(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/JsonNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/std/CalendarSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/std/CalendarSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/ser/std/CalendarSerializer;->getSchema(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/JsonNode;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 55
    check-cast p1, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ext/CoreXMLSerializers$XMLGregorianCalendarSerializer;->serialize(Ljavax/xml/datatype/XMLGregorianCalendar;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljavax/xml/datatype/XMLGregorianCalendar;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/std/CalendarSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/std/CalendarSerializer;

    invoke-virtual {p1}, Ljavax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/CalendarSerializer;->serialize(Ljava/util/Calendar;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method
