.class public Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$NegativeTutorialProvider;
.super Ljava/lang/Object;
.source "BirdsEyeViewPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/ISortableProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NegativeTutorialProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$NegativeTutorialProvider$NegativeJITTutorial;,
        Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$NegativeTutorialProvider$NegativeSlide;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
        "Ljava/util/Collection<",
        "Lcom/amazon/kindle/krx/tutorial/Tutorial;",
        ">;",
        "Lcom/amazon/kindle/krx/tutorial/events/EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final TUTORIAL_DELAY:I = 0x1f4

.field private static final TUTORIAL_PRIORITY:I = 0x3e8


# instance fields
.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$NegativeTutorialProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$1;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$NegativeTutorialProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method

.method private shouldShowTutorial(Lcom/amazon/kindle/krx/tutorial/events/EventType;)Z
    .locals 10

    .line 122
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const-string v1, "nln_negative_tutorial"

    .line 123
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->getLastTutorialVersionShown(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_5

    .line 125
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    .line 130
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->wasShownNLNBrochure()Z

    move-result v3

    .line 131
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilityStateListener()Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/accessibility/AccessibilityStateListener;->isTouchExplorationEnabled()Z

    move-result v4

    .line 132
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v5

    .line 135
    sget-object v6, Lcom/mobipocket/android/drawing/LanguageSet;->LATIN:Lcom/mobipocket/android/drawing/LanguageSet;

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 137
    invoke-interface {v5}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v7

    .line 139
    invoke-interface {v5}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v5

    .line 141
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v8

    .line 142
    sget-object v9, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    if-eq v5, v9, :cond_3

    sget-object v9, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v5, v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-nez v4, :cond_4

    if-eqz v3, :cond_4

    .line 144
    sget-object v3, Lcom/amazon/kindle/krx/tutorial/events/EventType;->CHROME_OPEN:Lcom/amazon/kindle/krx/tutorial/events/EventType;

    invoke-virtual {p1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz v6, :cond_4

    if-nez v7, :cond_4

    if-eqz v5, :cond_4

    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    return v1

    :cond_5
    return v2
.end method


# virtual methods
.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 86
    check-cast p1, Lcom/amazon/kindle/krx/tutorial/events/EventType;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$NegativeTutorialProvider;->get(Lcom/amazon/kindle/krx/tutorial/events/EventType;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/amazon/kindle/krx/tutorial/events/EventType;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/tutorial/events/EventType;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/tutorial/Tutorial;",
            ">;"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$NegativeTutorialProvider;->shouldShowTutorial(Lcom/amazon/kindle/krx/tutorial/events/EventType;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    iget-object v1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$NegativeTutorialProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 110
    new-instance v2, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$NegativeTutorialProvider$NegativeJITTutorial;

    sget v3, Lcom/amazon/kindle/krl/R$string;->nln_negative_jit_text:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$NegativeTutorialProvider$NegativeJITTutorial;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "nln_negative_tutorial"

    .line 112
    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setLastTutorialVersionShown(Ljava/lang/String;I)V

    :cond_0
    return-object p1

    :cond_1
    return-object v0
.end method

.method public getPriority(Lcom/amazon/kindle/krx/tutorial/events/EventType;)I
    .locals 0

    const/16 p1, 0x3e8

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 86
    check-cast p1, Lcom/amazon/kindle/krx/tutorial/events/EventType;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$NegativeTutorialProvider;->getPriority(Lcom/amazon/kindle/krx/tutorial/events/EventType;)I

    move-result p1

    return p1
.end method
