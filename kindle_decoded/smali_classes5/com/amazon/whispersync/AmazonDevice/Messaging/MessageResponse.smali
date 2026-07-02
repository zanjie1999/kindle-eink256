.class public Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;
.super Ljava/lang/Object;
.source "MessageResponse.java"


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
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidDescription(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static isValidId(Ljava/lang/String;)Z
    .locals 2

    .line 148
    invoke-static {p0}, Lcom/amazon/whispersync/AmazonDevice/Common/RequestValidationHelper;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "MessageResponse: isValidId:  Returning false because id is null or empty."

    .line 150
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

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
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryDelay()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mRetryDelay:J

    return-wide v0
.end method

.method public getShouldRetry()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mShouldRetry:Z

    return v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mStatusCode:I

    return v0
.end method

.method public isValid()Z
    .locals 7

    .line 91
    iget-boolean v0, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mStatusCodeSet:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "MessageResponse: isValid:  Returning false because statusCode (a mandatory field) was not set"

    .line 93
    invoke-static {v2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 97
    :goto_0
    iget-boolean v2, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mShouldRetrySet:Z

    if-nez v2, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "MessageResponse: isValid:  Returning false because shouldRetry (a mandatory field) was not set"

    .line 99
    invoke-static {v2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 103
    :cond_1
    iget-boolean v2, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mShouldRetry:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mRetryDelaySet:Z

    if-nez v2, :cond_2

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "MessageResponse: isValid:  Returning false because retryDelay was not set and shouldRetry was true"

    .line 105
    invoke-static {v2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 110
    :cond_2
    iget-boolean v2, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mShouldRetry:Z

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mRetryDelay:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "MessageResponse: isValid:  Returning false because retryDelay was nonzero and shouldRetry was false"

    .line 112
    invoke-static {v2, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 117
    :cond_3
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mId:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->isValidId(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v0, 0x0

    .line 121
    :cond_4
    iget v2, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mStatusCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->isValidStatusCode(Ljava/lang/Integer;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v0, 0x0

    .line 125
    :cond_5
    iget-boolean v2, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mShouldRetry:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->isValidShouldRetry(Ljava/lang/Boolean;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v0, 0x0

    .line 129
    :cond_6
    iget-wide v2, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mRetryDelay:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->isValidRetryDelay(Ljava/lang/Long;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v0, 0x0

    .line 133
    :cond_7
    iget-object v2, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mDescription:Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->isValidDescription(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, 0x0

    :cond_8
    if-nez v0, :cond_9

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "MessageResponse: isValid:  Returning false because one or more components is invalid.  (See previous logs from MessageResponse: isValid... for details.)"

    .line 140
    invoke-static {v2, v1}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return v0
.end method

.method public setDescription(Ljava/lang/String;)Z
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mDescription:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setId(Ljava/lang/String;)Z
    .locals 2

    .line 25
    invoke-static {p1}, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->isValidId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "MessageResponse: setId:  Supplied id is invalid.  Cannot be set."

    .line 27
    invoke-static {v1, v0}, Lcom/amazon/whispersync/AmazonDevice/Common/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mId:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setRetryDelay(J)Z
    .locals 0

    .line 66
    iput-wide p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mRetryDelay:J

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mRetryDelaySet:Z

    return p1
.end method

.method public setShouldRetry(Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mShouldRetry:Z

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mShouldRetrySet:Z

    return p1
.end method

.method public setStatusCode(I)Z
    .locals 0

    .line 42
    iput p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mStatusCode:I

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/amazon/whispersync/AmazonDevice/Messaging/MessageResponse;->mStatusCodeSet:Z

    return p1
.end method
