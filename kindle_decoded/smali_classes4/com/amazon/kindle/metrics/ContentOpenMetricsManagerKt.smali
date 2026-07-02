.class public final Lcom/amazon/kindle/metrics/ContentOpenMetricsManagerKt;
.super Ljava/lang/Object;
.source "ContentOpenMetricsManager.kt"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/metrics/ContentOpenMetricsManagerKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kindle/metrics/ContentOpenMetricsManagerKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
