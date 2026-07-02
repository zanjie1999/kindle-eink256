.class public Lcom/amazon/kindle/krx/appexpan/AppExpanResourceSetResponse;
.super Ljava/lang/Object;
.source "AppExpanResourceSetResponse.java"

# interfaces
.implements Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse;


# instance fields
.field private appExpanResourceSet:Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;

.field private failureReason:Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;


# direct methods
.method public constructor <init>(Lcom/amazon/appexpan/client/ResourceSetResponse;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/ResourceSetResponse;->getResourceSet()Lcom/amazon/appexpan/client/ResourceSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    new-instance v1, Lcom/amazon/kindle/krx/appexpan/AppExpanResourceSet;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/krx/appexpan/AppExpanResourceSet;-><init>(Lcom/amazon/appexpan/client/ResourceSet;)V

    iput-object v1, p0, Lcom/amazon/kindle/krx/appexpan/AppExpanResourceSetResponse;->appExpanResourceSet:Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/amazon/kindle/krx/appexpan/AppExpanResourceSetResponse;->appExpanResourceSet:Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;

    .line 25
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/ResourceSetResponse;->getFailureReason()Lcom/amazon/appexpan/client/ResourceSetResponse$FailureReason;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/appexpan/AppExpanResourceSetResponse;->convertFailureReason(Lcom/amazon/appexpan/client/ResourceSetResponse$FailureReason;)Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/appexpan/AppExpanResourceSetResponse;->failureReason:Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    return-void
.end method

.method private convertFailureReason(Lcom/amazon/appexpan/client/ResourceSetResponse$FailureReason;)Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;
    .locals 1

    if-eqz p1, :cond_3

    .line 54
    sget-object v0, Lcom/amazon/kindle/krx/appexpan/AppExpanResourceSetResponse$1;->$SwitchMap$com$amazon$appexpan$client$ResourceSetResponse$FailureReason:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 63
    sget-object p1, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;->UNKNOWN_FAILURE:Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    return-object p1

    .line 60
    :cond_0
    sget-object p1, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;->RESOURCE_SET_INVALID:Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    return-object p1

    .line 58
    :cond_1
    sget-object p1, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;->RESOURCE_SET_DOWNLOAD_FAILED:Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    return-object p1

    .line 56
    :cond_2
    sget-object p1, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;->RESOURCE_SET_NOT_LOCAL:Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getFailureReason()Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/krx/appexpan/AppExpanResourceSetResponse;->failureReason:Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    return-object v0
.end method

.method public getResourceSet()Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/krx/appexpan/AppExpanResourceSetResponse;->appExpanResourceSet:Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;

    return-object v0
.end method
