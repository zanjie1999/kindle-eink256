.class public Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelListener;
.super Lcom/amazon/kindle/panels/PanelListener;
.source "KRXPanelProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KRXPanelListener"
.end annotation


# instance fields
.field private bookId:Ljava/lang/String;

.field private location:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/amazon/kindle/panels/PanelListener;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelListener;->bookId:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelListener;->location:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    return-void
.end method


# virtual methods
.method public onClosed()V
    .locals 6

    .line 106
    invoke-static {}, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory;->access$000()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/events/PanelEvent;

    iget-object v2, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelListener;->bookId:Ljava/lang/String;

    sget-object v3, Lcom/amazon/kindle/krx/events/EventStage;->End:Lcom/amazon/kindle/krx/events/EventStage;

    iget-object v4, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelListener;->location:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    sget-object v5, Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;->CLOSE:Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/kindle/krx/events/PanelEvent;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/events/EventStage;Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onClosing()V
    .locals 6

    .line 100
    invoke-static {}, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory;->access$000()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/events/PanelEvent;

    iget-object v2, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelListener;->bookId:Ljava/lang/String;

    sget-object v3, Lcom/amazon/kindle/krx/events/EventStage;->Start:Lcom/amazon/kindle/krx/events/EventStage;

    iget-object v4, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelListener;->location:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    sget-object v5, Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;->CLOSE:Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/kindle/krx/events/PanelEvent;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/events/EventStage;Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onOpened()V
    .locals 6

    .line 118
    invoke-static {}, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory;->access$000()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/events/PanelEvent;

    iget-object v2, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelListener;->bookId:Ljava/lang/String;

    sget-object v3, Lcom/amazon/kindle/krx/events/EventStage;->End:Lcom/amazon/kindle/krx/events/EventStage;

    iget-object v4, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelListener;->location:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    sget-object v5, Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;->OPEN:Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/kindle/krx/events/PanelEvent;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/events/EventStage;Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onOpening()V
    .locals 6

    .line 112
    invoke-static {}, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory;->access$000()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/events/PanelEvent;

    iget-object v2, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelListener;->bookId:Ljava/lang/String;

    sget-object v3, Lcom/amazon/kindle/krx/events/EventStage;->Start:Lcom/amazon/kindle/krx/events/EventStage;

    iget-object v4, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelListener;->location:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    sget-object v5, Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;->OPEN:Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/kindle/krx/events/PanelEvent;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/events/EventStage;Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onPeeked()V
    .locals 6

    .line 130
    invoke-static {}, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory;->access$000()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/events/PanelEvent;

    iget-object v2, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelListener;->bookId:Ljava/lang/String;

    sget-object v3, Lcom/amazon/kindle/krx/events/EventStage;->End:Lcom/amazon/kindle/krx/events/EventStage;

    iget-object v4, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelListener;->location:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    sget-object v5, Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;->PEEK:Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/kindle/krx/events/PanelEvent;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/events/EventStage;Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onPeeking()V
    .locals 6

    .line 124
    invoke-static {}, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory;->access$000()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/events/PanelEvent;

    iget-object v2, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelListener;->bookId:Ljava/lang/String;

    sget-object v3, Lcom/amazon/kindle/krx/events/EventStage;->Start:Lcom/amazon/kindle/krx/events/EventStage;

    iget-object v4, p0, Lcom/amazon/kindle/krx/ui/panel/KRXPanelProviderFactory$KRXPanelListener;->location:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    sget-object v5, Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;->PEEK:Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/kindle/krx/events/PanelEvent;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/events/EventStage;Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
