.class public Lcom/amazon/client/metrics/common/internal/android/AndroidDataPoint;
.super Ljava/lang/Object;
.source "AndroidDataPoint.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/internal/IDataPoint;


# instance fields
.field private final mDelegateThirdPartyDataPoint:Lcom/amazon/client/metrics/thirdparty/DataPoint;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/client/metrics/common/DataPointType;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/amazon/client/metrics/thirdparty/DataPoint;

    .line 32
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/amazon/client/metrics/thirdparty/DataPointType;->valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/thirdparty/DataPointType;

    move-result-object p4

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/client/metrics/thirdparty/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/client/metrics/thirdparty/DataPointType;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidDataPoint;->mDelegateThirdPartyDataPoint:Lcom/amazon/client/metrics/thirdparty/DataPoint;

    return-void
.end method


# virtual methods
.method public getDelegateDataPoint()Lcom/amazon/client/metrics/thirdparty/DataPoint;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidDataPoint;->mDelegateThirdPartyDataPoint:Lcom/amazon/client/metrics/thirdparty/DataPoint;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/android/AndroidDataPoint;->mDelegateThirdPartyDataPoint:Lcom/amazon/client/metrics/thirdparty/DataPoint;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/thirdparty/DataPoint;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
