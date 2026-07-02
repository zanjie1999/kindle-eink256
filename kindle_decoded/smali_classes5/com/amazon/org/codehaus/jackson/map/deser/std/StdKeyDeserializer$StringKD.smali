.class final Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;
.super Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;
.source "StdKeyDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringKD"
.end annotation


# static fields
.field private static final sObject:Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;

.field private static final sString:Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;->sString:Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;

    .line 79
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;

    const-class v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;->sObject:Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static forType(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;"
        }
    .end annotation

    .line 85
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_0

    .line 86
    sget-object p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;->sString:Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;

    return-object p0

    .line 88
    :cond_0
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_1

    .line 89
    sget-object p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;->sObject:Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;

    return-object p0

    .line 91
    :cond_1
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;

    invoke-direct {v0, p0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic _parse(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$StringKD;->_parse(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public _parse(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    return-object p1
.end method
