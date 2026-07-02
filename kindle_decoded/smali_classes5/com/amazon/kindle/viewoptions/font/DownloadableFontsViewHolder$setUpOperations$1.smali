.class final Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder$setUpOperations$1;
.super Ljava/lang/Object;
.source "DownloadableFontsViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->setUpOperations(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder$setUpOperations$1;->this$0:Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder$setUpOperations$1;->$fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 83
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder$setUpOperations$1;->$fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDownloaded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder$setUpOperations$1;->$fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->getDownloadableFont()Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object p1

    const-string v0, "fontInfo.downloadableFont"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->isSupportDeletion()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 85
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder$setUpOperations$1;->$fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->deleteFontOnDemand(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    .line 86
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder$setUpOperations$1;->this$0:Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder$setUpOperations$1;->$fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-static {p1, v0}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->access$setFontStateToNeedDownload(Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder$setUpOperations$1;->$fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDownloading()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 89
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder$setUpOperations$1;->$fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDefaultFont()Z

    move-result p1

    if-nez p1, :cond_2

    .line 90
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder$setUpOperations$1;->$fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->cancelDownloadFontOnDemand(Lcom/amazon/kcp/font/IFontInfo;)V

    .line 91
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder$setUpOperations$1;->this$0:Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder$setUpOperations$1;->$fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-static {p1, v0}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->access$setFontStateToNeedDownload(Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder$setUpOperations$1;->$fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->downloadFontManuallyIfNeeds(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder$setUpOperations$1;->this$0:Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder$setUpOperations$1;->$fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-static {p1, v0}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;->access$setFontStateToDownloading(Lcom/amazon/kindle/viewoptions/font/DownloadableFontsViewHolder;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    :cond_2
    :goto_0
    return-void
.end method
