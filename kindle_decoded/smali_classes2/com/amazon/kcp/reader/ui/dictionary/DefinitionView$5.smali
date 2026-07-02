.class Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$5;
.super Ljava/lang/Object;
.source "DefinitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->hideDefinitionLoadingIndicatorIfNeeded()V
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

    .line 579
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$5;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 582
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$5;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->stop()V

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$5;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 587
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
