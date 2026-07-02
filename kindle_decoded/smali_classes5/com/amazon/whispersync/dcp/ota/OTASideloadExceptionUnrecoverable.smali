.class public Lcom/amazon/whispersync/dcp/ota/OTASideloadExceptionUnrecoverable;
.super Lcom/amazon/whispersync/dcp/ota/OTASideloadException;
.source "OTASideloadExceptionUnrecoverable.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method protected constructor <init>(Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/ota/OTASideloadException;-><init>(Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;)V

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;Ljava/lang/Throwable;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/dcp/ota/OTASideloadException;-><init>(Lcom/amazon/whispersync/dcp/ota/OTASideloadException$ErrorType;Ljava/lang/Throwable;)V

    return-void
.end method
