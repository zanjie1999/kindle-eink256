.class final Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils$logToFileForP0SpanTesting$1;
.super Ljava/lang/Object;
.source "NavigationMetricsUtils.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->logToFileForP0SpanTesting(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $logOutput:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils$logToFileForP0SpanTesting$1;->$logOutput:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 214
    sget-object v0, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->INSTANCE:Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;

    invoke-static {v0}, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->access$getP0LoggingPrintWriter$p(Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;)Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils$logToFileForP0SpanTesting$1;->$logOutput:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
