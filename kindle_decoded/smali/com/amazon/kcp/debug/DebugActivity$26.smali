.class final Lcom/amazon/kcp/debug/DebugActivity$26;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->getStandAloneCustomColorActionButtonProvider()Lcom/amazon/kindle/krx/providers/IProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1061
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionButton;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 1064
    invoke-static {}, Lcom/amazon/kcp/debug/DebugActivity;->access$900()Lcom/amazon/kcp/debug/TweakColorCombinationActionButton;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1065
    new-instance p1, Lcom/amazon/kcp/debug/TweakColorCombinationActionButton;

    invoke-direct {p1}, Lcom/amazon/kcp/debug/TweakColorCombinationActionButton;-><init>()V

    invoke-static {p1}, Lcom/amazon/kcp/debug/DebugActivity;->access$902(Lcom/amazon/kcp/debug/TweakColorCombinationActionButton;)Lcom/amazon/kcp/debug/TweakColorCombinationActionButton;

    .line 1067
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/DebugActivity;->access$900()Lcom/amazon/kcp/debug/TweakColorCombinationActionButton;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1061
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/debug/DebugActivity$26;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionButton;

    move-result-object p1

    return-object p1
.end method
