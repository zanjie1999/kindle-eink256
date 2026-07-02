.class public final Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager$DefaultImpls;
.super Ljava/lang/Object;
.source "BookOpenManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static open(Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;Lcom/amazon/kindle/krx/content/IBook;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    const-string p0, "book"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "source"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "clientId"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static open(Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;Lcom/amazon/kindle/krx/content/IBook;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;)V
    .locals 0

    const-string p0, "book"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "source"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "clientId"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pattern"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static open(Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;Lcom/amazon/kindle/krx/content/IBook;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;Ljava/lang/Integer;)V
    .locals 0

    const-string p0, "book"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "source"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "clientId"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pattern"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static open(Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    const-string p0, "bookId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "source"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "clientId"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static open(Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;)V
    .locals 0

    const-string p0, "bookId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "source"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "clientId"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "pattern"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
