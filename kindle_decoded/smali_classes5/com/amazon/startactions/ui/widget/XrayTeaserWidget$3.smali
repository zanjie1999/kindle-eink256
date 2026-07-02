.class Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3;
.super Ljava/lang/Object;
.source "XrayTeaserWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->queryImagesInBackground(Landroid/view/View;Landroid/view/ViewGroup;Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;

.field final synthetic val$metadata:Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3;->this$0:Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;

    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3;->val$metadata:Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;

    iput-object p3, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3;->val$view:Landroid/view/View;

    iput-object p4, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 318
    new-instance v0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayImagesQuery;

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3;->val$metadata:Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;

    iget-object v1, v1, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;->previewImages:[I

    invoke-direct {v0, v1}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayImagesQuery;-><init>([I)V

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayImagesQuery;->load()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 320
    invoke-static {}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to query image ids from excerpts table"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 325
    :cond_0
    new-instance v1, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3$1;-><init>(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3;Ljava/util/List;)V

    invoke-static {v1}, Lcom/amazon/ea/EndActionsPlugin;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
