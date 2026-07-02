.class Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$1;
.super Ljava/lang/Object;
.source "WordWiseDecorationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->onContentDecorationEvent(Lcom/amazon/kindle/krx/events/ContentDecorationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;

.field final synthetic val$event:Lcom/amazon/kindle/krx/events/ContentDecorationEvent;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;Lcom/amazon/kindle/krx/events/ContentDecorationEvent;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$1;->val$event:Lcom/amazon/kindle/krx/events/ContentDecorationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookSelection()Lcom/amazon/kindle/krx/content/IContentSelection;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$1;->val$event:Lcom/amazon/kindle/krx/events/ContentDecorationEvent;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;->getStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseDecorationProvider$1;->val$event:Lcom/amazon/kindle/krx/events/ContentDecorationEvent;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/events/ContentDecorationEvent;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->TEXT_NON_EDITABLE:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/content/IContentSelection;->setSelection(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;)V

    return-void
.end method
