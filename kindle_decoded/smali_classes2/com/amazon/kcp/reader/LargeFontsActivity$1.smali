.class Lcom/amazon/kcp/reader/LargeFontsActivity$1;
.super Ljava/lang/Object;
.source "LargeFontsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/LargeFontsActivity;->onResourceSetDownload(Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/LargeFontsActivity;

.field final synthetic val$event:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/LargeFontsActivity;Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/amazon/kcp/reader/LargeFontsActivity$1;->this$0:Lcom/amazon/kcp/reader/LargeFontsActivity;

    iput-object p2, p0, Lcom/amazon/kcp/reader/LargeFontsActivity$1;->val$event:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/amazon/kcp/reader/LargeFontsActivity$1;->this$0:Lcom/amazon/kcp/reader/LargeFontsActivity;

    iget-object v0, v0, Lcom/amazon/kcp/reader/LargeFontsActivity;->largeFontAdapter:Lcom/amazon/kcp/reader/LargeFontAdapter;

    iget-object v1, p0, Lcom/amazon/kcp/reader/LargeFontsActivity$1;->val$event:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;

    invoke-virtual {v1}, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;->getFont()Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/LargeFontAdapter;->getIndexOfItem(Lcom/mobipocket/android/drawing/FontFamily;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/LargeFontsActivity$1;->this$0:Lcom/amazon/kcp/reader/LargeFontsActivity;

    iget-object v1, v1, Lcom/amazon/kcp/reader/LargeFontsActivity;->largeFontAdapter:Lcom/amazon/kcp/reader/LargeFontAdapter;

    iget-object v2, p0, Lcom/amazon/kcp/reader/LargeFontsActivity$1;->val$event:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;

    invoke-virtual {v2}, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;->getFont()Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 71
    iget-object v1, p0, Lcom/amazon/kcp/reader/LargeFontsActivity$1;->val$event:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;

    invoke-virtual {v1}, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;->getEventType()Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;->FONT_DOWNLOAD_SUCCESS:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    if-ne v1, v2, :cond_3

    .line 72
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/LargeFontsActivity$1;->this$0:Lcom/amazon/kcp/reader/LargeFontsActivity;

    invoke-static {v1}, Lcom/amazon/kcp/reader/LargeFontsActivity;->access$000(Lcom/amazon/kcp/reader/LargeFontsActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kcp/reader/LargeFontsActivity;->access$100(Lcom/amazon/kcp/reader/LargeFontsActivity;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 77
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/LargeFontsActivity$1;->this$0:Lcom/amazon/kcp/reader/LargeFontsActivity;

    sget v2, Lcom/amazon/kcp/more/R$string;->accessibility_font_download_complete:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/LargeFontsActivity$1;->this$0:Lcom/amazon/kcp/reader/LargeFontsActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    :cond_3
    return-void
.end method
