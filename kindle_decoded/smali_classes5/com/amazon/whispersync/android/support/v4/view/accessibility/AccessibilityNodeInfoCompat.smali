.class public Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;,
        Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;,
        Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
    }
.end annotation


# static fields
.field public static final ACTION_CLEAR_FOCUS:I = 0x2

.field public static final ACTION_CLEAR_SELECTION:I = 0x8

.field public static final ACTION_FOCUS:I = 0x1

.field public static final ACTION_SELECT:I = 0x4

.field private static final IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;


# instance fields
.field private final mInfo:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 511
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 512
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    goto :goto_0

    .line 514
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    return-object v0
.end method

.method public static obtain()Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2

    .line 577
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    sget-object v1, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    invoke-interface {v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->obtain()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static obtain(Landroid/view/View;)Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2

    .line 568
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    sget-object v1, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    invoke-interface {v1, p0}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->obtain(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static obtain(Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2

    .line 588
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    sget-object v1, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object p0, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, p0}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public addAction(I)V
    .locals 2

    .line 675
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->addAction(Ljava/lang/Object;I)V

    return-void
.end method

.method public addChild(Landroid/view/View;)V
    .locals 2

    .line 647
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->addChild(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1155
    :cond_1
    const-class v2, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 1158
    :cond_2
    check-cast p1, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1159
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 1160
    iget-object p1, p1, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    if-eqz p1, :cond_4

    return v1

    .line 1163
    :cond_3
    iget-object p1, p1, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    .line 708
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 709
    sget-object v1, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 710
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 712
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 713
    new-instance v4, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v4, v3}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getActions()I
    .locals 2

    .line 660
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getActions(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getBoundsInParent(Landroid/graphics/Rect;)V
    .locals 2

    .line 753
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 2

    .line 777
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getChild(I)Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3

    .line 632
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    sget-object v1, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getChild(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getChildCount()I
    .locals 2

    .line 615
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getChildCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .locals 2

    .line 1065
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 2

    .line 1113
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getImpl()Ljava/lang/Object;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .locals 2

    .line 1041
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3

    .line 729
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    sget-object v1, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getParent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2

    .line 1089
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getWindowId()I
    .locals 2

    .line 606
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getWindowId(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1144
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .line 801
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isCheckable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 2

    .line 825
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isChecked(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isClickable()Z
    .locals 2

    .line 921
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isClickable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 2

    .line 969
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFocusable()Z
    .locals 2

    .line 849
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isFocusable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .locals 2

    .line 873
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isFocused(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLongClickable()Z
    .locals 2

    .line 945
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isLongClickable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .locals 2

    .line 993
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isPassword(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .locals 2

    .line 1017
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isScrollable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSelected()Z
    .locals 2

    .line 897
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isSelected(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public performAction(I)Z
    .locals 2

    .line 691
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->performAction(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public recycle()V
    .locals 2

    .line 1139
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->recycle(Ljava/lang/Object;)V

    return-void
.end method

.method public setBoundsInParent(Landroid/graphics/Rect;)V
    .locals 2

    .line 768
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 2

    .line 792
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 2

    .line 816
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setCheckable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 840
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setChecked(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1080
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setClickable(Z)V
    .locals 2

    .line 936
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setClickable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1128
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 984
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setEnabled(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setFocusable(Z)V
    .locals 2

    .line 864
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setFocusable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setFocused(Z)V
    .locals 2

    .line 888
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setFocused(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setLongClickable(Z)V
    .locals 2

    .line 960
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setLongClickable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setPackageName(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1056
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .locals 2

    .line 744
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setParent(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public setPassword(Z)V
    .locals 2

    .line 1008
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setPassword(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setScrollable(Z)V
    .locals 2

    .line 1032
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setScrollable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .line 912
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setSelected(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .locals 2

    .line 597
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setSource(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1104
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method
