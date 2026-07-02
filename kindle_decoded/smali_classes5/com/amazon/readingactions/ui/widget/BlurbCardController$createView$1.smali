.class final Lcom/amazon/readingactions/ui/widget/BlurbCardController$createView$1;
.super Ljava/lang/Object;
.source "BlurbCardController.kt"

# interfaces
.implements Lcom/amazon/startactions/storage/ImageDownloader$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/BlurbCardController;->createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $widgetProgramImage:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/BlurbCardController;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$createView$1;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$createView$1;->$widgetProgramImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyImage(Landroid/graphics/Bitmap;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$createView$1;->$widgetProgramImage:Landroid/widget/ImageView;

    sget-object v1, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator;->Companion:Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$createView$1;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getResources$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v2, "resources"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;->getCircularBitmap$default(Lcom/amazon/readingactions/ui/helpers/CircularImageGenerator$Companion;Landroid/graphics/Bitmap;Landroid/content/res/Resources;IIILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$createView$1;->$widgetProgramImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$createView$1;->this$0:Lcom/amazon/readingactions/ui/widget/BlurbCardController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/BlurbCardController;->access$getDef$p(Lcom/amazon/readingactions/ui/widget/BlurbCardController;)Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/readingactions/sidecar/def/widgets/BlurbCardWidgetDef;->getProgramImageAltText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 169
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$createView$1;->$widgetProgramImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/BlurbCardController$createView$1;->$widgetProgramImage:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
