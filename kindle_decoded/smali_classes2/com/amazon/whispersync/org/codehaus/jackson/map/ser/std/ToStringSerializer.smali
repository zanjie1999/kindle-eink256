.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ToStringSerializer;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;
.source "ToStringSerializer.java"


# annotations
.annotation runtime Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ToStringSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ToStringSerializer;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ToStringSerializer;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ToStringSerializer;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ToStringSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getSchema(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/JsonNode;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    const-string p1, "string"

    const/4 p2, 0x1

    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/SerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/amazon/whispersync/org/codehaus/jackson/node/ObjectNode;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public serializeWithType(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 61
    invoke-virtual {p4, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;->writeTypePrefixForScalar(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/std/ToStringSerializer;->serialize(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerProvider;)V

    .line 63
    invoke-virtual {p4, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeSerializer;->writeTypeSuffixForScalar(Ljava/lang/Object;Lcom/amazon/whispersync/org/codehaus/jackson/JsonGenerator;)V

    return-void
.end method
