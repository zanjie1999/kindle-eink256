.class Lcom/amazon/kindle/yj/ui/ContentMissingView$4;
.super Ljava/lang/Object;
.source "ContentMissingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/yj/ui/ContentMissingView;->setRetryListener(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

.field final synthetic val$contentMissingViewController:Lcom/amazon/kindle/yj/ui/ContentMissingViewController;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/yj/ui/ContentMissingView;Lcom/amazon/kindle/yj/ui/ContentMissingViewController;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$4;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    iput-object p2, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$4;->val$contentMissingViewController:Lcom/amazon/kindle/yj/ui/ContentMissingViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 236
    iget-object p1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$4;->val$contentMissingViewController:Lcom/amazon/kindle/yj/ui/ContentMissingViewController;

    invoke-virtual {p1}, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->retryDownload()V

    return-void
.end method
