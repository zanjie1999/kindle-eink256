.class public Lcom/amazon/org/codehaus/jackson/map/ser/std/StdKeySerializers$DateKeySerializer;
.super Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "StdKeySerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/ser/std/StdKeySerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateKeySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializerBase<",
        "Ljava/util/Date;",
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

    .line 69
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdKeySerializers$DateKeySerializer;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdKeySerializers$DateKeySerializer;-><init>()V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdKeySerializers$DateKeySerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    const-class v0, Ljava/util/Date;

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

    .line 66
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdKeySerializers$DateKeySerializer;->serialize(Ljava/util/Date;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/Date;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 77
    invoke-virtual {p3, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;->defaultSerializeDateKey(Ljava/util/Date;Lcom/amazon/org/codehaus/jackson/JsonGenerator;)V

    return-void
.end method
