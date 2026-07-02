.class public Lcom/amazon/sitb/android/UnBuyResult;
.super Ljava/lang/Object;
.source "UnBuyResult.java"


# static fields
.field public static final GENERAL_FAILURE:Lcom/amazon/sitb/android/UnBuyResult;


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private responseSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Lcom/amazon/sitb/android/UnBuyResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/sitb/android/UnBuyResult;-><init>(Z)V

    sput-object v0, Lcom/amazon/sitb/android/UnBuyResult;->GENERAL_FAILURE:Lcom/amazon/sitb/android/UnBuyResult;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean p1, p0, Lcom/amazon/sitb/android/UnBuyResult;->responseSuccess:Z

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/sitb/android/UnBuyResult;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/amazon/sitb/android/UnBuyResult;->responseSuccess:Z

    return v0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/sitb/android/UnBuyResult;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/amazon/sitb/android/UnBuyResult;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public setResponseSuccess(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/amazon/sitb/android/UnBuyResult;->responseSuccess:Z

    return-void
.end method
