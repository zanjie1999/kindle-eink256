.class public Lcom/amazon/sitb/android/transition/FullBookTransition;
.super Lcom/amazon/sitb/android/transition/Transition;
.source "FullBookTransition.java"


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/sitb/android/transition/TransitionManager;Landroid/widget/Toast;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/amazon/sitb/android/transition/Transition;-><init>(Lcom/amazon/kindle/krx/reader/IReaderManager;Lcom/amazon/sitb/android/transition/TransitionManager;Landroid/widget/Toast;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;)V

    return-void
.end method
