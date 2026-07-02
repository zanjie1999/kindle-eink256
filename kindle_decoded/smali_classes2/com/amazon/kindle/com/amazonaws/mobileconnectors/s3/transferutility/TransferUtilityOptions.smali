.class public Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;
.super Ljava/lang/Object;
.source "TransferUtilityOptions.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MILLIS_IN_MINUTE:I = 0xea60

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transferNetworkConnectionType:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

.field private transferServiceCheckTimeInterval:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private transferThreadPoolSize:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->getDefaultCheckTimeInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->transferServiceCheckTimeInterval:J

    .line 79
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->getDefaultThreadPoolSize()I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->transferThreadPoolSize:I

    .line 80
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->getDefaultTransferNetworkConnectionType()Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->transferNetworkConnectionType:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    return-void
.end method

.method static getDefaultCheckTimeInterval()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method static getDefaultThreadPoolSize()I
    .locals 1

    .line 162
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method static getDefaultTransferNetworkConnectionType()Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
    .locals 1

    .line 184
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->ANY:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    return-object v0
.end method


# virtual methods
.method public getTransferNetworkConnectionType()Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->transferNetworkConnectionType:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    return-object v0
.end method
