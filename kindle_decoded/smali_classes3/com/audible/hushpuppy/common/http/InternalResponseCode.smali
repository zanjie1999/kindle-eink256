.class public final Lcom/audible/hushpuppy/common/http/InternalResponseCode;
.super Ljava/lang/Object;
.source "InternalResponseCode.java"


# static fields
.field public static final EMPTY_RESPONSE:Lcom/audible/hushpuppy/common/http/InternalResponseCode;

.field public static final NULL_RESPONSE:Lcom/audible/hushpuppy/common/http/InternalResponseCode;

.field public static final SERVER_ERROR_RESPONSE:Lcom/audible/hushpuppy/common/http/InternalResponseCode;

.field public static final SUCCESS_RESPONSE:Lcom/audible/hushpuppy/common/http/InternalResponseCode;

.field public static final UNKNOWN_RESPONSE:Lcom/audible/hushpuppy/common/http/InternalResponseCode;


# instance fields
.field private final metricsMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    const-string v1, "NullResponse"

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/http/InternalResponseCode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/common/http/InternalResponseCode;->NULL_RESPONSE:Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    .line 23
    new-instance v0, Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    const-string v1, "EmptyResponse"

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/http/InternalResponseCode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/common/http/InternalResponseCode;->EMPTY_RESPONSE:Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    .line 28
    new-instance v0, Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    const-string v1, "UnknownResponse"

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/http/InternalResponseCode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/common/http/InternalResponseCode;->UNKNOWN_RESPONSE:Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    .line 33
    new-instance v0, Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    const-string v1, "SuccessResponse"

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/http/InternalResponseCode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/common/http/InternalResponseCode;->SUCCESS_RESPONSE:Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    .line 38
    new-instance v0, Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    const-string v1, "ServerErrorResponse"

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/common/http/InternalResponseCode;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/common/http/InternalResponseCode;->SERVER_ERROR_RESPONSE:Lcom/audible/hushpuppy/common/http/InternalResponseCode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "metricsMessage can\'t be null."

    .line 53
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    iput-object p1, p0, Lcom/audible/hushpuppy/common/http/InternalResponseCode;->metricsMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMetricsMessage()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/audible/hushpuppy/common/http/InternalResponseCode;->metricsMessage:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InternalResponseCode{metricsMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/http/InternalResponseCode;->metricsMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
