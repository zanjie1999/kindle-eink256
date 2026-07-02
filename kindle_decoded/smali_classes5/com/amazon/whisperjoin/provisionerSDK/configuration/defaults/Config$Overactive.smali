.class public Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/Config$Overactive;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final BUCKET_LENGTH_MS:J

.field public static final MONITORING_WINDOW_MS:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/Config$Overactive;->BUCKET_LENGTH_MS:J

    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/whisperjoin/provisionerSDK/configuration/defaults/Config$Overactive;->MONITORING_WINDOW_MS:J

    return-void
.end method
