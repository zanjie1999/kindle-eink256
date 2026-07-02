.class Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;
.super Ljava/lang/Object;
.source "StandaloneFontOptionData.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

.field final synthetic val$statusView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;Lcom/amazon/kcp/font/IFontInfo;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->this$0:Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->val$fontInfo:Lcom/amazon/kcp/font/IFontInfo;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->val$downloadView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->val$downloadProgress:Landroid/widget/FrameLayout;

    iput-object p5, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->val$statusView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 271
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_2

    .line 272
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->this$0:Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->val$fontInfo:Lcom/amazon/kcp/font/IFontInfo;

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->access$000(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;Lcom/amazon/kcp/font/IFontInfo;)V

    .line 274
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->this$0:Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->access$100(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 275
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->val$fontInfo:Lcom/amazon/kcp/font/IFontInfo;

    invoke-interface {p1}, Lcom/amazon/kcp/font/IFontInfo;->isDownloading()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 276
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->this$0:Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->val$downloadView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->val$downloadProgress:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->val$fontInfo:Lcom/amazon/kcp/font/IFontInfo;

    invoke-interface {v2}, Lcom/amazon/kcp/font/IFontInfo;->isDefaultFont()Z

    move-result v2

    xor-int/2addr v2, p2

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->access$200(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Z)V

    .line 277
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->this$0:Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->val$downloadProgress:Landroid/widget/FrameLayout;

    sget v1, Lcom/amazon/kindle/thirdparty/R$id;->view_options_drop_down_progress_bar:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->access$300(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;Landroid/view/View;)V

    goto :goto_0

    .line 279
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->this$0:Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->val$downloadView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->val$downloadProgress:Landroid/widget/FrameLayout;

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->access$400(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    .line 281
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->val$statusView:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->this$0:Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->val$fontInfo:Lcom/amazon/kcp/font/IFontInfo;

    invoke-interface {v0}, Lcom/amazon/kcp/font/IFontInfo;->getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->access$500(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;Lcom/mobipocket/android/drawing/FontFamily;)V

    goto :goto_1

    .line 284
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->this$0:Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->val$downloadView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->val$downloadProgress:Landroid/widget/FrameLayout;

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->access$400(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V

    .line 285
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->val$downloadView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->val$statusView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$1;->val$fontInfo:Lcom/amazon/kcp/font/IFontInfo;

    invoke-interface {v0}, Lcom/amazon/kcp/font/IFontInfo;->getDownloadStatusStringId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_1
    return p2
.end method
