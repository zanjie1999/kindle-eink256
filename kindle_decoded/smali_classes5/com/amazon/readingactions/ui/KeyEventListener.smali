.class public final Lcom/amazon/readingactions/ui/KeyEventListener;
.super Ljava/lang/Object;
.source "KeyEventListener.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/KeyEventListener$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeyEventListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyEventListener.kt\ncom/amazon/readingactions/ui/KeyEventListener\n*L\n1#1,63:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/readingactions/ui/KeyEventListener$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private contentContainer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private isRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/ui/KeyEventListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/ui/KeyEventListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/readingactions/ui/KeyEventListener;->Companion:Lcom/amazon/readingactions/ui/KeyEventListener$Companion;

    .line 16
    const-class v0, Lcom/amazon/readingactions/ui/KeyEventListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/readingactions/ui/KeyEventListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/readingactions/ui/KeyEventListener;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/amazon/readingactions/ui/KeyEventListener;->contentContainer:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 48
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/KeyEventListener;->unregister()V

    const/4 p1, 0x0

    return p1

    :cond_1
    if-eqz p1, :cond_2

    .line 53
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v3, 0x43

    if-ne v1, v3, :cond_2

    return v2

    .line 60
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final register(Landroid/view/ViewGroup;)V
    .locals 2

    const-string v0, "contentContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-boolean v0, p0, Lcom/amazon/readingactions/ui/KeyEventListener;->isRegistered:Z

    if-nez v0, :cond_1

    .line 24
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lcom/amazon/readingactions/ui/KeyEventListener;->Companion:Lcom/amazon/readingactions/ui/KeyEventListener$Companion;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/KeyEventListener$Companion;->access$getTAG$p(Lcom/amazon/readingactions/ui/KeyEventListener$Companion;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Registering ReadingActions KeyEvent listener"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/readingactions/ui/KeyEventListener;->contentContainer:Ljava/lang/ref/WeakReference;

    .line 28
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v0, "EndActionsPlugin.sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerKeyEventListener(Lcom/amazon/kindle/krx/reader/IKeyEventListener;)V

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcom/amazon/readingactions/ui/KeyEventListener;->isRegistered:Z

    :cond_1
    return-void
.end method

.method public final unregister()V
    .locals 2

    .line 34
    iget-boolean v0, p0, Lcom/amazon/readingactions/ui/KeyEventListener;->isRegistered:Z

    if-eqz v0, :cond_2

    .line 35
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/amazon/readingactions/ui/KeyEventListener;->Companion:Lcom/amazon/readingactions/ui/KeyEventListener$Companion;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/KeyEventListener$Companion;->access$getTAG$p(Lcom/amazon/readingactions/ui/KeyEventListener$Companion;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unregistering StartActions KeyEvent listener"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/amazon/readingactions/ui/KeyEventListener;->contentContainer:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 39
    :cond_1
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const-string v1, "EndActionsPlugin.sdk"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->unregisterKeyEventListener(Lcom/amazon/kindle/krx/reader/IKeyEventListener;)V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/amazon/readingactions/ui/KeyEventListener;->isRegistered:Z

    :cond_2
    return-void
.end method
