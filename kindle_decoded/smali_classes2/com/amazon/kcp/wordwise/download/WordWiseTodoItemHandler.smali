.class public Lcom/amazon/kcp/wordwise/download/WordWiseTodoItemHandler;
.super Ljava/lang/Object;
.source "WordWiseTodoItemHandler.java"

# interfaces
.implements Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;


# static fields
.field private static final ACTION:Ljava/lang/String; = "DeviceMessaging.LanguageLayer.MessageResponse"

.field private static final TAG:Ljava/lang/String; = "com.amazon.kcp.wordwise.download.WordWiseTodoItemHandler"

.field private static final TYPE:Ljava/lang/String; = "V2"


# instance fields
.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseTodoItemHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 22
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseTodoItemHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseTodoItemHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/download/WordWiseTodoItemHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling todoItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 45
    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 46
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->getInstance()Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->onReceivedDownloadTodo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseTodoItemHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/download/WordWiseTodoItemHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error decoding payload"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public supports(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 2

    .line 27
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceMessaging.LanguageLayer.MessageResponse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "V2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
