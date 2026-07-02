.class final Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$startReadingSession$1;
.super Ljava/lang/Object;
.source "FastMetricsSessionsHelper.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->startReadingSession(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/android/docviewer/KindleDoc;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $book:Lcom/amazon/kindle/krx/content/IBook;

.field final synthetic $bookType:Ljava/lang/String;

.field final synthetic $doc:Lcom/amazon/android/docviewer/KindleDoc;

.field final synthetic $erl:I

.field final synthetic $fastMetricsSessions:Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/android/docviewer/KindleDoc;ILcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$startReadingSession$1;->$book:Lcom/amazon/kindle/krx/content/IBook;

    iput-object p2, p0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$startReadingSession$1;->$doc:Lcom/amazon/android/docviewer/KindleDoc;

    iput p3, p0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$startReadingSession$1;->$erl:I

    iput-object p4, p0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$startReadingSession$1;->$fastMetricsSessions:Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;

    iput-object p5, p0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$startReadingSession$1;->$bookType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 135
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;

    iget-object v1, p0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$startReadingSession$1;->$book:Lcom/amazon/kindle/krx/content/IBook;

    iget-object v2, p0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$startReadingSession$1;->$doc:Lcom/amazon/android/docviewer/KindleDoc;

    iget v3, p0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$startReadingSession$1;->$erl:I

    iget-object v4, p0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$startReadingSession$1;->$fastMetricsSessions:Lcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;

    iget-object v5, p0, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper$startReadingSession$1;->$bookType:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/util/fastmetrics/FastMetricsSessionsHelper;->startReadingSession$KindleReaderLibrary_release(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/android/docviewer/KindleDoc;ILcom/amazon/kindle/fastmetrics/service/contract/IKindleFastMetricsSessions;Ljava/lang/String;)V

    return-void
.end method
