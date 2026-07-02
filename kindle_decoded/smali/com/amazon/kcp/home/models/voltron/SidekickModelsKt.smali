.class public final Lcom/amazon/kcp/home/models/voltron/SidekickModelsKt;
.super Ljava/lang/Object;
.source "SidekickModels.kt"


# static fields
.field private static final DEFAULT_TTL:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/amazon/kcp/home/models/voltron/SidekickModelsKt;->DEFAULT_TTL:J

    return-void
.end method

.method public static final synthetic access$getDEFAULT_TTL$p()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/amazon/kcp/home/models/voltron/SidekickModelsKt;->DEFAULT_TTL:J

    return-wide v0
.end method
