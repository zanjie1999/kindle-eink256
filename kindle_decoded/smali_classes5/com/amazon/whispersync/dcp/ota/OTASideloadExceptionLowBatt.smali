.class public final Lcom/amazon/whispersync/dcp/ota/OTASideloadExceptionLowBatt;
.super Lcom/amazon/whispersync/dcp/ota/OTASideloadExceptionRecoverable;
.source "OTASideloadExceptionLowBatt.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/ota/OTASideloadExceptionLowBatt;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;->LowBatt:Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;

    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/dcp/ota/OTASideloadExceptionRecoverable;-><init>(Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;Ljava/lang/Throwable;)V

    return-void
.end method
