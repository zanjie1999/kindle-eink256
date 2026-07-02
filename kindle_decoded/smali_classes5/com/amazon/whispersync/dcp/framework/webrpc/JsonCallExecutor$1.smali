.class Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$1;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationProblemHandler;
.source "JsonCallExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;-><init>(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallMetadata;Ljava/net/URL;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$1;->this$0:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;

    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationProblemHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleUnknownProperty(Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
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
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor$1;->this$0:Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;

    invoke-static {p2}, Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;->access$000(Lcom/amazon/whispersync/dcp/framework/webrpc/JsonCallExecutor;)Lcom/amazon/whispersync/dcp/framework/DCPLog;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p4, v0, v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    aput-object p3, v0, p4

    const-string p3, "Unable to deserialize unknown property \'%s\' into class \'%s\'"

    invoke-virtual {p2, p3, v0}, Lcom/amazon/whispersync/dcp/framework/DCPLog;->w(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 119
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;->getParser()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;->skipChildren()Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;

    return p4
.end method
