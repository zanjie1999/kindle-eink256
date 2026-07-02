.class public final Lcom/amazon/kedu/flashcards/AccessibilityUtils;
.super Ljava/lang/Object;
.source "AccessibilityUtils.java"


# static fields
.field private static final AMAZON_LOGAN_SERVICE_NAME:Ljava/lang/String; = "com.amazon.logan"

.field private static final GOOGLE_TALKBACK_SERVICE_NAME:Ljava/lang/String; = "com.google.android.marvin.talkback"

.field private static accessibilityManager:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method public static announceActionModeBar(Landroid/app/Activity;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 114
    :cond_0
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->action_mode_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/amazon/kedu/flashcards/R$string;->fc_accessibility_action_mode_bar:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/amazon/kedu/flashcards/AccessibilityUtils;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private static createAccessibilityManger()Z
    .locals 2

    .line 123
    sget-object v0, Lcom/amazon/kedu/flashcards/AccessibilityUtils;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-nez v0, :cond_1

    .line 125
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "accessibility"

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    sput-object v0, Lcom/amazon/kedu/flashcards/AccessibilityUtils;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static isScreenReaderEnabled()Z
    .locals 5

    .line 49
    invoke-static {}, Lcom/amazon/kedu/flashcards/AccessibilityUtils;->createAccessibilityManger()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 55
    :cond_0
    sget-object v0, Lcom/amazon/kedu/flashcards/AccessibilityUtils;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroidx/core/view/accessibility/AccessibilityManagerCompat;->getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 57
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 58
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "com.google.android.marvin.talkback"

    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.amazon.logan"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public static speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V
    .locals 3

    .line 80
    invoke-static {}, Lcom/amazon/kedu/flashcards/AccessibilityUtils;->isScreenReaderEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x4000

    .line 91
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 93
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 94
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    .line 95
    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 96
    invoke-static {v0, p1, v1}, Landroidx/core/view/ViewParentCompat;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    return-void
.end method
