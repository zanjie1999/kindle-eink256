.class Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3$1;
.super Ljava/lang/Object;
.source "XrayTeaserWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3;

.field final synthetic val$imageIds:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3;Ljava/util/List;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3$1;->this$1:Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3;

    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3$1;->val$imageIds:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 328
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3$1;->this$1:Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3;

    iget-object v1, v0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3;->this$0:Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;

    iget-object v2, v0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3;->val$view:Landroid/view/View;

    iget-object v3, v0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3;->val$parent:Landroid/view/ViewGroup;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3;->val$metadata:Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$XrayMetadataQuery$Result;->previewImages:[I

    iget-object v4, p0, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget$3$1;->val$imageIds:Ljava/util/List;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;->access$100(Lcom/amazon/startactions/ui/widget/XrayTeaserWidget;Landroid/view/View;Landroid/view/ViewGroup;[ILjava/util/List;)V

    return-void
.end method
