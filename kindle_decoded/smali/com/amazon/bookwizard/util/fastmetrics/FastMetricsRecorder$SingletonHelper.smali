.class Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$SingletonHelper;
.super Ljava/lang/Object;
.source "FastMetricsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHelper"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;-><init>(Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$1;)V

    sput-object v0, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$SingletonHelper;->INSTANCE:Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;

    return-void
.end method

.method static synthetic access$100()Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder$SingletonHelper;->INSTANCE:Lcom/amazon/bookwizard/util/fastmetrics/FastMetricsRecorder;

    return-object v0
.end method
