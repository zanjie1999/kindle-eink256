.class public final Lcom/amazon/kindle/krx/content/bookopen/BookOpenDownloadFailureHandler$DefaultImpls;
.super Ljava/lang/Object;
.source "BookOpenDownloadFailureHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/content/bookopen/BookOpenDownloadFailureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static handleFailure(Lcom/amazon/kindle/krx/content/bookopen/BookOpenDownloadFailureHandler;Ljava/lang/String;Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;Landroid/view/View;)V
    .locals 0

    const-string p0, "bookId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "state"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "details"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
