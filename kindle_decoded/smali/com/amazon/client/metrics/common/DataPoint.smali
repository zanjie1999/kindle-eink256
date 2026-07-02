.class public Lcom/amazon/client/metrics/common/DataPoint;
.super Ljava/lang/Object;
.source "DataPoint.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/internal/IDataPoint;


# instance fields
.field private final mDelegateDataPoint:Lcom/amazon/client/metrics/common/internal/IDataPoint;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/client/metrics/common/DataPointType;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->getInstance()Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/client/metrics/common/internal/util/DevicePlatformIdentifierUtil;->isDevicePlatformFireOS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/amazon/client/metrics/common/internal/fireos/FireOSDataPoint;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/client/metrics/common/internal/fireos/FireOSDataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/client/metrics/common/DataPointType;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/common/DataPoint;->mDelegateDataPoint:Lcom/amazon/client/metrics/common/internal/IDataPoint;

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Lcom/amazon/client/metrics/common/internal/android/AndroidDataPoint;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/client/metrics/common/internal/android/AndroidDataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/client/metrics/common/DataPointType;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/common/DataPoint;->mDelegateDataPoint:Lcom/amazon/client/metrics/common/internal/IDataPoint;

    :goto_0
    return-void
.end method


# virtual methods
.method getDelegateDataPoint()Lcom/amazon/client/metrics/common/internal/IDataPoint;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/client/metrics/common/DataPoint;->mDelegateDataPoint:Lcom/amazon/client/metrics/common/internal/IDataPoint;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/client/metrics/common/DataPoint;->mDelegateDataPoint:Lcom/amazon/client/metrics/common/internal/IDataPoint;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
