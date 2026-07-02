.class public Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;
.super Ljava/lang/Object;
.source "PostMessagesResponse.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCallAfter:Ljava/lang/String;

.field private final mMessageResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryAfter:Ljava/lang/String;

.field private mStatusCode:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;->mMessageResponses:Ljava/util/List;

    const-wide/16 v0, 0xc8

    .line 24
    iput-wide v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;->mStatusCode:J

    return-void
.end method


# virtual methods
.method public addMessageResponse(Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;->mMessageResponses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getCallAfter()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;->mCallAfter:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageResponse(J)Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;
    .locals 3

    .line 32
    invoke-virtual {p0}, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;->getNumMessageResponses()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 33
    sget-object p1, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;->TAG:Ljava/lang/String;

    const-string p2, "GetDevicesWithMessagingResponse: getMessageResponse: index out of range."

    invoke-static {p1, p2}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;->mMessageResponses:Ljava/util/List;

    long-to-int p2, p1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;

    return-object p1
.end method

.method public getNumMessageResponses()J
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;->mMessageResponses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getRetryAfter()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;->mRetryAfter:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;->mStatusCode:J

    return-wide v0
.end method

.method public setCallAfter(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;->mCallAfter:Ljava/lang/String;

    return-void
.end method

.method public setRetryAfter(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;->mRetryAfter:Ljava/lang/String;

    return-void
.end method

.method public setStatusCode(J)V
    .locals 0

    .line 51
    iput-wide p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/PostMessagesResponse;->mStatusCode:J

    return-void
.end method
