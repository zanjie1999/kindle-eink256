.class Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontsListener;
.super Ljava/lang/Object;
.source "LargeFontAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/LargeFontAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LargeFontsListener"
.end annotation


# instance fields
.field private fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

.field private viewHolder:Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/LargeFontAdapter;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p2, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontsListener;->fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    .line 210
    iput-object p3, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontsListener;->viewHolder:Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 215
    iget-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontsListener;->fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDownloaded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontsListener;->fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->getDownloadableFont()Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->isSupportDeletion()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 217
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontsListener;->fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->deleteFontOnDemand(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    .line 218
    iget-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontsListener;->viewHolder:Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;

    iget-object v0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontsListener;->fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->setFontStateToNeedDownload(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    .line 219
    iget-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontsListener;->viewHolder:Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->speakFontStateForAccessibility()V

    goto :goto_0

    .line 221
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontsListener;->fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDownloading()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 222
    iget-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontsListener;->fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDefaultFont()Z

    move-result p1

    if-nez p1, :cond_2

    .line 223
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontsListener;->fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->cancelDownloadFontOnDemand(Lcom/amazon/kcp/font/IFontInfo;)V

    .line 224
    iget-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontsListener;->viewHolder:Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;

    iget-object v0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontsListener;->fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->setFontStateToNeedDownload(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    .line 225
    iget-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontsListener;->viewHolder:Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->speakFontStateForAccessibility()V

    goto :goto_0

    .line 228
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontsListener;->fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->downloadFontManuallyIfNeeds(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;Ljava/lang/String;)V

    .line 229
    iget-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontsListener;->viewHolder:Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;

    iget-object v0, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontsListener;->fontInfo:Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->setFontStateToDownloading(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V

    .line 230
    iget-object p1, p0, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontsListener;->viewHolder:Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/LargeFontAdapter$LargeFontViewHolder;->speakFontStateForAccessibility()V

    :cond_2
    :goto_0
    return-void
.end method
