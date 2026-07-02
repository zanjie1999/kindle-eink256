.class public Lcom/amazon/org/codehaus/jackson/map/ser/std/CalendarSerializer;
.super Lcom/amazon/org/codehaus/jackson/map/ser/std/ScalarSerializerBase;
.source "CalendarSerializer.java"


# annotations
.annotation runtime Lcom/amazon/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/ser/std/ScalarSerializerBase<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field public static instance:Lcom/amazon/org/codehaus/jackson/map/ser/std/CalendarSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/std/CalendarSerializer;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/CalendarSerializer;-><init>()V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/std/CalendarSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/std/CalendarSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    const-class v0, Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/ScalarSerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getSchema(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/org/codehaus/jackson/JsonNode;
    .locals 0

    .line 40
    sget-object p2, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "number"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "string"

    :goto_0
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/amazon/org/codehaus/jackson/node/ObjectNode;

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

    .line 21
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/CalendarSerializer;->serialize(Ljava/util/Calendar;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/Calendar;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1, p2}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeDateValue(JLcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    return-void
.end method
