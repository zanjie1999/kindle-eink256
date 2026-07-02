.class public Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;
.super Ljava/lang/Object;
.source "MessageResponse.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mId:Ljava/lang/String;

.field private mRetryDelay:J

.field private mRetryDelaySet:Z

.field private mShouldRetry:Z

.field private mShouldRetrySet:Z

.field private mStatusCode:I

.field private mStatusCodeSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;

    invoke-static {v0}, Lcom/amazon/messaging/odot/util/OdotMessageUtil;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidDescription(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isValidId(Ljava/lang/String;)Z
    .locals 1

    .line 130
    invoke-static {p0}, Lcom/amazon/messaging/odot/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 131
    sget-object p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->TAG:Ljava/lang/String;

    const-string v0, "MessageResponse: isValidId:  Returning false because id is null or empty."

    invoke-static {p0, v0}, Lcom/amazon/messaging/odot/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidRetryDelay(Ljava/lang/Long;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isValidShouldRetry(Ljava/lang/Boolean;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isValidStatusCode(Ljava/lang/Integer;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryDelay()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->mRetryDelay:J

    return-wide v0
.end method

.method public getShouldRetry()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->mShouldRetry:Z

    return v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->mStatusCode:I

    return v0
.end method

.method public isValid()Z
    .locals 7

    .line 84
    iget-boolean v0, p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->mStatusCodeSet:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 85
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->TAG:Ljava/lang/String;

    const-string v2, "MessageResponse: isValid:  Returning false because statusCode (a mandatory field) was not set"

    invoke-static {v0, v2}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 89
    :goto_0
    iget-boolean v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->mShouldRetrySet:Z

    if-nez v2, :cond_1

    .line 90
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->TAG:Ljava/lang/String;

    const-string v2, "MessageResponse: isValid:  Returning false because shouldRetry (a mandatory field) was not set"

    invoke-static {v0, v2}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 94
    :cond_1
    iget-boolean v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->mShouldRetry:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->mRetryDelaySet:Z

    if-nez v2, :cond_2

    .line 95
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->TAG:Ljava/lang/String;

    const-string v2, "MessageResponse: isValid:  Returning false because retryDelay was not set and shouldRetry was true"

    invoke-static {v0, v2}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 100
    :cond_2
    iget-boolean v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->mShouldRetry:Z

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->mRetryDelay:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    .line 101
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->TAG:Ljava/lang/String;

    const-string v2, "MessageResponse: isValid:  Returning false because retryDelay was nonzero and shouldRetry was false"

    invoke-static {v0, v2}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 106
    :cond_3
    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->mId:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->isValidId(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v0, 0x0

    .line 109
    :cond_4
    iget v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->mStatusCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->isValidStatusCode(Ljava/lang/Integer;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v0, 0x0

    .line 112
    :cond_5
    iget-boolean v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->mShouldRetry:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->isValidShouldRetry(Ljava/lang/Boolean;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v0, 0x0

    .line 115
    :cond_6
    iget-wide v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->mRetryDelay:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->isValidRetryDelay(Ljava/lang/Long;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v0, 0x0

    .line 118
    :cond_7
    iget-object v2, p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->mDescription:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->isValidDescription(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    move v1, v0

    :goto_1
    if-nez v1, :cond_9

    .line 123
    sget-object v0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->TAG:Ljava/lang/String;

    const-string v2, "MessageResponse: isValid:  Returning false because one or more components is invalid.  (See previous logs from MessageResponse: isValid... for details.)"

    invoke-static {v0, v2}, Lcom/amazon/messaging/odot/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return v1
.end method

.method public setDescription(Ljava/lang/String;)Z
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->mDescription:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setId(Ljava/lang/String;)Z
    .locals 1

    .line 29
    invoke-static {p1}, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->isValidId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    sget-object p1, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->TAG:Ljava/lang/String;

    const-string v0, "MessageResponse: setId:  Supplied id is invalid.  Cannot be set."

    invoke-static {p1, v0}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->mId:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setRetryDelay(J)Z
    .locals 0

    .line 63
    iput-wide p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->mRetryDelay:J

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->mRetryDelaySet:Z

    return p1
.end method

.method public setShouldRetry(Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->mShouldRetry:Z

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->mShouldRetrySet:Z

    return p1
.end method

.method public setStatusCode(I)Z
    .locals 0

    .line 43
    iput p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->mStatusCode:I

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/amazon/messaging/odot/webservices/transportdto/MessageResponse;->mStatusCodeSet:Z

    return p1
.end method
