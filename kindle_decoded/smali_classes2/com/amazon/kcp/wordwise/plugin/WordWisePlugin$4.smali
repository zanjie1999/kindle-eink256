.class Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin$4;
.super Ljava/lang/Object;
.source "WordWisePlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getDecorationSettingsProvider()Lcom/amazon/kindle/krx/providers/IProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# instance fields
.field private provider:Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 320
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin$4;->provider:Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;
    .locals 1

    .line 325
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin$4;->provider:Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;

    if-nez p1, :cond_0

    .line 326
    new-instance p1, Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;

    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {p1, v0}, Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object p1, p0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin$4;->provider:Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin$4;->provider:Lcom/amazon/kcp/reader/ui/WordWiseContentDecorationSettingsProvider;

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 319
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin$4;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/IContentDecorationSettingsProvider;

    move-result-object p1

    return-object p1
.end method
