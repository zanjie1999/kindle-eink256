.class public final Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion;
.super Ljava/lang/Object;
.source "AaThemeDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAaThemeDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AaThemeDialogFragment.kt\ncom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,312:1\n1517#2:313\n1588#2,3:314\n*E\n*S KotlinDebug\n*F\n+ 1 AaThemeDialogFragment.kt\ncom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion\n*L\n72#1:313\n72#1,3:314\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion;-><init>()V

    return-void
.end method

.method private final createEditDialogFragment(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/themes/AaTheme;Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;
    .locals 3

    .line 59
    new-instance v0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    sget-object v1, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;->EDIT:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;-><init>(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;)V

    .line 60
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_edit_dialog_title:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026themes_edit_dialog_title)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->title(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    .line 61
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_edit_dialog_message:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026emes_edit_dialog_message)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->message(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    .line 62
    invoke-virtual {p2}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->inputText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    .line 63
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_edit_dialog_checkbox_text:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026dit_dialog_checkbox_text)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->checkboxText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    .line 64
    invoke-virtual {p3}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->isCustomThemeAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->checkboxEnabled(Z)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    .line 65
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_dialog_positive_text:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026mes_dialog_positive_text)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->positiveButtonText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    .line 66
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_dialog_negative_text:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "context.getString(R.stri\u2026mes_dialog_negative_text)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->negativeButtonText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    .line 67
    new-instance p1, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion$createEditDialogFragment$1;

    invoke-direct {p1, v0, p2, p3}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion$createEditDialogFragment$1;-><init>(Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;Lcom/amazon/kindle/viewoptions/themes/AaTheme;Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)V

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->positiveButtonAction(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    .line 68
    sget-object p1, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion$createEditDialogFragment$2;->INSTANCE:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion$createEditDialogFragment$2;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->negativeButtonAction(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->build()Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;

    move-result-object p1

    return-object p1
.end method

.method private final createSaveDialogFragment(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/themes/AaTheme;Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;
    .locals 3

    .line 47
    new-instance v0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    sget-object v1, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;->SAVE:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;-><init>(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;)V

    .line 48
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_save_dialog_title:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026themes_save_dialog_title)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->title(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    .line 49
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_save_dialog_message:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026emes_save_dialog_message)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->message(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    .line 50
    invoke-direct {p0, p1, p3}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion;->suggestedNameForNewTheme(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->inputText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    .line 51
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_dialog_positive_text:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(R.stri\u2026mes_dialog_positive_text)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->positiveButtonText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    .line 52
    sget v1, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_dialog_negative_text:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "context.getString(R.stri\u2026mes_dialog_negative_text)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->negativeButtonText(Ljava/lang/CharSequence;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    .line 53
    new-instance p1, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion$createSaveDialogFragment$1;

    invoke-direct {p1, v0, p2, p3}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion$createSaveDialogFragment$1;-><init>(Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;Lcom/amazon/kindle/viewoptions/themes/AaTheme;Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)V

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->positiveButtonAction(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    .line 54
    sget-object p1, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion$createSaveDialogFragment$2;->INSTANCE:Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion$createSaveDialogFragment$2;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;->negativeButtonAction(Lkotlin/jvm/functions/Function0;)Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$AaThemeDialogBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment$AaDialogBuilder;->build()Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;

    move-result-object p1

    return-object p1
.end method

.method private final suggestedNameForNewTheme(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)Ljava/lang/String;
    .locals 8

    .line 72
    invoke-virtual {p2}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->userDefinedThemes()Ljava/util/List;

    move-result-object p2

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 314
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 315
    check-cast v1, Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    .line 72
    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/themes/AaTheme;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_0
    sget p2, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_themes_suggested_theme_name_prefix:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(R.stri\u2026gested_theme_name_prefix)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 p2, 0x1

    new-array v1, p2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "^%s ([0-9]+)$"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "java.lang.String.format(format, *args)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lkotlin/text/Regex;

    invoke-direct {v4, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x0

    .line 77
    invoke-static {v4, v5, v2, v6, v7}, Lkotlin/text/Regex;->findAll$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v5

    .line 78
    invoke-interface {v5}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/text/MatchResult;

    .line 79
    invoke-interface {v6}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, p2

    if-eqz v7, :cond_3

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-le v6, v1, :cond_2

    move v1, v6

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    add-int/2addr v1, p2

    .line 87
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p2

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%s %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final newInstance(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogType;Lcom/amazon/kindle/viewoptions/themes/AaTheme;Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "themeDialogType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "theme"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "themesManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 42
    invoke-direct {p0, p1, p3, p4}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion;->createEditDialogFragment(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/themes/AaTheme;Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 41
    :cond_1
    invoke-direct {p0, p1, p3, p4}, Lcom/amazon/kindle/viewoptions/themes/AaThemeDialogFragment$Companion;->createSaveDialogFragment(Landroid/content/Context;Lcom/amazon/kindle/viewoptions/themes/AaTheme;Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;)Lcom/amazon/kindle/viewoptions/ui/dialog/AaDialogFragment;

    move-result-object p1

    :goto_0
    return-object p1
.end method
