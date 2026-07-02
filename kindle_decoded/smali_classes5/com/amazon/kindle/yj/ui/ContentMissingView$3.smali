.class Lcom/amazon/kindle/yj/ui/ContentMissingView$3;
.super Ljava/lang/Object;
.source "ContentMissingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/yj/ui/ContentMissingView;->changeViewVisibility(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/amazon/kindle/yj/ui/ContentMissingView;I)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$3;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    iput p2, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$3;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$3;->this$0:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    iget v1, p0, Lcom/amazon/kindle/yj/ui/ContentMissingView$3;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
