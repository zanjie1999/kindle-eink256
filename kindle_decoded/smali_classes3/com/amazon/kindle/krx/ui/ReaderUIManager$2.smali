.class Lcom/amazon/kindle/krx/ui/ReaderUIManager$2;
.super Ljava/lang/Object;
.source "ReaderUIManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/ui/ReaderUIManager;-><init>(Lcom/amazon/kcp/reader/IReaderController;Lcom/amazon/android/menu/CustomActionMenuController;Lcom/amazon/kcp/reader/ui/buttons/DefaultCustomSelectionButtonsController;Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kindle/krx/KindleReaderSDK;Lcom/amazon/kindle/krx/ui/PlaySelectionButtonRegistry;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;Lcom/amazon/kcp/reader/ui/HushpuppyUpsellDetector;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/gesture/IGestureHandler;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/ui/ReaderUIManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/ui/ReaderUIManager;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/ReaderUIManager$2;->this$0:Lcom/amazon/kindle/krx/ui/ReaderUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/gesture/IGestureHandler;
    .locals 0

    .line 209
    new-instance p1, Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/contentdecoration/ContentDecorationGestureHandler;-><init>()V

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 206
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/ui/ReaderUIManager$2;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/gesture/IGestureHandler;

    move-result-object p1

    return-object p1
.end method
