.class public Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Workflow;
.super Ljava/lang/Object;
.source "WJErrorFactory.java"


# direct methods
.method private static create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 4

    .line 339
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->WORKFLOW_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->getNumber()I

    move-result v1

    invoke-virtual {p0}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;->getNumber()I

    move-result p0

    sget v2, Lcom/amazon/whisperjoin/common/sharedtypes/error/CommonErrorDetails;->NONE:I

    sget-object v3, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->CLIENT_APPLICATION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-virtual {v3}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->getNumber()I

    move-result v3

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;-><init>(IIII)V

    return-object v0
.end method

.method public static deviceRecentlyProvisioned()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 331
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;->DEVICE_RECENTLY_PROVISIONED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;

    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Workflow;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v0

    return-object v0
.end method

.method public static unknown()Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;
    .locals 1

    .line 335
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;->UNKNOWN_WORKFLOW_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;

    invoke-static {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/error/WJErrorFactory$Workflow;->create(Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;)Lcom/amazon/whisperjoin/common/sharedtypes/error/WJError;

    move-result-object v0

    return-object v0
.end method
