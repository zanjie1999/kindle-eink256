.class public Lcom/amazon/devicesetupservice/DeviceSetupServiceThrottlingException;
.super Lcom/amazon/devicesetupservice/DeviceSetupServiceUnavailableException;
.source "DeviceSetupServiceThrottlingException.java"


# static fields
.field private static final serialVersionUID:J = -0x1L


# instance fields
.field private retryAfterInSeconds:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/amazon/devicesetupservice/DeviceSetupServiceUnavailableException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/devicesetupservice/DeviceSetupServiceUnavailableException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/amazon/devicesetupservice/DeviceSetupServiceUnavailableException;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, p2}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/amazon/devicesetupservice/DeviceSetupServiceUnavailableException;-><init>()V

    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/Exception;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getRetryAfterInSeconds()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/amazon/devicesetupservice/DeviceSetupServiceThrottlingException;->retryAfterInSeconds:I

    return v0
.end method

.method public setRetryAfterInSeconds(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/amazon/devicesetupservice/DeviceSetupServiceThrottlingException;->retryAfterInSeconds:I

    return-void
.end method
