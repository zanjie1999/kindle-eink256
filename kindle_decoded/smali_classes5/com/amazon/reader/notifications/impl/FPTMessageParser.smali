.class public Lcom/amazon/reader/notifications/impl/FPTMessageParser;
.super Ljava/lang/Object;
.source "FPTMessageParser.java"


# instance fields
.field private final parser:Lcom/amazon/reader/notifications/impl/MessageParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/amazon/reader/notifications/impl/MessageParser;

    invoke-direct {v0}, Lcom/amazon/reader/notifications/impl/MessageParser;-><init>()V

    iput-object v0, p0, Lcom/amazon/reader/notifications/impl/FPTMessageParser;->parser:Lcom/amazon/reader/notifications/impl/MessageParser;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/reader/notifications/impl/MessageParser;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/amazon/reader/notifications/impl/FPTMessageParser;->parser:Lcom/amazon/reader/notifications/impl/MessageParser;

    return-void
.end method

.method private getDecodedString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 65
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
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

    .line 51
    sget-object v0, Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;->METADATA:Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;

    invoke-virtual {v0}, Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/reader/notifications/impl/FPTMessageParser;->getDecodedString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    sget-object v1, Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;->CONTENT:Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;

    invoke-virtual {v1}, Lcom/amazon/reader/notifications/message/NotificationAttributeKeys;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/amazon/reader/notifications/impl/FPTMessageParser;->getDecodedString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    iget-object v1, p0, Lcom/amazon/reader/notifications/impl/FPTMessageParser;->parser:Lcom/amazon/reader/notifications/impl/MessageParser;

    invoke-virtual {v1, v0, p1}, Lcom/amazon/reader/notifications/impl/MessageParser;->parseMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/reader/notifications/message/NotificationMessage;

    move-result-object p1

    return-object p1

    .line 49
    :cond_0
    new-instance p1, Lcom/amazon/reader/notifications/exception/MessageParseException;

    const-string v0, "Given bundle was null"

    invoke-direct {p1, v0}, Lcom/amazon/reader/notifications/exception/MessageParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
