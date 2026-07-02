.class final Lcom/amazon/kcp/debug/DebugActivity$27;
.super Ljava/lang/Object;
.source "DebugActivity.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DebugActivity;->getTabletCustomColorActionButtonProvider()Lcom/amazon/kindle/krx/providers/ISortableProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Lcom/amazon/kindle/krx/ui/IButton<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IButton;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 1081
    invoke-static {}, Lcom/amazon/kcp/debug/DebugActivity;->access$900()Lcom/amazon/kcp/debug/TweakColorCombinationActionButton;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1082
    new-instance p1, Lcom/amazon/kcp/debug/TweakColorCombinationActionButton;

    invoke-direct {p1}, Lcom/amazon/kcp/debug/TweakColorCombinationActionButton;-><init>()V

    invoke-static {p1}, Lcom/amazon/kcp/debug/DebugActivity;->access$902(Lcom/amazon/kcp/debug/TweakColorCombinationActionButton;)Lcom/amazon/kcp/debug/TweakColorCombinationActionButton;

    .line 1084
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/DebugActivity;->access$900()Lcom/amazon/kcp/debug/TweakColorCombinationActionButton;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1073
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/debug/DebugActivity$27;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IButton;

    move-result-object p1

    return-object p1
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IBook;)I
    .locals 0

    const/16 p1, 0x2710

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 1073
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/debug/DebugActivity$27;->getPriority(Lcom/amazon/kindle/krx/content/IBook;)I

    move-result p1

    return p1
.end method
