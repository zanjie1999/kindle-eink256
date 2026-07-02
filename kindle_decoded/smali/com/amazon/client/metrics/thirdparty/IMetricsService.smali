.class public interface abstract Lcom/amazon/client/metrics/thirdparty/IMetricsService;
.super Ljava/lang/Object;
.source "IMetricsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/client/metrics/thirdparty/IMetricsService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getRecordMetricsSetting()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract record(IILjava/lang/String;Ljava/lang/String;JLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/amazon/client/metrics/thirdparty/DataPointEnvelope;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
