.class public Lcom/amazon/kindle/nln/NlnModeChangeEvent;
.super Ljava/lang/Object;
.source "NlnModeChangeEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;
    }
.end annotation


# instance fields
.field private newMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

.field private type:Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/nln/NonLinearNavigationMode;Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnModeChangeEvent;->newMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    .line 18
    iput-object p2, p0, Lcom/amazon/kindle/nln/NlnModeChangeEvent;->type:Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;

    return-void
.end method


# virtual methods
.method public getNewMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnModeChangeEvent;->newMode:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    return-object v0
.end method

.method public getType()Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnModeChangeEvent;->type:Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
