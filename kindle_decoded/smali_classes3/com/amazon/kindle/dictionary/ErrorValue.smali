.class public Lcom/amazon/kindle/dictionary/ErrorValue;
.super Ljava/lang/Object;
.source "ErrorValue.java"


# instance fields
.field private errorType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 7
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/dictionary/ErrorValue;->setErrorType(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/amazon/kindle/dictionary/ErrorValue;->errorType:I

    return-void
.end method


# virtual methods
.method public getErrorType()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/amazon/kindle/dictionary/ErrorValue;->errorType:I

    return v0
.end method

.method public setErrorType(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/amazon/kindle/dictionary/ErrorValue;->errorType:I

    return-void
.end method
