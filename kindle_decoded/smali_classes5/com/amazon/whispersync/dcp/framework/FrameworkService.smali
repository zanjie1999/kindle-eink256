.class abstract Lcom/amazon/whispersync/dcp/framework/FrameworkService;
.super Lcom/amazon/whispersync/roboguice/service/RoboService;
.source "FrameworkService.java"


# direct methods
.method protected constructor <init>()V
    .locals 1

    const-string v0, "com.amazon.whispersync.dcp.framework"

    .line 11
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/roboguice/service/RoboService;-><init>(Ljava/lang/String;)V

    return-void
.end method
