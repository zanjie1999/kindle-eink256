.class Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordIcsImpl;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"

# interfaces
.implements Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat$AccessibilityRecordImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityRecordIcsImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddedCount(Ljava/lang/Object;)I
    .locals 0

    .line 272
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getAddedCount(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 276
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getBeforeText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 280
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 0

    .line 284
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentItemIndex(Ljava/lang/Object;)I
    .locals 0

    .line 288
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getCurrentItemIndex(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getFromIndex(Ljava/lang/Object;)I
    .locals 0

    .line 292
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getFromIndex(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getItemCount(Ljava/lang/Object;)I
    .locals 0

    .line 296
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getItemCount(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getMaxScrollX(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getMaxScrollY(Ljava/lang/Object;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;
    .locals 0

    .line 310
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getParcelableData(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public getRemovedCount(Ljava/lang/Object;)I
    .locals 0

    .line 314
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getRemovedCount(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getScrollX(Ljava/lang/Object;)I
    .locals 0

    .line 318
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getScrollX(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getScrollY(Ljava/lang/Object;)I
    .locals 0

    .line 322
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getScrollY(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSource(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 326
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getSource(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getText(Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 330
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getText(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getToIndex(Ljava/lang/Object;)I
    .locals 0

    .line 334
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getToIndex(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getWindowId(Ljava/lang/Object;)I
    .locals 0

    .line 338
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->getWindowId(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public isChecked(Ljava/lang/Object;)Z
    .locals 0

    .line 342
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isChecked(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEnabled(Ljava/lang/Object;)Z
    .locals 0

    .line 346
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isEnabled(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isFullScreen(Ljava/lang/Object;)Z
    .locals 0

    .line 350
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isFullScreen(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isPassword(Ljava/lang/Object;)Z
    .locals 0

    .line 354
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isPassword(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isScrollable(Ljava/lang/Object;)Z
    .locals 0

    .line 358
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->isScrollable(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public obtain()Ljava/lang/Object;
    .locals 1

    .line 264
    invoke-static {}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->obtain()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 268
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public recycle(Ljava/lang/Object;)V
    .locals 0

    .line 362
    invoke-static {p1}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->recycle(Ljava/lang/Object;)V

    return-void
.end method

.method public setAddedCount(Ljava/lang/Object;I)V
    .locals 0

    .line 366
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setAddedCount(Ljava/lang/Object;I)V

    return-void
.end method

.method public setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .line 370
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setBeforeText(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setChecked(Ljava/lang/Object;Z)V
    .locals 0

    .line 374
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setChecked(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .line 378
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .line 382
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCurrentItemIndex(Ljava/lang/Object;I)V
    .locals 0

    .line 386
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setCurrentItemIndex(Ljava/lang/Object;I)V

    return-void
.end method

.method public setEnabled(Ljava/lang/Object;Z)V
    .locals 0

    .line 390
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setEnabled(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setFromIndex(Ljava/lang/Object;I)V
    .locals 0

    .line 394
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setFromIndex(Ljava/lang/Object;I)V

    return-void
.end method

.method public setFullScreen(Ljava/lang/Object;Z)V
    .locals 0

    .line 398
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setFullScreen(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setItemCount(Ljava/lang/Object;I)V
    .locals 0

    .line 402
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setItemCount(Ljava/lang/Object;I)V

    return-void
.end method

.method public setMaxScrollX(Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public setMaxScrollY(Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method

.method public setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V
    .locals 0

    .line 416
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setParcelableData(Ljava/lang/Object;Landroid/os/Parcelable;)V

    return-void
.end method

.method public setPassword(Ljava/lang/Object;Z)V
    .locals 0

    .line 420
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setPassword(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setRemovedCount(Ljava/lang/Object;I)V
    .locals 0

    .line 424
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setRemovedCount(Ljava/lang/Object;I)V

    return-void
.end method

.method public setScrollX(Ljava/lang/Object;I)V
    .locals 0

    .line 428
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setScrollX(Ljava/lang/Object;I)V

    return-void
.end method

.method public setScrollY(Ljava/lang/Object;I)V
    .locals 0

    .line 432
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setScrollY(Ljava/lang/Object;I)V

    return-void
.end method

.method public setScrollable(Ljava/lang/Object;Z)V
    .locals 0

    .line 436
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setScrollable(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .line 440
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setSource(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public setToIndex(Ljava/lang/Object;I)V
    .locals 0

    .line 444
    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/view/accessibility/AccessibilityRecordCompatIcs;->setToIndex(Ljava/lang/Object;I)V

    return-void
.end method
