.class public abstract Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2;
.super Ljava/lang/Object;
.source "RequestHandler2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adapt(Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler;)Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2;
    .locals 1

    .line 74
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2Adaptor;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler2Adaptor;-><init>(Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler;)V

    return-object v0
.end method


# virtual methods
.method public abstract afterError(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/Response<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation
.end method

.method public abstract afterResponse(Lcom/amazon/kindle/com/amazonaws/Request;Lcom/amazon/kindle/com/amazonaws/Response;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Lcom/amazon/kindle/com/amazonaws/Response<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract beforeRequest(Lcom/amazon/kindle/com/amazonaws/Request;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)V"
        }
    .end annotation
.end method
