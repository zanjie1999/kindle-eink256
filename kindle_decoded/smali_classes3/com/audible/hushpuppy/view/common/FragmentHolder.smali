.class public final Lcom/audible/hushpuppy/view/common/FragmentHolder;
.super Landroid/widget/FrameLayout;
.source "FragmentHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final anchorLocation:Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;

.field private final fragmentTag:Ljava/lang/String;

.field private height:I

.field protected kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final resourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/common/FragmentHolder;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/common/FragmentHolder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    sget-object p1, Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;->START_ACTIONS:Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;

    iput-object p1, p0, Lcom/audible/hushpuppy/view/common/FragmentHolder;->anchorLocation:Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;

    .line 69
    invoke-static {}, Lcom/audible/hushpuppy/dagger/HushpuppyObjectGraph;->getInstance()Lcom/audible/hushpuppy/dagger/HushpuppyComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/audible/hushpuppy/dagger/HushpuppyComponent;->inject(Lcom/audible/hushpuppy/view/common/FragmentHolder;)V

    .line 70
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getId()I

    move-result p1

    iput p1, p0, Lcom/audible/hushpuppy/view/common/FragmentHolder;->resourceId:I

    .line 74
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/FragmentHolder;->anchorLocation:Lcom/audible/hushpuppy/view/common/FragmentHolder$AnchorLocation;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const-string v0, "FragmentHolder%s%d"

    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/view/common/FragmentHolder;->fragmentTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public changeFragment(Ljava/lang/Class;)V
    .locals 5

    .line 83
    :try_start_0
    sget-object v0, Lcom/audible/hushpuppy/view/common/FragmentHolder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Changing fragment to %s"

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 86
    iget-object v1, p0, Lcom/audible/hushpuppy/view/common/FragmentHolder;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    .line 87
    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/audible/hushpuppy/view/common/FragmentHolder;->fragmentTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 91
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 94
    iget p1, p0, Lcom/audible/hushpuppy/view/common/FragmentHolder;->resourceId:I

    iget-object v4, p0, Lcom/audible/hushpuppy/view/common/FragmentHolder;->fragmentTag:Ljava/lang/String;

    invoke-virtual {v3, p1, v0, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 95
    invoke-virtual {v3, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const/16 p1, 0x1003

    .line 96
    invoke-virtual {v3, p1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 97
    sget-object p1, Lcom/audible/hushpuppy/view/common/FragmentHolder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment was replaced by "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_0
    iget p1, p0, Lcom/audible/hushpuppy/view/common/FragmentHolder;->resourceId:I

    iget-object v2, p0, Lcom/audible/hushpuppy/view/common/FragmentHolder;->fragmentTag:Ljava/lang/String;

    invoke-virtual {v3, p1, v0, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 101
    sget-object p1, Lcom/audible/hushpuppy/view/common/FragmentHolder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New fragment added: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 103
    :cond_1
    :goto_0
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 104
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_1

    .line 106
    :cond_2
    sget-object p1, Lcom/audible/hushpuppy/view/common/FragmentHolder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Activity is null, unable to change fragments"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 109
    sget-object v0, Lcom/audible/hushpuppy/view/common/FragmentHolder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Exception switching fragments"

    invoke-interface {v0, v1, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public clearFragment()V
    .locals 4

    .line 118
    :try_start_0
    sget-object v0, Lcom/audible/hushpuppy/view/common/FragmentHolder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Clearing out current fragment"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/FragmentHolder;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/audible/hushpuppy/view/common/FragmentHolder;->fragmentTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 126
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 127
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 128
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 129
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 130
    sget-object v0, Lcom/audible/hushpuppy/view/common/FragmentHolder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Old fragment cleared: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/view/common/FragmentHolder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Activity is null, unable to clear fragment"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 136
    sget-object v1, Lcom/audible/hushpuppy/view/common/FragmentHolder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v2, "Exception switching fragments"

    invoke-interface {v1, v2, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public refresh()V
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/FragmentHolder;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    .line 145
    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 146
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/audible/hushpuppy/view/common/FragmentHolder;->fragmentTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/audible/hushpuppy/view/common/EventDrivenFragment;

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v1}, Lcom/audible/hushpuppy/view/common/EventDrivenFragment;->refresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 154
    sget-object v2, Lcom/audible/hushpuppy/view/common/FragmentHolder;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Exception casting fragments"

    invoke-interface {v2, v3, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/view/common/FragmentHolder;->fragmentTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/audible/hushpuppy/view/common/WebViewFragment;

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v0}, Lcom/audible/hushpuppy/view/common/WebViewFragment;->refresh()V

    :cond_1
    return-void
.end method
