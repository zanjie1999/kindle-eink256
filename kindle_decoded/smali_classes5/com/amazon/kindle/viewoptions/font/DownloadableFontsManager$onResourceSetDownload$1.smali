.class final Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager$onResourceSetDownload$1;
.super Ljava/lang/Object;
.source "DownloadableFontsManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;->onResourceSetDownload(Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $event:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;

.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager$onResourceSetDownload$1;->this$0:Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager$onResourceSetDownload$1;->$event:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager$onResourceSetDownload$1;->this$0:Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager$onResourceSetDownload$1;->$event:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;

    invoke-virtual {v1}, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;->getFont()Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v1

    const-string v2, "event.font"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;->getSelectedIndex(Lcom/mobipocket/android/drawing/FontFamily;)I

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager$onResourceSetDownload$1;->this$0:Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;

    invoke-static {v1}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;->access$getListView$p(Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;)Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListView;->getAdapter()Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager$onResourceSetDownload$1;->$event:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;

    invoke-virtual {v3}, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;->getFont()Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
