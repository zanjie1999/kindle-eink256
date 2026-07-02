.class Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$6$1;
.super Ljava/lang/Object;
.source "DefinitionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$6;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$6;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$6;)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$6$1;->this$1:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$6$1;->this$1:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$6;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView$6;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionView;->definitionLoadingDrawable:Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {v0}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->start()V

    :cond_0
    return-void
.end method
