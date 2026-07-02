.class Lcom/amazon/kindle/yj/ui/ContentMissingViewController$2;
.super Ljava/lang/Object;
.source "ContentMissingViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->changeViewVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/yj/ui/ContentMissingViewController;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;I)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController$2;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingViewController;

    iput p2, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController$2;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController$2;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingViewController;

    invoke-static {v0}, Lcom/amazon/kindle/yj/ui/ContentMissingViewController;->access$000(Lcom/amazon/kindle/yj/ui/ContentMissingViewController;)Lcom/amazon/kindle/yj/ui/ContentMissingView;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingViewController$2;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
