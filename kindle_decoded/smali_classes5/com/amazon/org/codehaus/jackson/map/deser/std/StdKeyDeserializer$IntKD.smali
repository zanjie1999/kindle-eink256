.class final Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$IntKD;
.super Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;
.source "StdKeyDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntKD"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 174
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public _parse(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;->_parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic _parse(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$IntKD;->_parse(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
