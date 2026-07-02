.class public Lcom/amazon/client/metrics/common/internal/fireos/FireOSDataPoint;
.super Ljava/lang/Object;
.source "FireOSDataPoint.java"

# interfaces
.implements Lcom/amazon/client/metrics/common/internal/IDataPoint;


# instance fields
.field private final mDelegateFirstPartyDataPoint:Lcom/amazon/client/metrics/DataPoint;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/client/metrics/common/DataPointType;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/amazon/client/metrics/DataPoint;

    .line 31
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/amazon/client/metrics/DataPointType;->valueOf(Ljava/lang/String;)Lcom/amazon/client/metrics/DataPointType;

    move-result-object p4

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/client/metrics/DataPoint;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amazon/client/metrics/DataPointType;)V

    iput-object v0, p0, Lcom/amazon/client/metrics/common/internal/fireos/FireOSDataPoint;->mDelegateFirstPartyDataPoint:Lcom/amazon/client/metrics/DataPoint;

    return-void
.end method


# virtual methods
.method public getDelegateDataPoint()Lcom/amazon/client/metrics/DataPoint;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/fireos/FireOSDataPoint;->mDelegateFirstPartyDataPoint:Lcom/amazon/client/metrics/DataPoint;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/client/metrics/common/internal/fireos/FireOSDataPoint;->mDelegateFirstPartyDataPoint:Lcom/amazon/client/metrics/DataPoint;

    invoke-virtual {v0}, Lcom/amazon/client/metrics/DataPoint;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
