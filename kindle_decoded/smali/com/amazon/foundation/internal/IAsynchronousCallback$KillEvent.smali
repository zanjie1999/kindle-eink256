.class public Lcom/amazon/foundation/internal/IAsynchronousCallback$KillEvent;
.super Ljava/lang/Object;
.source "IAsynchronousCallback.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/foundation/internal/IAsynchronousCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KillEvent"
.end annotation


# instance fields
.field private publisher:Lcom/amazon/foundation/internal/IAsynchronousCallback;


# direct methods
.method public constructor <init>(Lcom/amazon/foundation/internal/IAsynchronousCallback;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/amazon/foundation/internal/IAsynchronousCallback$KillEvent;->publisher:Lcom/amazon/foundation/internal/IAsynchronousCallback;

    return-void
.end method


# virtual methods
.method public getPublisher()Lcom/amazon/foundation/internal/IAsynchronousCallback;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/foundation/internal/IAsynchronousCallback$KillEvent;->publisher:Lcom/amazon/foundation/internal/IAsynchronousCallback;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
