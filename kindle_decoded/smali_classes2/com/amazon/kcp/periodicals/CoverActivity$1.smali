.class Lcom/amazon/kcp/periodicals/CoverActivity$1;
.super Landroid/widget/ImageView;
.source "CoverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/CoverActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/CoverActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/CoverActivity;Landroid/content/Context;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/CoverActivity$1;->this$0:Lcom/amazon/kcp/periodicals/CoverActivity;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 89
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 93
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-static {}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->getAsin()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 93
    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/util/Utils;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 95
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->READER_BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->getAsin()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/util/Utils;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
