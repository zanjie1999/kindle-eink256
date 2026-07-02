.class public Lcom/amazon/reader/notifications/impl/MessageParser;
.super Ljava/lang/Object;
.source "MessageParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.reader.notifications.impl.MessageParser"


# instance fields
.field private final objectMapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/amazon/reader/notifications/impl/MessageParser;->objectMapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    .line 41
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->configure(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;Z)Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    return-void
.end method


# virtual methods
.method public parseMessage(Ljava/lang/String;)Lcom/amazon/reader/notifications/message/NotificationMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/reader/notifications/exception/MessageParseException;
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/amazon/reader/notifications/impl/MessageParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/reader/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/MessageParser;->objectMapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    const-class v1, Lcom/amazon/reader/notifications/message/NotificationMessage;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/reader/notifications/message/NotificationMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 59
    new-instance v0, Lcom/amazon/reader/notifications/exception/MessageParseException;

    invoke-direct {v0, p1}, Lcom/amazon/reader/notifications/exception/MessageParseException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public parseMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/reader/notifications/message/NotificationMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/reader/notifications/exception/MessageParseException;
        }
    .end annotation

    .line 74
    sget-object v0, Lcom/amazon/reader/notifications/impl/MessageParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message content is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/reader/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/amazon/reader/notifications/impl/MessageParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message metadata is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/reader/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/MessageParser;->objectMapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    const-class v1, Lcom/amazon/reader/notifications/message/MessageMetadata;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/reader/notifications/message/MessageMetadata;

    .line 78
    iget-object v0, p0, Lcom/amazon/reader/notifications/impl/MessageParser;->objectMapper:Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;

    const-class v1, Lcom/amazon/reader/notifications/message/MessageContent;

    invoke-virtual {v0, p2, v1}, Lcom/amazon/org/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/reader/notifications/message/MessageContent;

    .line 80
    new-instance v0, Lcom/amazon/reader/notifications/message/NotificationMessage;

    invoke-direct {v0}, Lcom/amazon/reader/notifications/message/NotificationMessage;-><init>()V

    .line 81
    invoke-virtual {v0, p1}, Lcom/amazon/reader/notifications/message/NotificationMessage;->setMessageMetadata(Lcom/amazon/reader/notifications/message/MessageMetadata;)V

    .line 82
    invoke-virtual {v0, p2}, Lcom/amazon/reader/notifications/message/NotificationMessage;->setMessageContent(Lcom/amazon/reader/notifications/message/MessageContent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 85
    new-instance p2, Lcom/amazon/reader/notifications/exception/MessageParseException;

    invoke-direct {p2, p1}, Lcom/amazon/reader/notifications/exception/MessageParseException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
