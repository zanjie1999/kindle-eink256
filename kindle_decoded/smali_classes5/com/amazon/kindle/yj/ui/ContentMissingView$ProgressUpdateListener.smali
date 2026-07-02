.class Lcom/amazon/kindle/yj/ui/ContentMissingView$ProgressUpdateListener;
.super Ljava/lang/Object;
.source "ContentMissingView.java"

# interfaces
.implements Lcom/amazon/kindle/yj/tracker/IProgressUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/yj/ui/ContentMissingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/yj/ui/ContentMissingView;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$ProgressUpdateListener;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/yj/ui/ContentMissingView;Lcom/amazon/kindle/yj/ui/ContentMissingView$1;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcom/amazon/kindle/yj/ui/ContentMissingView$ProgressUpdateListener;-><init>(Lcom/amazon/kindle/yj/ui/ContentMissingView;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator;)V
    .locals 1

    .line 218
    invoke-interface {p1}, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator;->getPercentage()I

    move-result p1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 221
    iget-object p1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$ProgressUpdateListener;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->access$102(Lcom/amazon/kindle/yj/ui/ContentMissingView;Z)Z

    .line 222
    iget-object p1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$ProgressUpdateListener;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->access$1000(Lcom/amazon/kindle/yj/ui/ContentMissingView;I)V

    .line 223
    iget-object p1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$ProgressUpdateListener;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    invoke-virtual {p1}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->reportOneTapProgressiveDownloadMetrics()V

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$ProgressUpdateListener;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    invoke-static {v0, p1}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->access$1100(Lcom/amazon/kindle/yj/ui/ContentMissingView;I)V

    :goto_0
    return-void
.end method

.method public onStateChanged(Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    invoke-static {}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->access$000()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgressUpdateListener onStateChanged in CMV assetProgressCalculator "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "assetProgressCalculator.getState() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-interface {p1}, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator;->getState()Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator;->getState()Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->ERROR:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    if-ne v0, v1, :cond_2

    .line 202
    iget-object v2, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$ProgressUpdateListener;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/4 v5, 0x0

    sget v6, Lcom/amazon/kindle/krl/R$string;->download_failed:I

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->access$900(Lcom/amazon/kindle/yj/ui/ContentMissingView;IIIII)V

    goto :goto_0

    .line 203
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator;->getState()Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->DOWNLOADING:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    if-ne v0, v1, :cond_3

    .line 204
    invoke-interface {p1}, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator;->getPercentage()I

    move-result v7

    .line 205
    iget-object v2, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$ProgressUpdateListener;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x8

    sget v6, Lcom/amazon/kindle/krl/R$string;->downloading_now:I

    invoke-static/range {v2 .. v7}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->access$900(Lcom/amazon/kindle/yj/ui/ContentMissingView;IIIII)V

    goto :goto_0

    .line 206
    :cond_3
    invoke-interface {p1}, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator;->getState()Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->COMPLETE:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    if-ne v0, v1, :cond_4

    .line 207
    iget-object p1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$ProgressUpdateListener;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->access$102(Lcom/amazon/kindle/yj/ui/ContentMissingView;Z)Z

    .line 208
    iget-object p1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$ProgressUpdateListener;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->access$1000(Lcom/amazon/kindle/yj/ui/ContentMissingView;I)V

    .line 209
    iget-object p1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$ProgressUpdateListener;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    invoke-virtual {p1}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->reportOneTapProgressiveDownloadMetrics()V

    goto :goto_0

    .line 210
    :cond_4
    invoke-interface {p1}, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator;->getState()Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;->WAITING:Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;

    if-ne p1, v0, :cond_5

    .line 211
    iget-object v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$ProgressUpdateListener;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/16 v4, 0x8

    sget v5, Lcom/amazon/kindle/krl/R$string;->download_waiting:I

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->access$900(Lcom/amazon/kindle/yj/ui/ContentMissingView;IIIII)V

    :cond_5
    :goto_0
    return-void
.end method
