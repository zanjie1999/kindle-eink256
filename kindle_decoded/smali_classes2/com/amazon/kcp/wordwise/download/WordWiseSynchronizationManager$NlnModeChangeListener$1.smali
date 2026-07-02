.class Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener$1;
.super Ljava/lang/Object;
.source "WordWiseSynchronizationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;->onNlnModeChanged(Lcom/amazon/kindle/nln/NlnModeChangeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener$1;->this$1:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener$1;->this$1:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;

    iget-object v0, v0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;->this$0:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->refreshLineSpacingIfPossible()V

    return-void
.end method
