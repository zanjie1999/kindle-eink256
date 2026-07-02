.class public abstract Lcom/amazon/kindle/krx/ui/InfoCardProvider;
.super Ljava/lang/Object;
.source "InfoCardProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/ui/InfoCardProvider$InflateCardViewRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Lcom/amazon/kindle/krx/ui/InfoCardView;",
        "Lcom/amazon/kindle/krx/content/IContentSelection;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InfoCardProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kindle/krx/ui/InfoCardProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/krx/IKindleReaderSDK;I)Landroid/view/View;
    .locals 0

    .line 22
    invoke-static {p0, p1}, Lcom/amazon/kindle/krx/ui/InfoCardProvider;->doInflateCardView(Lcom/amazon/kindle/krx/IKindleReaderSDK;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static doInflateCardView(Lcom/amazon/kindle/krx/IKindleReaderSDK;I)Landroid/view/View;
    .locals 2

    .line 111
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 116
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    const-string p0, "layout_inflater"

    .line 118
    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static inflateCardView(Lcom/amazon/kindle/krx/IKindleReaderSDK;I)Landroid/view/View;
    .locals 1

    .line 88
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThreadPoolManager()Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {p0, p1}, Lcom/amazon/kindle/krx/ui/InfoCardProvider;->doInflateCardView(Lcom/amazon/kindle/krx/IKindleReaderSDK;I)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 93
    :cond_0
    new-instance v0, Lcom/amazon/kindle/krx/ui/InfoCardProvider$InflateCardViewRunnable;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/krx/ui/InfoCardProvider$InflateCardViewRunnable;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;I)V

    .line 94
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThreadPoolManager()Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    .line 95
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/ui/InfoCardProvider$InflateCardViewRunnable;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
