.class public Lcom/amazon/dcp/messaging/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private final mRetry:Z

.field private final mRetryAfter:I

.field private final mStatusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    .line 38
    invoke-direct/range {v0 .. v5}, Lcom/amazon/dcp/messaging/Response;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    .line 27
    invoke-direct/range {v0 .. v5}, Lcom/amazon/dcp/messaging/Response;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IZILjava/lang/String;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iput-object p1, p0, Lcom/amazon/dcp/messaging/Response;->mId:Ljava/lang/String;

    .line 53
    iput p2, p0, Lcom/amazon/dcp/messaging/Response;->mStatusCode:I

    .line 54
    iput-boolean p3, p0, Lcom/amazon/dcp/messaging/Response;->mRetry:Z

    .line 55
    iput p4, p0, Lcom/amazon/dcp/messaging/Response;->mRetryAfter:I

    .line 56
    iput-object p5, p0, Lcom/amazon/dcp/messaging/Response;->mDescription:Ljava/lang/String;

    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ID cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/dcp/messaging/Response;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/dcp/messaging/Response;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getRetry()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/amazon/dcp/messaging/Response;->mRetry:Z

    return v0
.end method

.method public getRetryAfter()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/amazon/dcp/messaging/Response;->mRetryAfter:I

    return v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/amazon/dcp/messaging/Response;->mStatusCode:I

    return v0
.end method

.method public seralizeToIntent(Landroid/content/Intent;)V
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/amazon/dcp/messaging/Response;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.dcp.messaging.MESSAGE_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0}, Lcom/amazon/dcp/messaging/Response;->getStatusCode()I

    move-result v0

    const-string v1, "com.amazon.dcp.messaging.response.status"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0}, Lcom/amazon/dcp/messaging/Response;->getRetry()Z

    move-result v0

    const-string v1, "com.amazon.dcp.messaging.response.retry"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    invoke-virtual {p0}, Lcom/amazon/dcp/messaging/Response;->getRetryAfter()I

    move-result v0

    const-string v1, "com.amazon.dcp.messaging.response.retry.after"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0}, Lcom/amazon/dcp/messaging/Response;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.amazon.dcp.messaging.response.description"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
