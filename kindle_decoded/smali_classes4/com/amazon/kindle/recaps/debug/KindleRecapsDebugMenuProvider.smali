.class public final Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenuProvider;
.super Ljava/lang/Object;
.source "KindleRecapsDebugMenu.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final debugConfig:Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;)V
    .locals 1

    const-string v0, "debugConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenuProvider;->debugConfig:Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;

    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu;

    iget-object v1, p0, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenuProvider;->debugConfig:Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenu;-><init>(Landroid/content/Context;Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugConfig;)V

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/recaps/debug/KindleRecapsDebugMenuProvider;->get(Landroid/content/Context;)Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;

    move-result-object p1

    return-object p1
.end method
