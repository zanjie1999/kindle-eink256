.class Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$5;
.super Ljava/lang/Object;
.source "PeriodicalReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

.field final synthetic val$viewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;)V
    .locals 0

    .line 1066
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$5;->this$0:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    iput-object p2, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$5;->val$viewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1069
    invoke-static {}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "startOrResumeSession running in a separate thread."

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 1070
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$5;->val$viewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getMetricsHelper()Lcom/amazon/nwstd/metrics/IMetricsHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/nwstd/metrics/IMetricsHelper;->startOrResumeSession()V

    return-void
.end method
