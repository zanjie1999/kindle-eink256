.class public Lcom/amazon/xray/plugin/provider/ThirdPartyXrayButtonProvider;
.super Ljava/lang/Object;
.source "ThirdPartyXrayButtonProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
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


# instance fields
.field private button:Lcom/amazon/xray/plugin/provider/XrayButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionButton;
    .locals 1
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

    monitor-enter p0

    .line 23
    :try_start_0
    iget-object p1, p0, Lcom/amazon/xray/plugin/provider/ThirdPartyXrayButtonProvider;->button:Lcom/amazon/xray/plugin/provider/XrayButton;

    if-nez p1, :cond_0

    .line 24
    new-instance p1, Lcom/amazon/xray/plugin/provider/XrayButton;

    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/amazon/xray/plugin/provider/XrayButton;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/xray/plugin/provider/ThirdPartyXrayButtonProvider;->button:Lcom/amazon/xray/plugin/provider/XrayButton;

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/amazon/xray/plugin/provider/ThirdPartyXrayButtonProvider;->button:Lcom/amazon/xray/plugin/provider/XrayButton;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/xray/plugin/provider/ThirdPartyXrayButtonProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IActionButton;

    move-result-object p1

    return-object p1
.end method
