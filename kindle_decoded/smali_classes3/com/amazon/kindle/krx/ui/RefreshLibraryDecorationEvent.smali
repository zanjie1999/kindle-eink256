.class public Lcom/amazon/kindle/krx/ui/RefreshLibraryDecorationEvent;
.super Ljava/lang/Object;
.source "RefreshLibraryDecorationEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private position:Lcom/amazon/kindle/krx/ui/DecorationPosition;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/ui/DecorationPosition;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/RefreshLibraryDecorationEvent;->position:Lcom/amazon/kindle/krx/ui/DecorationPosition;

    return-void
.end method


# virtual methods
.method public getPosition()Lcom/amazon/kindle/krx/ui/DecorationPosition;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/RefreshLibraryDecorationEvent;->position:Lcom/amazon/kindle/krx/ui/DecorationPosition;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
