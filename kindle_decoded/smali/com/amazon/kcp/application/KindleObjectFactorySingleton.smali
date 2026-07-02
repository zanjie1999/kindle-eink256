.class public Lcom/amazon/kcp/application/KindleObjectFactorySingleton;
.super Ljava/lang/Object;
.source "KindleObjectFactorySingleton.java"


# static fields
.field static objectFactory:Lcom/amazon/kcp/application/IKindleObjectFactory;


# direct methods
.method public static getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;
    .locals 0

    .line 33
    sget-object p0, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->objectFactory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    return-object p0
.end method

.method protected static setWrapperInstance(Lcom/amazon/kcp/application/IKindleObjectFactory;Landroid/content/Context;)V
    .locals 1

    .line 20
    sput-object p0, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->objectFactory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    const-string p0, "KindleObjectFactorySingleton.setWrapperInstance() - create"

    const/4 v0, 0x1

    .line 22
    invoke-static {p0, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 24
    :try_start_0
    sget-object v0, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->objectFactory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->setContext(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    .line 29
    invoke-static {p0, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void

    :catch_0
    move-exception p0

    .line 26
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Error initializing application"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
