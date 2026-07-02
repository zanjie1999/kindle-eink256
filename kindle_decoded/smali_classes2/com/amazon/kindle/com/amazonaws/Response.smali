.class public final Lcom/amazon/kindle/com/amazonaws/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final httpResponse:Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;

.field private final response:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/Response;->response:Ljava/lang/Object;

    .line 37
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/Response;->httpResponse:Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;

    return-void
.end method


# virtual methods
.method public getAwsResponse()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/Response;->response:Ljava/lang/Object;

    return-object v0
.end method
