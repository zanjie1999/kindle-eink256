.class public Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;
.super Lcom/amazon/messaging/odot/webservices/transportdto/DefaultAmazonWebserviceCallListener;
.source "PostMessagesListener.java"


# static fields
.field private static final NEVER_RETRY:Ljava/lang/String; = "never"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private callAfter:J

.field private dao:Lcom/amazon/messaging/odot/dao/IOdotClientDAO;

.field private isResponseSuccessful:Z

.field private messageIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/messaging/odot/dao/IOdotClientDAO;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/messaging/odot/dao/IOdotClientDAO;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/DefaultAmazonWebserviceCallListener;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->dao:Lcom/amazon/messaging/odot/dao/IOdotClientDAO;

    .line 30
    iput-object p2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->messageIds:Ljava/util/Set;

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->isResponseSuccessful:Z

    const-wide/16 p1, 0x2710

    .line 32
    iput-wide p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->callAfter:J

    return-void
.end method

.method private handleFailedResponse(Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;)V
    .locals 5

    .line 114
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;->getRetryAfter()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-static {p1}, Lcom/amazon/messaging/odot/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x2710

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0, v1, v2}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->updateRetryAttributes(J)V

    return-void

    .line 120
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "never"

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->updateStatusToUnrecoverableError()V

    return-void

    .line 127
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResponseComplete - retryAfter parse error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->updateRetryAttributes(J)V

    return-void
.end method

.method private handleSuccessfulResponse(Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    int-to-long v1, v0

    .line 136
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;->getNumMessageResponses()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_5

    .line 137
    invoke-virtual {p1, v1, v2}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;->getMessageResponse(J)Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->getId()Ljava/lang/String;

    move-result-object v2

    .line 142
    invoke-virtual {v1}, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->getStatusCode()I

    move-result v3

    .line 143
    sget-object v4, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSuccessfulResponse - statusCode for message with ID ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, v3}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->wasMessageSuccessful(I)Z

    move-result v3

    const-string v4, "handleSuccessfulResponse - message with ID ["

    if-eqz v3, :cond_0

    .line 145
    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] is being deleted..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->dao:Lcom/amazon/messaging/odot/dao/IOdotClientDAO;

    invoke-interface {v1, v2}, Lcom/amazon/messaging/odot/dao/IOdotClientDAO;->deleteOdotMessage(Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_3

    .line 149
    :cond_0
    iget-object v3, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->dao:Lcom/amazon/messaging/odot/dao/IOdotClientDAO;

    invoke-interface {v3, v2}, Lcom/amazon/messaging/odot/dao/IOdotClientDAO;->getOdotMessage(Ljava/lang/String;)Lcom/amazon/messaging/odot/dto/IOdotMessage;

    move-result-object v3

    check-cast v3, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;

    if-nez v3, :cond_1

    .line 152
    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] could not be updated"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 156
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->getRetryDelay()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 159
    invoke-virtual {v1}, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->getShouldRetry()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->RETRYABLE_ERROR:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    goto :goto_1

    :cond_2
    sget-object v6, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->UNRECOVERABLE_ERROR:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    .line 162
    :goto_1
    invoke-virtual {v3, v6}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->setOdotMessageStatus(Lcom/amazon/messaging/odot/dto/OdotMessageStatus;)V

    .line 163
    invoke-virtual {v1}, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->getShouldRetry()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->getRetries()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->getRetries()Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-virtual {v3, v1}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->setRetries(Ljava/lang/Integer;)V

    .line 164
    invoke-virtual {v3, v5}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->setRetryAfterUtc(Ljava/lang/Long;)V

    .line 166
    sget-object v1, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] and status ["

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] is being updated..."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->dao:Lcom/amazon/messaging/odot/dao/IOdotClientDAO;

    invoke-interface {v1, v3}, Lcom/amazon/messaging/odot/dao/IOdotClientDAO;->updateOdotMessage(Lcom/amazon/messaging/odot/dto/IOdotMessage;)Z

    move-result v1

    :goto_3
    if-eqz v1, :cond_4

    .line 171
    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->messageIds:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 175
    :cond_5
    iget-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->messageIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 176
    sget-object p1, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->TAG:Ljava/lang/String;

    const-string v0, "handleSuccessfulResponse - all messages were not updated or deleted"

    invoke-static {p1, v0}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private isHttpError(J)Z
    .locals 3

    const-wide/16 v0, 0xc8

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const-wide/16 v0, 0x12c

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private setCallAfter(Ljava/lang/String;)V
    .locals 5

    .line 182
    invoke-static {p1}, Lcom/amazon/messaging/odot/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x2710

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "never"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 187
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->callAfter:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 189
    :catch_0
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResponseComplete - retryAfter parse error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iput-wide v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->callAfter:J

    goto :goto_1

    .line 183
    :cond_1
    :goto_0
    iput-wide v1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->callAfter:J

    :goto_1
    return-void
.end method

.method private wasMessageSuccessful(I)Z
    .locals 0

    .line 201
    div-int/lit8 p1, p1, 0x64

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getCallAfter()J
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->callAfter:J

    return-wide v0
.end method

.method public isResponseSuccessful()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->isResponseSuccessful:Z

    return v0
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .line 37
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->TAG:Ljava/lang/String;

    const-string v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->isResponseSuccessful:Z

    const-wide/16 v0, 0x2710

    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->updateRetryAttributes(J)V

    return-void
.end method

.method public onNetworkFailure()V
    .locals 2

    .line 44
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->TAG:Ljava/lang/String;

    const-string v1, "onNetworkFailure"

    invoke-static {v0, v1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->isResponseSuccessful:Z

    const-wide/16 v0, 0x2710

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->updateRetryAttributes(J)V

    return-void
.end method

.method public onParseError(Lcom/amazon/messaging/odot/webservices/transportdto/ParseError;)V
    .locals 3

    .line 51
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onParseError - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->isResponseSuccessful:Z

    const-wide/16 v0, 0x2710

    .line 53
    invoke-virtual {p0, v0, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->updateRetryAttributes(J)V

    return-void
.end method

.method public onResponseComplete(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 59
    sget-object p1, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->TAG:Ljava/lang/String;

    const-string v1, "onResponseComplete received null"

    invoke-static {p1, v1}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iput-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->isResponseSuccessful:Z

    const-wide/16 v0, 0x2710

    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->updateRetryAttributes(J)V

    return-void

    .line 65
    :cond_0
    check-cast p1, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;

    .line 66
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;->getCallAfter()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->setCallAfter(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;->getStatusCode()J

    move-result-wide v1

    .line 69
    invoke-direct {p0, v1, v2}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->isHttpError(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    iput-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->isResponseSuccessful:Z

    .line 71
    invoke-direct {p0, p1}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->handleFailedResponse(Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->isResponseSuccessful:Z

    .line 74
    invoke-direct {p0, p1}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->handleSuccessfulResponse(Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;)V

    :goto_0
    return-void
.end method

.method public updateRetryAttributes(J)V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->messageIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88
    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->dao:Lcom/amazon/messaging/odot/dao/IOdotClientDAO;

    invoke-interface {v2, v1}, Lcom/amazon/messaging/odot/dao/IOdotClientDAO;->getOdotMessage(Ljava/lang/String;)Lcom/amazon/messaging/odot/dto/IOdotMessage;

    move-result-object v1

    check-cast v1, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;

    .line 90
    invoke-virtual {v1}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->getRetries()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->setRetries(Ljava/lang/Integer;)V

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->setRetryAfterUtc(Ljava/lang/Long;)V

    .line 93
    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->dao:Lcom/amazon/messaging/odot/dao/IOdotClientDAO;

    invoke-interface {v2, v1}, Lcom/amazon/messaging/odot/dao/IOdotClientDAO;->updateOdotMessage(Lcom/amazon/messaging/odot/dto/IOdotMessage;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateStatusToUnrecoverableError()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->messageIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->dao:Lcom/amazon/messaging/odot/dao/IOdotClientDAO;

    invoke-interface {v2, v1}, Lcom/amazon/messaging/odot/dao/IOdotClientDAO;->getOdotMessage(Ljava/lang/String;)Lcom/amazon/messaging/odot/dto/IOdotMessage;

    move-result-object v1

    check-cast v1, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;

    .line 102
    sget-object v2, Lcom/amazon/messaging/odot/dto/OdotMessageStatus;->UNRECOVERABLE_ERROR:Lcom/amazon/messaging/odot/dto/OdotMessageStatus;

    invoke-virtual {v1, v2}, Lcom/amazon/messaging/odot/dto/OdotMessageDTO;->setOdotMessageStatus(Lcom/amazon/messaging/odot/dto/OdotMessageStatus;)V

    .line 104
    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesListener;->dao:Lcom/amazon/messaging/odot/dao/IOdotClientDAO;

    invoke-interface {v2, v1}, Lcom/amazon/messaging/odot/dao/IOdotClientDAO;->updateOdotMessage(Lcom/amazon/messaging/odot/dto/IOdotMessage;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
