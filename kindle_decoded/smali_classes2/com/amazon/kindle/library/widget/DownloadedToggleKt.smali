.class public final Lcom/amazon/kindle/library/widget/DownloadedToggleKt;
.super Ljava/lang/Object;
.source "DownloadedToggle.kt"


# static fields
.field private static final ALL_BUTTON_ID:I

.field private static final DOWNLOADED_BUTTON_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->kindle_downloaded_toggle_all:I

    sput v0, Lcom/amazon/kindle/library/widget/DownloadedToggleKt;->ALL_BUTTON_ID:I

    .line 18
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->kindle_downloaded_toggle_downloaded:I

    sput v0, Lcom/amazon/kindle/library/widget/DownloadedToggleKt;->DOWNLOADED_BUTTON_ID:I

    return-void
.end method

.method public static final synthetic access$getALL_BUTTON_ID$p()I
    .locals 1

    .line 1
    sget v0, Lcom/amazon/kindle/library/widget/DownloadedToggleKt;->ALL_BUTTON_ID:I

    return v0
.end method
