.class public abstract Lcom/amazon/kcp/application/internal/commands/CCommand;
.super Lcom/amazon/foundation/internal/CAsynchronousCallback;
.source "CCommand.java"

# interfaces
.implements Lcom/amazon/kcp/application/internal/ICommand;


# instance fields
.field private isThrottled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/amazon/foundation/internal/CAsynchronousCallback;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/amazon/kcp/application/internal/commands/CCommand;->isThrottled:Z

    return-void
.end method


# virtual methods
.method public kill()V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lcom/amazon/foundation/internal/CAsynchronousCallback;->notifyKillEvent()V

    return-void
.end method
