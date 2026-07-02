.class Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$2;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "AccessibilitySpeaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$2;->this$0:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/String;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$2;->this$0:Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    invoke-static {v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->access$200(Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/foundation/ICallback;

    if-eqz p1, :cond_0

    .line 121
    invoke-interface {p1}, Lcom/amazon/foundation/ICallback;->execute()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    .line 114
    invoke-static {}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when speaking utterance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
