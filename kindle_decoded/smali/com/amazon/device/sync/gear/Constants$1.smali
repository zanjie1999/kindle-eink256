.class final Lcom/amazon/device/sync/gear/Constants$1;
.super Lcom/amazon/whispersync/Reason;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/sync/gear/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/amazon/whispersync/Reason;-><init>()V

    const-string v0, "Bootstrap"

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/Reason;->setReasonType(Ljava/lang/String;)V

    return-void
.end method
