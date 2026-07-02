.class Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$2;
.super Ljava/lang/Object;
.source "StandaloneFontOptionData.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->inflateDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;

.field final synthetic val$downloadProgress:Landroid/widget/FrameLayout;

.field final synthetic val$downloadView:Landroid/widget/ImageView;

.field final synthetic val$fontInfo:Lcom/amazon/kcp/font/IFontInfo;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;Lcom/amazon/kcp/font/IFontInfo;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$2;->this$0:Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$2;->val$fontInfo:Lcom/amazon/kcp/font/IFontInfo;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$2;->val$downloadView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$2;->val$downloadProgress:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 296
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$2;->this$0:Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->access$100(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$2;->val$fontInfo:Lcom/amazon/kcp/font/IFontInfo;

    invoke-interface {p1}, Lcom/amazon/kcp/font/IFontInfo;->isDefaultFont()Z

    move-result p1

    if-nez p1, :cond_0

    .line 297
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$2;->val$fontInfo:Lcom/amazon/kcp/font/IFontInfo;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->cancelDownloadFontOnDemand(Lcom/amazon/kcp/font/IFontInfo;)V

    .line 298
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$2;->this$0:Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$2;->val$downloadView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$2;->val$downloadProgress:Landroid/widget/FrameLayout;

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->access$400(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    .line 299
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$2;->this$0:Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$2;->val$downloadView:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->access$300(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;Landroid/view/View;)V

    :cond_0
    return-void
.end method
