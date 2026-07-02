.class Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$3;
.super Ljava/lang/Object;
.source "AccessibilitySpeaker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakDelayed(Ljava/lang/String;ILcom/amazon/foundation/ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

.field final synthetic val$callback:Lcom/amazon/foundation/ICallback;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;Ljava/lang/String;Lcom/amazon/foundation/ICallback;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$3;->this$0:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    iput-object p2, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$3;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$3;->val$callback:Lcom/amazon/foundation/ICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$3;->this$0:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    invoke-static {v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->access$300(Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$3;->val$text:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$3;->this$0:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    invoke-static {v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->access$300(Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$3;->val$text:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 171
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$3;->this$0:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$3;->val$text:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$3;->val$callback:Lcom/amazon/foundation/ICallback;

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->access$400(Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;Ljava/lang/String;Lcom/amazon/foundation/ICallback;)V

    :cond_0
    return-void
.end method
