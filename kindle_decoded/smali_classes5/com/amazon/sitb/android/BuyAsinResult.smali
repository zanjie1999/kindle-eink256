.class public Lcom/amazon/sitb/android/BuyAsinResult;
.super Ljava/lang/Object;
.source "BuyAsinResult.java"


# static fields
.field public static final GENERAL_FAILURE:Lcom/amazon/sitb/android/BuyAsinResult;


# instance fields
.field private errorCode:Ljava/lang/String;

.field private localizedErrorMessage:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private orderItemId:Ljava/lang/String;

.field private responseSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lcom/amazon/sitb/android/BuyAsinResult;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/amazon/sitb/android/BuyAsinResult;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/sitb/android/BuyAsinResult;->GENERAL_FAILURE:Lcom/amazon/sitb/android/BuyAsinResult;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p1, p0, Lcom/amazon/sitb/android/BuyAsinResult;->responseSuccess:Z

    .line 30
    iput-object p2, p0, Lcom/amazon/sitb/android/BuyAsinResult;->orderId:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/amazon/sitb/android/BuyAsinResult;->orderItemId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/sitb/android/BuyAsinResult;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/sitb/android/BuyAsinResult;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderItemId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/sitb/android/BuyAsinResult;->orderItemId:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/amazon/sitb/android/BuyAsinResult;->responseSuccess:Z

    return v0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/sitb/android/BuyAsinResult;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public setLocalizedErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/sitb/android/BuyAsinResult;->localizedErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/amazon/sitb/android/BuyAsinResult;->orderId:Ljava/lang/String;

    return-void
.end method

.method public setOrderItemId(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amazon/sitb/android/BuyAsinResult;->orderItemId:Ljava/lang/String;

    return-void
.end method

.method public setResponseSuccess(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/amazon/sitb/android/BuyAsinResult;->responseSuccess:Z

    return-void
.end method
