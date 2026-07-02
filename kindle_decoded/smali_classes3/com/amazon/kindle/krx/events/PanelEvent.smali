.class public Lcom/amazon/kindle/krx/events/PanelEvent;
.super Lcom/amazon/kindle/krx/events/AbstractContentEvent;
.source "PanelEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;
    }
.end annotation


# instance fields
.field private final action:Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

.field private final location:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/events/EventStage;Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kindle/krx/events/AbstractContentEvent;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/events/EventStage;Z)V

    .line 42
    iput-object p3, p0, Lcom/amazon/kindle/krx/events/PanelEvent;->location:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    .line 43
    iput-object p4, p0, Lcom/amazon/kindle/krx/events/PanelEvent;->action:Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

    return-void
.end method


# virtual methods
.method public getAction()Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/PanelEvent;->action:Lcom/amazon/kindle/krx/events/PanelEvent$PanelAction;

    return-object v0
.end method

.method public getLocation()Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/PanelEvent;->location:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    return-object v0
.end method
