.class public Lcom/amazon/kindle/dcaps/common/Metrics;
.super Ljava/lang/Object;
.source "Metrics.java"


# static fields
.field private static dcaps:Lcom/amazon/kindle/dcaps/IDCAPSIntegration;


# direct methods
.method public static addCounter(Ljava/lang/String;D)V
    .locals 3

    .line 28
    sget-object v0, Lcom/amazon/kindle/dcaps/common/Metrics;->dcaps:Lcom/amazon/kindle/dcaps/IDCAPSIntegration;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dcaps.client.android."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/kindle/dcaps/IDCAPSIntegration;->addCounter(Ljava/lang/String;D)V

    return-void
.end method

.method public static initialize(Lcom/amazon/kindle/dcaps/IDCAPSIntegration;)V
    .locals 0

    .line 18
    sput-object p0, Lcom/amazon/kindle/dcaps/common/Metrics;->dcaps:Lcom/amazon/kindle/dcaps/IDCAPSIntegration;

    return-void
.end method
