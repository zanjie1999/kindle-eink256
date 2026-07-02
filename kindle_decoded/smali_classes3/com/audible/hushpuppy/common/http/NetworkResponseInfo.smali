.class public final Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;
.super Ljava/lang/Object;
.source "NetworkResponseInfo.java"


# instance fields
.field private final httpStatus:Lcom/audible/hushpuppy/common/http/HttpStatus;

.field private final internalResponseCode:Lcom/audible/hushpuppy/common/http/InternalResponseCode;


# direct methods
.method public constructor <init>(Lcom/audible/hushpuppy/common/http/HttpStatus;Lcom/audible/hushpuppy/common/http/InternalResponseCode;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "httpStatus can\'t be null."

    .line 27
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "internalResponseCode can\'t be null."

    .line 28
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iput-object p1, p0, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;->httpStatus:Lcom/audible/hushpuppy/common/http/HttpStatus;

    .line 31
    iput-object p2, p0, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;->internalResponseCode:Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    return-void
.end method


# virtual methods
.method public getHttpStatus()Lcom/audible/hushpuppy/common/http/HttpStatus;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;->httpStatus:Lcom/audible/hushpuppy/common/http/HttpStatus;

    return-object v0
.end method

.method public getInternalResponseCode()Lcom/audible/hushpuppy/common/http/InternalResponseCode;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/audible/hushpuppy/common/http/NetworkResponseInfo;->internalResponseCode:Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    return-object v0
.end method
