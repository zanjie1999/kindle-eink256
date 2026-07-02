.class Lcom/amazon/whispersync/communication/serialize/JsonObjectMapper$1;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationProblemHandler;
.source "JsonObjectMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/communication/serialize/JsonObjectMapper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/communication/serialize/JsonObjectMapper;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/communication/serialize/JsonObjectMapper;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/amazon/whispersync/communication/serialize/JsonObjectMapper$1;->this$0:Lcom/amazon/whispersync/communication/serialize/JsonObjectMapper;

    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationProblemHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleUnknownProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 79
    invoke-static {}, Lcom/amazon/whispersync/communication/serialize/JsonObjectMapper;->access$000()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_0

    .line 80
    invoke-static {}, Lcom/amazon/whispersync/communication/serialize/JsonObjectMapper;->access$100()Lcom/amazon/whispersync/dp/logger/DPLogger;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "propertyName"

    aput-object v2, v0, v1

    aput-object p4, v0, p3

    const-string p4, "JsonObjectMapper"

    const-string v1, "Unknown field in Json input."

    invoke-virtual {p2, p4, v1, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->getParser()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    return p3
.end method
