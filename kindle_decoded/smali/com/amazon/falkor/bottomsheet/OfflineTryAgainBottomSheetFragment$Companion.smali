.class public final Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;
.super Ljava/lang/Object;
.source "OfflineBottomSheetFragments.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOfflineBottomSheetFragments.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OfflineBottomSheetFragments.kt\ncom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion\n*L\n1#1,156:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNewInstance(ZLjava/lang/String;Z)Landroidx/fragment/app/Fragment;
    .locals 2

    const-string v0, "bottomSheetID"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "has_download_failed"

    .line 147
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "bottom_sheet_id"

    .line 148
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "is_in_dark_mode"

    .line 149
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    new-instance p1, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;

    invoke-direct {p1}, Lcom/amazon/falkor/bottomsheet/OfflineTryAgainBottomSheetFragment;-><init>()V

    .line 151
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method
