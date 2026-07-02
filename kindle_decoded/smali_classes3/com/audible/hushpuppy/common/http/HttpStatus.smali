.class public final Lcom/audible/hushpuppy/common/http/HttpStatus;
.super Ljava/lang/Object;
.source "HttpStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;
    }
.end annotation


# static fields
.field private static final HTTP_CLIENT_ERROR_END:I = 0x1f3

.field private static final HTTP_CLIENT_ERROR_START:I = 0x190

.field private static final HTTP_SERVER_ERROR_END:I = 0x257

.field private static final HTTP_SERVER_ERROR_START:I = 0x1f4

.field private static final HTTP_SUCCESS_END:I = 0x12b

.field private static final HTTP_SUCCESS_START:I = 0xc8

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final httpStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/common/http/HttpStatus;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/http/HttpStatus;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lcom/audible/hushpuppy/common/http/HttpStatus;->httpStatus:I

    return-void
.end method


# virtual methods
.method public getHttpStatusCode()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/audible/hushpuppy/common/http/HttpStatus;->httpStatus:I

    return v0
.end method

.method public getType()Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/audible/hushpuppy/common/http/HttpStatus;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;->SUCCESS:Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    return-object v0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/audible/hushpuppy/common/http/HttpStatus;->isServerError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    sget-object v0, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;->SERVERERROR:Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    return-object v0

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/audible/hushpuppy/common/http/HttpStatus;->isClientError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    sget-object v0, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;->CLIENTERROR:Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    return-object v0

    .line 100
    :cond_2
    sget-object v0, Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;->UNKNOWN:Lcom/audible/hushpuppy/common/http/HttpStatus$StatusType;

    return-object v0
.end method

.method public isClientError()Z
    .locals 2

    .line 68
    iget v0, p0, Lcom/audible/hushpuppy/common/http/HttpStatus;->httpStatus:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1f3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isServerError()Z
    .locals 2

    .line 79
    iget v0, p0, Lcom/audible/hushpuppy/common/http/HttpStatus;->httpStatus:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    const/16 v1, 0x257

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .line 57
    iget v0, p0, Lcom/audible/hushpuppy/common/http/HttpStatus;->httpStatus:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12b

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/audible/hushpuppy/common/http/HttpStatus;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/hushpuppy/common/http/HttpStatus;->httpStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
