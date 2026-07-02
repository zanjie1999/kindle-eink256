.class public final Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment;
.super Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;
.source "AaThemeDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;,
        Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment;->Companion:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method
