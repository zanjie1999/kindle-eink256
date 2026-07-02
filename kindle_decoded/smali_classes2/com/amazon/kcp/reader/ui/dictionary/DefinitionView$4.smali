.class Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$4;
.super Ljava/lang/Object;
.source "DefinitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->showDefinitionLoadingIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$4;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$4;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->access$700(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;)V

    .line 569
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$4;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    iget-object v1, v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 571
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$4;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$4;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->start()V

    :cond_0
    return-void
.end method
