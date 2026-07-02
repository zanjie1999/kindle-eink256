.class Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailLayout;
.super Landroid/widget/RelativeLayout;
.source "ThumbnailScrubber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;Landroid/content/Context;)V
    .locals 0

    .line 1121
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailLayout;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    .line 1122
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 5

    .line 1127
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 1128
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/ThumbnailSelectableView;

    .line 1129
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailLayout;->getPageLabelView()Landroid/widget/TextView;

    move-result-object v2

    .line 1131
    instance-of v3, v1, Lcom/amazon/kcp/reader/ui/ThumbnailSelectableView;

    if-eqz v3, :cond_1

    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 1132
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1133
    invoke-static {v2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1135
    :try_start_0
    invoke-static {v2}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->parseRomanNumber(Ljava/lang/String;)Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;

    move-result-object v3

    .line 1136
    invoke-virtual {v3}, Lcom/amazon/kcp/sidecar/pagenumbers/pagelabels/RomanNumber;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 1143
    :goto_0
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ThumbnailSelectableView;->isThumbnailSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/amazon/kindle/krl/R$string;->thumbnail_scrubber_current_page:I

    goto :goto_1

    :cond_0
    sget v1, Lcom/amazon/kindle/krl/R$string;->thumbnail_scrubber_page:I

    .line 1145
    :goto_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    .line 1146
    invoke-virtual {v3, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1145
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageLabelView()Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x1

    .line 1154
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1159
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1160
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber$ThumbnailLayout;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;->access$1200(Lcom/amazon/kcp/reader/ui/ThumbnailScrubber;Z)V

    return-void
.end method
