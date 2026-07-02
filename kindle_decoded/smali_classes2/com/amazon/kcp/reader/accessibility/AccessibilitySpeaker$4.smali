.class Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$4;
.super Ljava/lang/Object;
.source "AccessibilitySpeaker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkbackDelayed(Ljava/lang/CharSequence;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

.field final synthetic val$text:Ljava/lang/CharSequence;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;Ljava/lang/CharSequence;Landroid/view/View;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$4;->this$0:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    iput-object p2, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$4;->val$text:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$4;->this$0:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    invoke-static {v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->access$300(Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$4;->val$text:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$4;->this$0:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    invoke-static {v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->access$300(Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$4;->val$text:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$4;->this$0:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$4;->val$text:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$4;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    :cond_0
    return-void
.end method
