.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/reporting/errorcodes/WJErrorUtils;
.super Ljava/lang/Object;
.source "WJErrorUtils.java"


# direct methods
.method public static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 18
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object p0
.end method
