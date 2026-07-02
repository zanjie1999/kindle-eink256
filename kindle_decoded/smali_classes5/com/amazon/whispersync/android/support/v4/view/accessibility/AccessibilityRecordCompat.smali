.class public Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;,
        Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;,
        Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;


# instance fields
.field private final mRecord:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 449
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 450
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    goto :goto_0

    .line 452
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordStubImpl;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    return-void
.end method

.method public static obtain()Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;
    .locals 2

    .line 492
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;

    sget-object v1, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    invoke-interface {v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->obtain()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static obtain(Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;)Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;
    .locals 2

    .line 482
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;

    sget-object v1, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object p0, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, p0}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 946
    :cond_1
    const-class v2, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 949
    :cond_2
    check-cast p1, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;

    .line 950
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 951
    iget-object p1, p1, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    if-eqz p1, :cond_4

    return v1

    .line 954
    :cond_3
    iget-object p1, p1, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getAddedCount()I
    .locals 2

    .line 795
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getAddedCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getBeforeText()Ljava/lang/CharSequence;
    .locals 2

    .line 865
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .locals 2

    .line 835
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 2

    .line 885
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentItemIndex()I
    .locals 2

    .line 657
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getCurrentItemIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getFromIndex()I
    .locals 2

    .line 680
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getFromIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getImpl()Ljava/lang/Object;
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 637
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getItemCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .locals 2

    .line 905
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedCount()I
    .locals 2

    .line 815
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getRemovedCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getScrollX()I
    .locals 2

    .line 723
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getScrollX(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getScrollY()I
    .locals 2

    .line 741
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getScrollY(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSource()Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3

    .line 519
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    sget-object v1, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getSource(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getText()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 856
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getText(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToIndex()I
    .locals 2

    .line 704
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getToIndex(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getWindowId()I
    .locals 2

    .line 528
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->getWindowId(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isChecked()Z
    .locals 2

    .line 537
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->isChecked(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 2

    .line 557
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFullScreen()Z
    .locals 2

    .line 597
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->isFullScreen(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .locals 2

    .line 577
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->isPassword(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .locals 2

    .line 617
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->isScrollable(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 2

    .line 929
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->recycle(Ljava/lang/Object;)V

    return-void
.end method

.method public setAddedCount(I)V
    .locals 2

    .line 806
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setAddedCount(Ljava/lang/Object;I)V

    return-void
.end method

.method public setBeforeText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 876
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 548
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setChecked(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .locals 2

    .line 846
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 2

    .line 896
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCurrentItemIndex(I)V
    .locals 2

    .line 668
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setCurrentItemIndex(Ljava/lang/Object;I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 568
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setEnabled(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setFromIndex(I)V
    .locals 2

    .line 694
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setFromIndex(Ljava/lang/Object;I)V

    return-void
.end method

.method public setFullScreen(Z)V
    .locals 2

    .line 608
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setFullScreen(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setItemCount(I)V
    .locals 2

    .line 648
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setItemCount(Ljava/lang/Object;I)V

    return-void
.end method

.method public setParcelableData(Landroid/os/Parcelable;)V
    .locals 2

    .line 916
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V

    return-void
.end method

.method public setPassword(Z)V
    .locals 2

    .line 588
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setPassword(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setRemovedCount(I)V
    .locals 2

    .line 826
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setRemovedCount(Ljava/lang/Object;I)V

    return-void
.end method

.method public setScrollX(I)V
    .locals 2

    .line 732
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setScrollX(Ljava/lang/Object;I)V

    return-void
.end method

.method public setScrollY(I)V
    .locals 2

    .line 750
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setScrollY(Ljava/lang/Object;I)V

    return-void
.end method

.method public setScrollable(Z)V
    .locals 2

    .line 628
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setScrollable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .locals 2

    .line 503
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setSource(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public setToIndex(I)V
    .locals 2

    .line 714
    sget-object v0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->IMPL:Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;->mRecord:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;->setToIndex(Ljava/lang/Object;I)V

    return-void
.end method
