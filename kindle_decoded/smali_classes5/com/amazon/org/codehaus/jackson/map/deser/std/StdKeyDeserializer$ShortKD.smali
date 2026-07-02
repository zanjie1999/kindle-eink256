.class final Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$ShortKD;
.super Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;
.source "StdKeyDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ShortKD"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 141
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic _parse(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer$ShortKD;->_parse(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public _parse(Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Short;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;->_parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, -0x8000

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7fff

    if-gt v0, v1, :cond_0

    int-to-short p1, v0

    .line 150
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdKeyDeserializer;->_keyClass:Ljava/lang/Class;

    const-string/jumbo v1, "overflow, value can not be represented as 16-bit value"

    invoke-virtual {p2, v0, p1, v1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->weirdKeyException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method
