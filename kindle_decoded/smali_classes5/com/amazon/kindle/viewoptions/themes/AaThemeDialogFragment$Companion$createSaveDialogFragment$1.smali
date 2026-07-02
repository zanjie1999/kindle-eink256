.class final Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion$createSaveDialogFragment$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AaThemeDialogFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion;->createSaveDialogFragment(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/themes/AaTheme;Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $builder:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

.field final synthetic $theme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

.field final synthetic $themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;Lcom/amazon/kindle/viewoptions/themes/AaTheme;Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion$createSaveDialogFragment$1;->$builder:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion$createSaveDialogFragment$1;->$theme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    iput-object p3, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion$createSaveDialogFragment$1;->$themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion$createSaveDialogFragment$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion$createSaveDialogFragment$1;->$builder:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion$createSaveDialogFragment$1;->$theme:Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion$createSaveDialogFragment$1;->$themesManager:Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->saveButtonClicked(Lcom/amazon/kindle/viewoptions/themes/AaTheme;Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)V

    return-void
.end method
