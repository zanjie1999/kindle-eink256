.class Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$7;
.super Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
.source "DefinitionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->getFullDefinitionLoadingAnimCallback()Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
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

    .line 654
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$7;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    invoke-direct {p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 657
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$7;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingIndicator:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 658
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 659
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$7;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->fullDefinitionLoadingIndicator:Landroid/widget/ImageView;

    new-instance v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$7$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$7$1;-><init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$7;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
