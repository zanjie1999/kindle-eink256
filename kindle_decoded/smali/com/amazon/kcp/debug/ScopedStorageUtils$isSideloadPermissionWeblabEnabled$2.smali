.class final Lcom/amazon/kcp/debug/ScopedStorageUtils$isSideloadPermissionWeblabEnabled$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ScopedStorageUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/ScopedStorageUtils;-><init>(Lcom/amazon/kcp/application/IKindleObjectFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/ScopedStorageUtils;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/ScopedStorageUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/ScopedStorageUtils$isSideloadPermissionWeblabEnabled$2;->this$0:Lcom/amazon/kcp/debug/ScopedStorageUtils;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/ScopedStorageUtils$isSideloadPermissionWeblabEnabled$2;->invoke()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/debug/ScopedStorageUtils$isSideloadPermissionWeblabEnabled$2;->this$0:Lcom/amazon/kcp/debug/ScopedStorageUtils;

    invoke-static {v0}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->access$getSideloadedPermissionWeblab$p(Lcom/amazon/kcp/debug/ScopedStorageUtils;)Lcom/amazon/kindle/weblab/OnOffWeblab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/weblab/OnOffWeblab;->recordTriggerAndCheckIsOn()Z

    move-result v0

    return v0
.end method
