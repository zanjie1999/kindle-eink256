.class public Lcom/amazon/kindle/krx/events/UIEvent;
.super Ljava/lang/Object;
.source "UIEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/events/UIEvent$UIElement;
    }
.end annotation


# instance fields
.field private element:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

.field private visible:Z


# direct methods
.method public constructor <init>(ZLcom/amazon/kindle/krx/events/UIEvent$UIElement;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean p1, p0, Lcom/amazon/kindle/krx/events/UIEvent;->visible:Z

    .line 52
    iput-object p2, p0, Lcom/amazon/kindle/krx/events/UIEvent;->element:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    return-void
.end method


# virtual methods
.method public getElement()Lcom/amazon/kindle/krx/events/UIEvent$UIElement;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/UIEvent;->element:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    return-object v0
.end method

.method public getUIElement()Lcom/amazon/kindle/krx/events/UIEvent$UIElement;
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/krx/events/UIEvent;->element:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    sget-object v1, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->VIEW_OPTIONS:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    if-ne v0, v1, :cond_0

    .line 74
    sget-object v0, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->ViewOptions:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    :cond_0
    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/amazon/kindle/krx/events/UIEvent;->visible:Z

    return v0
.end method
