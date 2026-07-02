.class public Lcom/amazon/kindle/callback/OperationResult;
.super Ljava/lang/Object;
.source "OperationResult.java"


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
.field private error:Ljava/lang/String;

.field private errorCode:I

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/amazon/kindle/callback/OperationResult;->statusCode:I

    const/4 v1, -0x1

    .line 48
    iput v1, p0, Lcom/amazon/kindle/callback/OperationResult;->errorCode:I

    .line 68
    iput v0, p0, Lcom/amazon/kindle/callback/OperationResult;->statusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/amazon/kindle/callback/OperationResult;->statusCode:I

    const/4 v1, -0x1

    .line 48
    iput v1, p0, Lcom/amazon/kindle/callback/OperationResult;->errorCode:I

    .line 59
    iput v0, p0, Lcom/amazon/kindle/callback/OperationResult;->statusCode:I

    .line 60
    iput-object p1, p0, Lcom/amazon/kindle/callback/OperationResult;->result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/amazon/kindle/callback/OperationResult;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/amazon/kindle/callback/OperationResult;->statusCode:I

    return v0
.end method

.method public setStatus(I)Lcom/amazon/kindle/callback/OperationResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/amazon/kindle/callback/OperationResult<",
            "TT;>;"
        }
    .end annotation

    .line 81
    iput p1, p0, Lcom/amazon/kindle/callback/OperationResult;->statusCode:I

    return-object p0
.end method
