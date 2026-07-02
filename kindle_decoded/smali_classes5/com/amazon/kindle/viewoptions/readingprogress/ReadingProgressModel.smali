.class public final Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;
.super Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;
.source "ReadingProgressModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReadingProgressModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReadingProgressModel.kt\ncom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,404:1\n1517#2:405\n1588#2,3:406\n734#2:409\n825#2,2:410\n1517#2:412\n1588#2,3:413\n734#2:416\n825#2,2:417\n*E\n*S KotlinDebug\n*F\n+ 1 ReadingProgressModel.kt\ncom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel\n*L\n49#1:405\n49#1,3:406\n160#1:409\n160#1,2:410\n164#1:412\n164#1,3:413\n292#1:416\n292#1,2:417\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;

.field private static final TAG:Ljava/lang/String;

.field private static readingProgressOptionList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;",
            ">;"
        }
    .end annotation
.end field


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

.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private final readingPresetsManager:Lcom/amazon/ksdk/presets/ReadingPresetsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->Companion:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;

    .line 314
    const-class v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(ReadingProgressModel::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->TAG:Ljava/lang/String;

    .line 317
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->readingProgressOptionList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/ksdk/presets/ReadingPresetsManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "docViewer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "readingPresetsManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iput-object p3, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->readingPresetsManager:Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->getStateText(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->setState(Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/ksdk/presets/ReadingPresetsManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 34
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object p3

    invoke-interface {p3}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object p3

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/ksdk/presets/ReadingPresetsManager;)V

    return-void
.end method

.method public static final synthetic access$getCheckedTextViewGroupReference$p(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->checkedTextViewGroupReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public static final synthetic access$getDocViewer$p(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method public static final synthetic access$getIndexOfCurDisplayedFooterContentType(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)I
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->getIndexOfCurDisplayedFooterContentType()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getNextSelectedIndex(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;)I
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->getNextSelectedIndex(Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getReadingPresetsManager$p(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)Lcom/amazon/ksdk/presets/ReadingPresetsManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->readingPresetsManager:Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    return-object p0
.end method

.method public static final synthetic access$getReadingProgressOptionList$cp()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->readingProgressOptionList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$refreshContentFooter(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->refreshContentFooter(Z)V

    return-void
.end method

.method public static final synthetic access$setCheckedTextViewGroupReference$p(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->checkedTextViewGroupReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static final synthetic access$updateTextStyleOfReadingProgressOptionView(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->updateTextStyleOfReadingProgressOptionView(I)V

    return-void
.end method

.method public static final getAvailableReadingProgressOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->Companion:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->getAvailableReadingProgressOptions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final getIndexOfCurDisplayedFooterContentType()I
    .locals 5

    .line 301
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getFooterContentType()Lcom/amazon/android/docviewer/mobi/FooterContentType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->getType()Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->BLANK:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    .line 302
    :goto_0
    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->readerFooterContentTypeToKSDKReadingProgressModeType(Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;)Lcom/amazon/ksdk/presets/ReadingProgressModeType;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;

    move-result-object v0

    .line 304
    sget-object v1, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->readingProgressOptionList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;

    .line 305
    invoke-virtual {v4}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->getType()Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;

    move-result-object v4

    if-ne v4, v0, :cond_1

    move v2, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 309
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIndexOfCurDisplayedFooterContentType index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v2
.end method

.method private final getNextSelectedIndex(Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;)I
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->checkedTextViewGroupReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 211
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 213
    invoke-interface {p1}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->getIndexOfCurDisplayedFooterContentType()I

    move-result p1

    if-ne p1, v1, :cond_3

    add-int/lit8 p1, v1, 0x1

    .line 220
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr p1, v2

    .line 221
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "it[index]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-eq p1, v1, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 222
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr p1, v2

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 225
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 v1, p1, -0x1

    goto :goto_1

    :cond_3
    move v1, p1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 236
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNextSelectedIndex: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v1
.end method

.method public static final getSelectedReadingProgressOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->Companion:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->getSelectedReadingProgressOptions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final getTextColor(Z)I
    .locals 3

    if-eqz p1, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$color;->aa_menu_v2_setting_subtitle_text_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    .line 280
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 281
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 282
    sget v1, Lcom/amazon/kindle/krl/R$attr;->aaMenuV2TextTitleColor:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 283
    iget p1, p1, Landroid/util/TypedValue;->data:I

    :goto_0
    return p1
.end method

.method public static final initializeReadingProgressDefaults()V
    .locals 1

    sget-object v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->Companion:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->initializeReadingProgressDefaults()V

    return-void
.end method

.method private final isReadingProgressSettingVisible()Z
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->readingPresetsManager:Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->aaSettings()Lcom/amazon/ksdk/presets/AaSettingsConfiguration;

    move-result-object v0

    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->READING_PROGRESS_MULTIPLE_MODE:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {v0, v1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;->aaSettingVisible(Lcom/amazon/ksdk/presets/AaSettingType;)Z

    move-result v0

    return v0
.end method

.method private final refreshContentFooter(Z)V
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refreshContentFooter notRotate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    sget-object v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->Companion:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->getSelectedReadingProgressOptions()Ljava/util/List;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getFooterContentType()Lcom/amazon/android/docviewer/mobi/FooterContentType;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->updateSelectedReadingProgressOptions(Ljava/util/List;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 197
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->refreshFooter()V

    goto :goto_1

    .line 199
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getFooterContentType()Lcom/amazon/android/docviewer/mobi/FooterContentType;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/FooterContentType;->getType()Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 200
    :cond_2
    sget-object p1, Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;->BLANK:Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;

    .line 202
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 203
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->toggleFooter()V

    :cond_3
    :goto_1
    return-void
.end method

.method private final shouldMakeViewDisabled()Z
    .locals 7

    .line 292
    sget-object v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->readingProgressOptionList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 416
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 417
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;

    .line 292
    invoke-virtual {v5}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->getSelected()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->getAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 293
    sget-object v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->readingProgressOptionList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->getSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    return v4

    :cond_3
    return v3
.end method

.method private final updateTextStyleOfReadingProgressOptionView(I)V
    .locals 7

    .line 259
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->checkedTextViewGroupReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const-string v1, "it"

    .line 260
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, p1, :cond_0

    .line 262
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->shouldMakeViewDisabled()Z

    move-result v6

    .line 263
    invoke-interface {v3, v4, v5}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 264
    invoke-direct {p0, v6}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->getTextColor(Z)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;->setTextColor(I)V

    xor-int/lit8 v4, v6, 0x1

    .line 265
    invoke-interface {v3, v4}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;->setEnabled(Z)V

    goto :goto_1

    .line 267
    :cond_0
    sget-object v6, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->readingProgressOptionList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;

    invoke-virtual {v6}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->getAvailable()Z

    move-result v6

    xor-int/2addr v5, v6

    .line 268
    invoke-direct {p0, v5}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->getTextColor(Z)I

    move-result v6

    invoke-interface {v3, v6}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;->setTextColor(I)V

    .line 269
    invoke-interface {v3, v4, v1}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;->setTypeface(Landroid/graphics/Typeface;I)V

    xor-int/lit8 v4, v5, 0x1

    .line 270
    invoke-interface {v3, v4}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;->setEnabled(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final backHandler()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 135
    sget-object v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$backHandler$1;->INSTANCE:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$backHandler$1;

    return-object v0
.end method

.method public final getOnViewCreatedListener()Lkotlin/jvm/functions/Function1;
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

    .line 102
    new-instance v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getOnViewCreatedListener$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getOnViewCreatedListener$1;-><init>(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)V

    return-object v0
.end method

.method public final getReadingProgressCurrentSelectedStates()[I
    .locals 3

    .line 49
    sget-object v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->readingProgressOptionList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 405
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 406
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 407
    check-cast v2, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;

    .line 49
    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->getSelected()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method public final getReadingProgressOnSelectedOptionsChangeHandler()Lkotlin/jvm/functions/Function2;
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

    .line 56
    new-instance v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getReadingProgressOnSelectedOptionsChangeHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getReadingProgressOnSelectedOptionsChangeHandler$1;-><init>(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)V

    return-object v0
.end method

.method public final getReadingProgressOptionTitles()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    sget-object v1, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->Companion:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v1, v2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->access$isSample(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v1

    .line 146
    sget-object v2, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->Companion:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;

    iget-object v3, p0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v2, v3}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->access$isFalkorEpisode(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v2

    .line 147
    sget-object v3, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->readingProgressOptionList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;

    .line 148
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureViewModel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->title(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getReadingProgressOptionTitles: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method

.method public final getReadingProgressOptionVisibilityHandler()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/amazon/kindle/krx/viewoptions/DisplayState;",
            ">;"
        }
    .end annotation

    .line 119
    sget-object v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getReadingProgressOptionVisibilityHandler$1;->INSTANCE:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$getReadingProgressOptionVisibilityHandler$1;

    return-object v0
.end method

.method public final getStateText(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/String;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "docViewer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->readingProgressOptionList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 409
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 410
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;

    .line 160
    invoke-virtual {v5}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->getSelected()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->getAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 162
    sget-object v2, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->Companion:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;

    invoke-static {v2, p2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->access$isSample(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v2

    .line 163
    sget-object v5, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->Companion:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;

    invoke-static {v5, p2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->access$isFalkorEpisode(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p2

    .line 412
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 413
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 414
    check-cast v6, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;

    .line 164
    invoke-virtual {v6, p1, v2, p2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption;->title(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    if-ne v0, v3, :cond_4

    .line 166
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_5

    :cond_4
    const/4 v1, 0x2

    if-le v1, v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v6, 0x4

    if-lt v6, v0, :cond_7

    new-array p2, v6, [Ljava/lang/Integer;

    .line 168
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v4

    sget v2, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_reading_progress_two_options_selected:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v3

    .line 169
    sget v2, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_reading_progress_three_options_selected:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v1

    const/4 v1, 0x3

    .line 170
    sget v2, Lcom/amazon/kindle/krl/R$string;->aa_menu_v2_reading_progress_four_options_selected:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v1

    sub-int/2addr v0, v3

    .line 171
    aget-object p2, p2, v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    :goto_3
    if-ge v4, v0, :cond_6

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "context.getString(string\u2026es.size) { titles[it] }))"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 173
    :cond_7
    :goto_4
    sget-object v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;->NONE:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;

    invoke-virtual {v0, p1, v2, p2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressOption$Type;->getTitle(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object p1

    .line 175
    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getStateText state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object p1
.end method

.method public final onThemeChanged()V
    .locals 2

    .line 183
    sget-object v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->Companion:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$Companion;->reloadReadingProgressOptionList()V

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, v0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->refreshContentFooter(Z)V

    .line 186
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$onThemeChanged$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$onThemeChanged$1;-><init>(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onViewOptionsEvent(Lcom/amazon/kindle/krx/events/UIEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/UIEvent;->getElement()Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->VIEW_OPTIONS:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/UIEvent;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->isReadingProgressSettingVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 245
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$onViewOptionsEvent$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$onViewOptionsEvent$1;-><init>(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final stateDescriptionGetter()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$stateDescriptionGetter$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel$stateDescriptionGetter$1;-><init>(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;)V

    return-object v0
.end method
