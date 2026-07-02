.class Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker$1;
.super Ljava/lang/Object;
.source "WordWiseSpeaker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->speak(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;

.field final synthetic val$word:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker$1;->this$0:Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;

    iput-object p2, p0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker$1;->val$word:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker$1;->this$0:Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->access$000(Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker$1;->this$0:Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->access$000(Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker$1;->val$word:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 59
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to speak the word"

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
