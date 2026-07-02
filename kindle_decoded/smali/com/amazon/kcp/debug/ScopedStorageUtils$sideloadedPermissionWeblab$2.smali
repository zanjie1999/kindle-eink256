.class final Lcom/amazon/kcp/debug/ScopedStorageUtils$sideloadedPermissionWeblab$2;
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
        "Lcom/amazon/kindle/weblab/OnOffWeblab;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/ScopedStorageUtils;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/ScopedStorageUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/ScopedStorageUtils$sideloadedPermissionWeblab$2;->this$0:Lcom/amazon/kcp/debug/ScopedStorageUtils;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/weblab/OnOffWeblab;
    .locals 3

    .line 48
    new-instance v0, Lcom/amazon/kindle/weblab/OnOffWeblab;

    iget-object v1, p0, Lcom/amazon/kcp/debug/ScopedStorageUtils$sideloadedPermissionWeblab$2;->this$0:Lcom/amazon/kcp/debug/ScopedStorageUtils;

    invoke-virtual {v1}, Lcom/amazon/kcp/debug/ScopedStorageUtils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "KINDLE_ANDROID_APPCORE_SIDELOADED_PERMISSION_CHANGES_366117"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/weblab/OnOffWeblab;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/amazon/kcp/debug/ScopedStorageUtils$sideloadedPermissionWeblab$2;->invoke()Lcom/amazon/kindle/weblab/OnOffWeblab;

    move-result-object v0

    return-object v0
.end method
