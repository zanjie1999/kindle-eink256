.class public Lcom/amazon/org/codehaus/jackson/map/ser/std/StdKeySerializers$CalendarKeySerializer;
.super Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "StdKeySerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/ser/std/StdKeySerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarKeySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field protected static final instance:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdKeySerializers$CalendarKeySerializer;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdKeySerializers$CalendarKeySerializer;-><init>()V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdKeySerializers$CalendarKeySerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 86
    const-class v0, Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 81
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdKeySerializers$CalendarKeySerializer;->serialize(Ljava/util/Calendar;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

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

    .line 92
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1, p2}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeDateKey(JLcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    return-void
.end method
