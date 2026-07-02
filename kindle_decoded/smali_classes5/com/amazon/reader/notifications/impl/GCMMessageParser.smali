.class public Lcom/amazon/reader/notifications/impl/GCMMessageParser;
.super Ljava/lang/Object;
.source "GCMMessageParser.java"


# instance fields
.field private final parser:Lcom/amazon/reader/notifications/impl/MessageParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/amazon/reader/notifications/impl/MessageParser;

    invoke-direct {v0}, Lcom/amazon/reader/notifications/impl/MessageParser;-><init>()V

    iput-object v0, p0, Lcom/amazon/reader/notifications/impl/GCMMessageParser;->parser:Lcom/amazon/reader/notifications/impl/MessageParser;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/reader/notifications/impl/MessageParser;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazon/reader/notifications/impl/GCMMessageParser;->parser:Lcom/amazon/reader/notifications/impl/MessageParser;

    return-void
.end method


# virtual methods
.method public parseMessage(Landroid/os/Bundle;)Lcom/amazon/reader/notifications/message/NotificationMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/reader/notifications/exception/MessageParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 49
    sget-object v0, Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;->METADATA:Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;

    invoke-virtual {v0}, Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;->CONTENT:Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;

    invoke-virtual {v1}, Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 51
    iget-object v1, p0, Lcom/amazon/reader/notifications/impl/GCMMessageParser;->parser:Lcom/amazon/reader/notifications/impl/MessageParser;

    invoke-virtual {v1, v0, p1}, Lcom/amazon/reader/notifications/impl/MessageParser;->parseMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/reader/notifications/message/NotificationMessage;

    move-result-object p1

    return-object p1

    .line 47
    :cond_0
    new-instance p1, Lcom/amazon/reader/notifications/exception/MessageParseException;

    const-string v0, "Given bundle was null"

    invoke-direct {p1, v0}, Lcom/amazon/reader/notifications/exception/MessageParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
