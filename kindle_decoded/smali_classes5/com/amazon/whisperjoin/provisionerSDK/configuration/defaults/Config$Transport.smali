.class public Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/Config$Transport;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final OPERATION_TIMEOUT_MS:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/Config$Transport;->OPERATION_TIMEOUT_MS:J

    return-void
.end method
