.class public Lcom/amazon/reader/notifications/message/NotificationMessage;
.super Ljava/lang/Object;
.source "NotificationMessage.java"


# instance fields
.field private messageContent:Lcom/amazon/reader/notifications/message/MessageContent;

.field private messageMetadata:Lcom/amazon/reader/notifications/message/MessageMetadata;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageContent()Lcom/amazon/reader/notifications/message/MessageContent;
    .locals 1
    .annotation runtime Lcom/amazon/org/codehaus/jackson/annotate/JsonProperty;
        value = "content"
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/NotificationMessage;->messageContent:Lcom/amazon/reader/notifications/message/MessageContent;

    return-object v0
.end method

.method public getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;
    .locals 1
    .annotation runtime Lcom/amazon/org/codehaus/jackson/annotate/JsonProperty;
        value = "metadata"
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/amazon/reader/notifications/message/NotificationMessage;->messageMetadata:Lcom/amazon/reader/notifications/message/MessageMetadata;

    return-object v0
.end method

.method public setMessageContent(Lcom/amazon/reader/notifications/message/MessageContent;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/NotificationMessage;->messageContent:Lcom/amazon/reader/notifications/message/MessageContent;

    return-void
.end method

.method public setMessageMetadata(Lcom/amazon/reader/notifications/message/MessageMetadata;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/reader/notifications/message/NotificationMessage;->messageMetadata:Lcom/amazon/reader/notifications/message/MessageMetadata;

    return-void
.end method
