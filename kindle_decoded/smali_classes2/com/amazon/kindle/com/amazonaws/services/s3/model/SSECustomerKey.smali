.class public Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;
.super Ljava/lang/Object;
.source "SSECustomerKey.java"


# instance fields
.field private algorithm:Ljava/lang/String;

.field private final base64EncodedKey:Ljava/lang/String;

.field private base64EncodedMd5:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;->base64EncodedKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;->base64EncodedKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/s3/model/SSECustomerKey;->base64EncodedMd5:Ljava/lang/String;

    return-object v0
.end method
