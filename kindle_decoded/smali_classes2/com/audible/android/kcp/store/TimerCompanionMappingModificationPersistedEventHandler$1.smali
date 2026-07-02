.class Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler$1;
.super Ljava/lang/Object;
.source "TimerCompanionMappingModificationPersistedEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;


# direct methods
.method constructor <init>(Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler$1;->this$0:Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler$1;->this$0:Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;

    invoke-static {v0}, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->access$000(Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;)Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshSeekBar()V

    .line 67
    iget-object v0, p0, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler$1;->this$0:Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;

    invoke-static {v0}, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->access$000(Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;)Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->closePanels()V

    .line 68
    iget-object v0, p0, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler$1;->this$0:Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;

    invoke-static {v0}, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->access$000(Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;)Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshReaderActionButtons()V

    .line 69
    iget-object v0, p0, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler$1;->this$0:Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;

    invoke-static {v0}, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->access$000(Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;)Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshReaderPanels()V

    .line 70
    iget-object v0, p0, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler$1;->this$0:Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;

    invoke-static {v0}, Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;->access$000(Lcom/audible/android/kcp/store/TimerCompanionMappingModificationPersistedEventHandler;)Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->performPostReaderModeSwitchActions()V

    return-void
.end method
