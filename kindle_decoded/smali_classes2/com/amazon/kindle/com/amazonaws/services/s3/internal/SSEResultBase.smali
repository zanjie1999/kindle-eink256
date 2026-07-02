.class public abstract Lcom/amazon/kindle/com/amazonaws/services/s3/internal/SSEResultBase;
.super Ljava/lang/Object;
.source "SSEResultBase.java"

# interfaces
.implements Lcom/amazon/kindle/com/amazonaws/services/s3/internal/ServerSideEncryptionResult;


# instance fields
.field private sseAlgorithm:Ljava/lang/String;

.field private sseCustomerAlgorithm:Ljava/lang/String;

.field private sseCustomerKeyMD5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setSSEAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/SSEResultBase;->sseAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public final setSSECustomerAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/SSEResultBase;->sseCustomerAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public final setSSECustomerKeyMd5(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/internal/SSEResultBase;->sseCustomerKeyMD5:Ljava/lang/String;

    return-void
.end method
