.class Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand$1;
.super Ljava/lang/Object;
.source "AbsSyncCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;->postKill()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand$1;->this$0:Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/internal/commands/CCommand;->kill()V

    return-void
.end method
