.class Lcom/amazon/overlay/translation/SpeakPlayer$2;
.super Ljava/lang/Object;
.source "SpeakPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/overlay/translation/SpeakPlayer;->getStopSpeakCallback()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/overlay/translation/SpeakPlayer;


# direct methods
.method constructor <init>(Lcom/amazon/overlay/translation/SpeakPlayer;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/amazon/overlay/translation/SpeakPlayer$2;->this$0:Lcom/amazon/overlay/translation/SpeakPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 256
    iget-object p1, p0, Lcom/amazon/overlay/translation/SpeakPlayer$2;->this$0:Lcom/amazon/overlay/translation/SpeakPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/overlay/translation/SpeakPlayer;->stop(Z)V

    const-string p1, "PronunciationStop"

    .line 257
    invoke-static {p1}, Lcom/amazon/kcp/reader/InfoCardMetricsManager;->emitMetric(Ljava/lang/String;)V

    return-void
.end method
