.class public final Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;
.super Ljava/lang/Object;
.source "LetterboxingManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLetterboxingManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LetterboxingManager.kt\ncom/amazon/kindle/viewoptions/utils/LetterboxingManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,105:1\n1517#2:106\n1588#2,3:107\n1517#2:110\n1588#2,3:111\n1517#2:114\n1588#2,3:115\n*E\n*S KotlinDebug\n*F\n+ 1 LetterboxingManager.kt\ncom/amazon/kindle/viewoptions/utils/LetterboxingManager\n*L\n66#1:106\n66#1,3:107\n79#1:110\n79#1,3:111\n92#1:114\n92#1,3:115\n*E\n"
.end annotation


# instance fields
.field private checkedTextViewGroupReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final inUse:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final optionOrdering:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/LetterboxingColor;",
            ">;"
        }
    .end annotation
.end field

.field private final settings:Lcom/amazon/kcp/application/UserSettingsController;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->inUse:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v2, "Utils.getFactory()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const-string v2, "Utils.getFactory().userSettingsController"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/android/docviewer/LetterboxingColor;

    .line 16
    sget-object v2, Lcom/amazon/android/docviewer/LetterboxingColor;->PUBLISHER:Lcom/amazon/android/docviewer/LetterboxingColor;

    aput-object v2, v0, v1

    sget-object v1, Lcom/amazon/android/docviewer/LetterboxingColor;->TRANSPARENT:Lcom/amazon/android/docviewer/LetterboxingColor;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/android/docviewer/LetterboxingColor;->BLACK:Lcom/amazon/android/docviewer/LetterboxingColor;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->optionOrdering:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getCheckedTextViewGroupReference$p(Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->checkedTextViewGroupReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static final synthetic access$getInUse$p(Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->inUse:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static final synthetic access$getLetterboxColorForCheckbox(Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;)Lcom/amazon/android/docviewer/LetterboxingColor;
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->getLetterboxColorForCheckbox(Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;)Lcom/amazon/android/docviewer/LetterboxingColor;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSettings$p(Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;)Lcom/amazon/kcp/application/UserSettingsController;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    return-object p0
.end method

.method public static final synthetic access$setCheckedTextViewGroupReference$p(Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->checkedTextViewGroupReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final getLetterboxColorForCheckbox(Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;)Lcom/amazon/android/docviewer/LetterboxingColor;
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->checkedTextViewGroupReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v2

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v0

    if-gt v2, v0, :cond_3

    .line 46
    :goto_1
    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->checkedTextViewGroupReference:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;

    goto :goto_2

    :cond_1
    move-object v3, v1

    :goto_2
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 47
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->optionOrdering:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/LetterboxingColor;

    return-object p1

    :cond_2
    if-eq v2, v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private final getOptionDescription(Landroid/content/Context;Lcom/amazon/android/docviewer/LetterboxingColor;)Ljava/lang/CharSequence;
    .locals 2

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 84
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    const-string/jumbo v1, "resources.getString(R.st\u2026letterboxing_description)"

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 87
    sget p2, Lcom/amazon/kindle/krl/R$string;->kre_aamenu_cmx_black_letterboxing_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 86
    :cond_1
    sget p2, Lcom/amazon/kindle/krl/R$string;->kre_aamenu_cmx_default_letterboxing_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_2
    sget p2, Lcom/amazon/kindle/krl/R$string;->kre_aamenu_cmx_no_letterboxing_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1

    .line 83
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " LETTERBOX COLOR DESCRIPTION"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getOptionID(Lcom/amazon/android/docviewer/LetterboxingColor;)I
    .locals 1

    .line 97
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 100
    sget p1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_letterboxing_option_black:I

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 99
    :cond_1
    sget p1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_letterboxing_option_default:I

    goto :goto_0

    .line 98
    :cond_2
    sget p1, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_letterboxing_option_none:I

    :goto_0
    return p1
.end method

.method private final getOptionName(Landroid/content/Context;Lcom/amazon/android/docviewer/LetterboxingColor;)Ljava/lang/CharSequence;
    .locals 1

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 71
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 74
    sget p2, Lcom/amazon/kindle/krl/R$string;->kre_aamenu_cmx_black_letterboxing:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "resources.getString(R.st\u2026u_cmx_black_letterboxing)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 73
    :cond_1
    sget p2, Lcom/amazon/kindle/krl/R$string;->kre_aamenu_cmx_default_letterboxing:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "resources.getString(R.st\u2026cmx_default_letterboxing)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_2
    sget p2, Lcom/amazon/kindle/krl/R$string;->kre_aamenu_cmx_no_letterboxing:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "resources.getString(R.st\u2026menu_cmx_no_letterboxing)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1

    .line 70
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getChangeHandler()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "[I",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$getChangeHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$getChangeHandler$1;-><init>(Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;)V

    return-object v0
.end method

.method public final getOptionDescriptions(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->optionOrdering:Ljava/util/List;

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 112
    check-cast v2, Lcom/amazon/android/docviewer/LetterboxingColor;

    .line 79
    invoke-direct {p0, p1, v2}, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->getOptionDescription(Landroid/content/Context;Lcom/amazon/android/docviewer/LetterboxingColor;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final getOptionIDs()[I
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->optionOrdering:Ljava/util/List;

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 116
    check-cast v2, Lcom/amazon/android/docviewer/LetterboxingColor;

    .line 92
    invoke-direct {p0, v2}, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->getOptionID(Lcom/amazon/android/docviewer/LetterboxingColor;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method public final getOptionNames(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->optionOrdering:Ljava/util/List;

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 108
    check-cast v2, Lcom/amazon/android/docviewer/LetterboxingColor;

    .line 66
    invoke-direct {p0, p1, v2}, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->getOptionName(Landroid/content/Context;Lcom/amazon/android/docviewer/LetterboxingColor;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final getSettingValues()[I
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->optionOrdering:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->optionOrdering:Ljava/util/List;

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/UserSettingsController;->getLetterboxColor()Lcom/amazon/android/docviewer/LetterboxingColor;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x1

    aput v2, v1, v0

    return-object v1
.end method

.method public final getViewCreationListener()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$getViewCreationListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager$getViewCreationListener$1;-><init>(Lcom/amazon/kindle/viewoptions/utils/LetterboxingManager;)V

    return-object v0
.end method
