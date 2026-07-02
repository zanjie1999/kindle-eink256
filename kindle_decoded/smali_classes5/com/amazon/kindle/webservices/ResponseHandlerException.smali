.class public Lcom/amazon/kindle/webservices/ResponseHandlerException;
.super Ljava/lang/Exception;
.source "ResponseHandlerException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0}, Lcom/amazon/kindle/webservices/ResponseHandlerException;-><init>(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/amazon/kindle/webservices/ResponseHandlerException;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    .line 21
    iput-object p1, p0, Lcom/amazon/kindle/webservices/ResponseHandlerException;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    return-void
.end method


# virtual methods
.method public getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ResponseHandlerException;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    return-object v0
.end method
