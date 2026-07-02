.class public Lcom/amazon/kcp/debug/DebugActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "DebugActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/debug/DebugActivity$RegisterEvent;,
        Lcom/amazon/kcp/debug/DebugActivity$UpdateEvent;,
        Lcom/amazon/kcp/debug/DebugActivity$DebugButton;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final COVER_SETTINGS:Ljava/lang/String; = "CoverSettings"

.field public static final CUSTOM_COLOR_SETTING:Ljava/lang/String; = "CustomColorSetting"

.field private static CustomColorsEnabled:Ljava/lang/Boolean; = null

.field public static final DEBUG_PREVIEW_LENGTH:Ljava/lang/String; = "DebugPreviewLength"

.field private static final ENABLE_QA_PERFORMANCE_MARKERS_LOGCAT:Ljava/lang/String; = "EnableQAPerformanceMarkersLogcat"

.field private static final FONT_DIRECTORY:Ljava/lang/String; = "fonts"

.field public static final FORCED_APP_UPDATE:Ljava/lang/String; = "ForcedAppUpdate"

.field private static IS_DOWNLOADING_BOOKS:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field public static final MPHL_FLIP_DELAY_MS:Ljava/lang/String; = "MPHLFlipDelayMS"

.field private static final NOTIFICATIONS_BUILD_FILE_NAME:Ljava/lang/String; = "NOTIFICATIONS_BUILD"

.field private static NOTIFICATION_ID:I = 0x0

.field public static NewsstandLibraryBackissuesTimeLimit_magazines:J = 0x0L

.field public static NewsstandLibraryBackissuesTimeLimit_newspapers:J = 0x0L

.field private static final RESET_NOTIFICATIONS_ENDPOINT:Ljava/lang/String; = "RESET_NOTIFICATIONS_ENDPOINT"

.field public static SPRoptionEnabled:Z = false

.field public static final SUPPRESS_MRPR_FIELD:Ljava/lang/String; = "ShouldSuppressMrpr"

.field private static final TAG:Ljava/lang/String;

.field public static TestFontsEnabled:Z

.field private static final additionalViews:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static buyButtonAsins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static customColorActionButton:Lcom/amazon/kcp/debug/TweakColorCombinationActionButton;

.field public static firstPageRenderLockEnabled:I

.field private static isCustomActionButtonRegistered:Z

.field public static localCleanupInMAPAccountRemovedReceiverEnabled:Z

.field private static m_debugButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/debug/DebugActivity$DebugButton;",
            ">;"
        }
    .end annotation
.end field

.field private static messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private static unbuyButtonAsins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_buttonContainer:Landroid/widget/LinearLayout;

.field private m_buttonToViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/debug/DebugActivity$DebugButton;",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 175
    const-class v0, Lcom/amazon/kcp/debug/DebugActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/debug/DebugActivity;->TAG:Ljava/lang/String;

    .line 177
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/amazon/kcp/debug/DebugActivity;->IS_DOWNLOADING_BOOKS:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v0, 0x6f

    .line 179
    sput v0, Lcom/amazon/kcp/debug/DebugActivity;->NOTIFICATION_ID:I

    .line 186
    sput-boolean v1, Lcom/amazon/kcp/debug/DebugActivity;->SPRoptionEnabled:Z

    .line 187
    sput-boolean v1, Lcom/amazon/kcp/debug/DebugActivity;->TestFontsEnabled:Z

    const/4 v0, 0x0

    .line 188
    sput-object v0, Lcom/amazon/kcp/debug/DebugActivity;->CustomColorsEnabled:Ljava/lang/Boolean;

    const/4 v2, -0x1

    .line 189
    sput v2, Lcom/amazon/kcp/debug/DebugActivity;->firstPageRenderLockEnabled:I

    const/4 v2, 0x1

    .line 191
    sput-boolean v2, Lcom/amazon/kcp/debug/DebugActivity;->localCleanupInMAPAccountRemovedReceiverEnabled:Z

    .line 198
    sput-object v0, Lcom/amazon/kcp/debug/DebugActivity;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    const-wide/16 v2, -0x1

    .line 204
    sput-wide v2, Lcom/amazon/kcp/debug/DebugActivity;->NewsstandLibraryBackissuesTimeLimit_magazines:J

    .line 210
    sput-wide v2, Lcom/amazon/kcp/debug/DebugActivity;->NewsstandLibraryBackissuesTimeLimit_newspapers:J

    .line 216
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/DebugActivity;->additionalViews:Ljava/util/Collection;

    .line 219
    sput-boolean v1, Lcom/amazon/kcp/debug/DebugActivity;->isCustomActionButtonRegistered:Z

    .line 1610
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/DebugActivity;->buyButtonAsins:Ljava/util/Set;

    .line 1611
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/DebugActivity;->unbuyButtonAsins:Ljava/util/Set;

    .line 2854
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/DebugActivity;->m_debugButtons:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 174
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 2806
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/debug/DebugActivity;->m_buttonToViewMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/debug/DebugActivity;Landroid/widget/Button;Z)V
    .locals 0

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/debug/DebugActivity;->updateEnableTracingButton(Landroid/widget/Button;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/debug/DebugActivity;Landroid/widget/Button;Z)V
    .locals 0

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/debug/DebugActivity;->updateEnableXMLToDiskButton(Landroid/widget/Button;Z)V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 174
    sget-object v0, Lcom/amazon/kcp/debug/DebugActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 174
    sget-object v0, Lcom/amazon/kcp/debug/DebugActivity;->IS_DOWNLOADING_BOOKS:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .line 174
    sget v0, Lcom/amazon/kcp/debug/DebugActivity;->NOTIFICATION_ID:I

    return v0
.end method

.method static synthetic access$1300(Lcom/amazon/kcp/debug/DebugActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/debug/DebugActivity;->openBookDetails(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 1

    .line 174
    invoke-static {}, Lcom/amazon/kcp/debug/DebugActivity;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/debug/DebugActivity;Landroid/widget/Button;Z)V
    .locals 0

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/debug/DebugActivity;->updateEnableSystraceButton(Landroid/widget/Button;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/kcp/debug/DebugActivity;Landroid/widget/Button;Z)V
    .locals 0

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/debug/DebugActivity;->updateEnablePerfLoggingButton(Landroid/widget/Button;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/debug/DebugActivity;Landroid/widget/Button;Z)V
    .locals 0

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/debug/DebugActivity;->updateEnableQAPerfLoggingButton(Landroid/widget/Button;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kcp/debug/DebugActivity;Z)Z
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugActivity;->setDebugIndexingEnabled(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/debug/DebugActivity;Z)Z
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugActivity;->setNLNEnabled(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/debug/DebugActivity;Landroid/widget/Button;Z)V
    .locals 0

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/debug/DebugActivity;->updateNLNButton(Landroid/widget/Button;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/kcp/debug/DebugActivity;Z)Z
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugActivity;->setAutoShelvingEnabled(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900()Lcom/amazon/kcp/debug/TweakColorCombinationActionButton;
    .locals 1

    .line 174
    sget-object v0, Lcom/amazon/kcp/debug/DebugActivity;->customColorActionButton:Lcom/amazon/kcp/debug/TweakColorCombinationActionButton;

    return-object v0
.end method

.method static synthetic access$902(Lcom/amazon/kcp/debug/TweakColorCombinationActionButton;)Lcom/amazon/kcp/debug/TweakColorCombinationActionButton;
    .locals 0

    .line 174
    sput-object p0, Lcom/amazon/kcp/debug/DebugActivity;->customColorActionButton:Lcom/amazon/kcp/debug/TweakColorCombinationActionButton;

    return-object p0
.end method

.method private addButton(Lcom/amazon/kcp/debug/DebugActivity$DebugButton;)V
    .locals 4

    .line 2826
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$layout;->debug_menu_button:I

    iget-object v2, p0, Lcom/amazon/kcp/debug/DebugActivity;->m_buttonContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2828
    invoke-virtual {p1, p0}, Lcom/amazon/kcp/debug/DebugActivity$DebugButton;->getButtonText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2829
    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$45;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/DebugActivity$45;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Lcom/amazon/kcp/debug/DebugActivity$DebugButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2836
    iget-object v1, p0, Lcom/amazon/kcp/debug/DebugActivity;->m_buttonToViewMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2837
    iget-object p1, p0, Lcom/amazon/kcp/debug/DebugActivity;->m_buttonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static addDebugView(I)V
    .locals 1

    .line 222
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    sget-object v0, Lcom/amazon/kcp/debug/DebugActivity;->additionalViews:Ljava/util/Collection;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private formatColumnString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getCustomColorsAlertDialog(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/app/Activity;)Landroid/app/AlertDialog;
    .locals 7

    .line 807
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 808
    invoke-interface {p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    .line 810
    instance-of v2, p0, Lcom/amazon/android/docviewer/DebugKindleDocViewer;

    const-string v3, "Set Custom Settings"

    const-string v4, "Set"

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 811
    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ResizableFont:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 812
    invoke-interface {v1, v6}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->FontFaceChange:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 813
    invoke-interface {v1, v6}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 814
    :cond_0
    sget v1, Lcom/amazon/kindle/krl/R$layout;->tweak_settings:I

    invoke-static {p1, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 815
    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$20;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/DebugActivity$20;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/view/View;)V

    .line 903
    new-instance v2, Lcom/amazon/kcp/debug/DebugActivity$21;

    invoke-direct {v2, v1}, Lcom/amazon/kcp/debug/DebugActivity$21;-><init>(Ljava/lang/Runnable;)V

    .line 914
    sget v5, Lcom/amazon/kindle/krl/R$id;->fontRText:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 915
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 916
    sget v5, Lcom/amazon/kindle/krl/R$id;->fontGText:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 917
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 918
    sget v5, Lcom/amazon/kindle/krl/R$id;->fontBText:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 919
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 921
    sget v5, Lcom/amazon/kindle/krl/R$id;->backgroundRText:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 922
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 923
    sget v5, Lcom/amazon/kindle/krl/R$id;->backgroundGText:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 924
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 925
    sget v5, Lcom/amazon/kindle/krl/R$id;->backgroundBText:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 926
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 928
    sget v5, Lcom/amazon/kindle/krl/R$id;->fontSizeText:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 929
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 930
    sget v5, Lcom/amazon/kindle/krl/R$id;->spacingText:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 931
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 933
    sget v5, Lcom/amazon/kindle/krl/R$id;->marginLeftText:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 934
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 935
    sget v5, Lcom/amazon/kindle/krl/R$id;->marginTopText:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 936
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 937
    sget v5, Lcom/amazon/kindle/krl/R$id;->marginRightText:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 938
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 939
    sget v5, Lcom/amazon/kindle/krl/R$id;->marginBottomText:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 940
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 942
    new-instance v2, Lcom/amazon/kcp/debug/DebugActivity$22;

    invoke-direct {v2, v1}, Lcom/amazon/kcp/debug/DebugActivity$22;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 949
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 950
    invoke-static {p1, p0}, Lcom/amazon/kcp/debug/DebugActivity;->setCurrentColorsOnCustomColorDialog(Landroid/view/View;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 951
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 953
    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v2

    sget-object v6, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne v2, v6, :cond_2

    .line 954
    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/x-kfx-ebook"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 955
    sget v1, Lcom/amazon/kindle/krl/R$layout;->tweak_settings_comics:I

    invoke-static {p1, v1, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 956
    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$23;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/DebugActivity$23;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/view/View;)V

    .line 1021
    new-instance v2, Lcom/amazon/kcp/debug/DebugActivity$24;

    invoke-direct {v2, v1}, Lcom/amazon/kcp/debug/DebugActivity$24;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1028
    sget v1, Lcom/amazon/kindle/krl/R$id;->fitToWidthCheck:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1029
    sget v2, Lcom/amazon/kindle/krl/R$id;->twoPageUpCheck:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1031
    new-instance v4, Lcom/amazon/kcp/debug/DebugActivity$25;

    invoke-direct {v4, v2}, Lcom/amazon/kcp/debug/DebugActivity$25;-><init>(Landroid/widget/CheckBox;)V

    .line 1040
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1042
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1043
    invoke-static {p1, p0}, Lcom/amazon/kcp/debug/DebugActivity;->setCurrentColorsOnCustomColorDialog(Landroid/view/View;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 1044
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_2
    const-string p0, "This feature is not available for this book"

    .line 1046
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1049
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static getDebugMPHLFlipDelay()I
    .locals 2

    :try_start_0
    const-string v0, "com.amazon.kcp.reader.gestures.SelectionGestureHandler"

    .line 2590
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "TIME_BEFORE_MULTIPAGE_HIGHLIGHT_PAGE_FLIP"

    .line 2591
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2592
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 2593
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 2595
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getDevicePixelDensity()Ljava/lang/String;
    .locals 5

    .line 1275
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, "LDPI"

    return-object v0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    const-string v0, "MDPI"

    return-object v0

    :cond_1
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpl-double v4, v0, v2

    if-nez v4, :cond_2

    const-string v0, "HDPI"

    return-object v0

    :cond_2
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_3

    const-string v0, "XHDPI"

    return-object v0

    :cond_3
    const-string v0, "NA"

    return-object v0
.end method

.method private getMaxScrollSpeed()V
    .locals 3

    .line 2631
    :try_start_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->max_scroll_speed:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "com.amazon.kcp.library.fragments.LibraryFragmentHelper"

    .line 2633
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "MAX_LIST_VIEW_SCROLL_SPEED"

    .line 2634
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 2635
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 2636
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 2637
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2639
    sget-object v1, Lcom/amazon/kcp/debug/DebugActivity;->TAG:Ljava/lang/String;

    const-string v2, "Error reading max scroll speed"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 2

    .line 1460
    sget-object v0, Lcom/amazon/kcp/debug/DebugActivity;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 1461
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/debug/DebugActivity;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/debug/DebugActivity;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 1464
    :cond_0
    sget-object v0, Lcom/amazon/kcp/debug/DebugActivity;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object v0
.end method

.method private static getStandAloneCustomColorActionButtonProvider()Lcom/amazon/kindle/krx/providers/IProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/IProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 1061
    new-instance v0, Lcom/amazon/kcp/debug/DebugActivity$26;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/DebugActivity$26;-><init>()V

    return-object v0
.end method

.method private static getTabletCustomColorActionButtonProvider()Lcom/amazon/kindle/krx/providers/ISortableProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 1073
    new-instance v0, Lcom/amazon/kcp/debug/DebugActivity$27;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/DebugActivity$27;-><init>()V

    return-object v0
.end method

.method private initialize()V
    .locals 7

    .line 249
    sget v0, Lcom/amazon/kindle/krl/R$id;->debug_v2_launcher:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 250
    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/amazon/kcp/debug/DebugActivity$1;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    sget v0, Lcom/amazon/kindle/krl/R$id;->debug_preview_length:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x0

    const-string v2, "CoverSettings"

    .line 259
    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "DebugPreviewLength"

    .line 261
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/high16 v4, -0x80000000

    .line 262
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 263
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->debug_view_list:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 268
    sget-object v2, Lcom/amazon/kcp/debug/DebugActivity;->additionalViews:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 269
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const-string v0, "DebugSettings"

    .line 272
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "CustomColorSetting"

    .line 273
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 274
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/debug/DebugActivity;->CustomColorsEnabled:Ljava/lang/Boolean;

    .line 277
    :cond_3
    sget v0, Lcom/amazon/kindle/krl/R$id;->debug_nwstd_backissues_MAGAZINES_timelimit:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_4

    .line 279
    sget-wide v4, Lcom/amazon/kcp/debug/DebugActivity;->NewsstandLibraryBackissuesTimeLimit_magazines:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_4

    .line 281
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 280
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    :cond_4
    sget v0, Lcom/amazon/kindle/krl/R$id;->debug_nwstd_backissues_NEWSPAPERS_timelimit:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_5

    .line 287
    sget-wide v4, Lcom/amazon/kcp/debug/DebugActivity;->NewsstandLibraryBackissuesTimeLimit_newspapers:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_5

    .line 289
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 288
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 292
    :cond_5
    invoke-direct {p0}, Lcom/amazon/kcp/debug/DebugActivity;->setLibraryViewSelection()V

    .line 294
    invoke-direct {p0}, Lcom/amazon/kcp/debug/DebugActivity;->prepareHfsDebugOptions()V

    .line 296
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_utm_checkbox:I

    const-string v2, "EnableUnifiedTutorialManager"

    invoke-direct {p0, v0, v2, v1}, Lcom/amazon/kcp/debug/DebugActivity;->initializeDebugCheckbox(ILjava/lang/String;Z)V

    .line 298
    invoke-direct {p0}, Lcom/amazon/kcp/debug/DebugActivity;->getMaxScrollSpeed()V

    .line 300
    sget v0, Lcom/amazon/kindle/krl/R$id;->force_demo_mode_toggle:I

    const-string v2, "ForceDemoModeIsTrue"

    invoke-direct {p0, v0, v2, v1}, Lcom/amazon/kcp/debug/DebugActivity;->initializeDebugCheckbox(ILjava/lang/String;Z)V

    .line 302
    sget v0, Lcom/amazon/kindle/krl/R$id;->toggle_silent_updates:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 303
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAppSettingsController;->getSilentUpdatesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 305
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentUpdateService()Lcom/amazon/kindle/contentupdate/IContentUpdateService;

    move-result-object v0

    .line 307
    sget v1, Lcom/amazon/kindle/krl/R$id;->delay_before_annotation_upload_edit_text:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/contentupdate/IContentUpdateService;->getDebugDelayBeforeAnnotationUpload()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    sget v2, Lcom/amazon/kindle/krl/R$id;->delay_before_annotation_upload_button:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/amazon/kcp/debug/DebugActivity$2;

    invoke-direct {v4, p0, v1, v0}, Lcom/amazon/kcp/debug/DebugActivity$2;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/widget/TextView;Lcom/amazon/kindle/contentupdate/IContentUpdateService;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    sget v1, Lcom/amazon/kindle/krl/R$id;->delay_after_content_download_edit_text:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/contentupdate/IContentUpdateService;->getDebugDelayAfterContentDownload()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    sget v2, Lcom/amazon/kindle/krl/R$id;->delay_after_content_download_button:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v4, Lcom/amazon/kcp/debug/DebugActivity$3;

    invoke-direct {v4, p0, v1, v0}, Lcom/amazon/kcp/debug/DebugActivity$3;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/widget/TextView;Lcom/amazon/kindle/contentupdate/IContentUpdateService;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    sget v1, Lcom/amazon/kindle/krl/R$id;->delay_after_swap_edit_text:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 342
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/contentupdate/IContentUpdateService;->getDebugDelayAfterSwap()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    sget v2, Lcom/amazon/kindle/krl/R$id;->delay_after_swap_button:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/amazon/kcp/debug/DebugActivity$4;

    invoke-direct {v3, p0, v1, v0}, Lcom/amazon/kcp/debug/DebugActivity$4;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/widget/TextView;Lcom/amazon/kindle/contentupdate/IContentUpdateService;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    sget v1, Lcom/amazon/kindle/krl/R$id;->force_fail_updates_before_swap:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 359
    invoke-interface {v0}, Lcom/amazon/kindle/contentupdate/IContentUpdateService;->getForceFailUpdatesBeforeSwap()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 360
    new-instance v2, Lcom/amazon/kcp/debug/DebugActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/debug/DebugActivity$5;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Lcom/amazon/kindle/contentupdate/IContentUpdateService;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 368
    sget v0, Lcom/amazon/kindle/krl/R$id;->annotation_type:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    .line 369
    invoke-static {}, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;->values()[Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 368
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 371
    sget v0, Lcom/amazon/kindle/krl/R$id;->krf_accessibility_page_turn_support_toggle:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 372
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->isKrfAccessibilityPageTurnSupportDebugEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 374
    invoke-static {p0}, Lcom/amazon/kcp/debug/DebugActivity;->isCustomColorSettingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 375
    invoke-direct {p0}, Lcom/amazon/kcp/debug/DebugActivity;->registerCustomColorButtonProviders()V

    :cond_6
    return-void
.end method

.method private initializeBookTypeBadgeSetting()V
    .locals 2

    .line 2775
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_bookType_badge:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 2776
    sget-boolean v1, Lcom/amazon/kcp/debug/DebugUtils;->bookTypeCoverBadgeEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "Disable BookType in Cover Badge"

    .line 2777
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v1, "Enable BookType in cover badge"

    .line 2779
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private initializeDebugCheckbox(ILjava/lang/String;Z)V
    .locals 2

    const-string v0, "DebugSettings"

    const/4 v1, 0x0

    .line 380
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 381
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 382
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 383
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private initializeNLNOptions(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    .line 666
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_nln:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const-string v2, "EnableNln"

    .line 672
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 673
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/debug/DebugActivity;->updateNLNButton(Landroid/widget/Button;Z)V

    .line 674
    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 675
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 677
    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/debug/DebugActivity$18;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeTutorialOptions(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    .line 648
    sget p1, Lcom/amazon/kindle/krl/R$id;->lock_tutorials:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    if-nez p1, :cond_0

    return-void

    .line 653
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->areTutorialsEnabled()Z

    move-result p2

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_1

    const-string p2, "Lock"

    goto :goto_0

    :cond_1
    const-string p2, "Unlock"

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Tutorials"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 655
    new-instance p2, Lcom/amazon/kcp/debug/DebugActivity$17;

    invoke-direct {p2, p0, p1}, Lcom/amazon/kcp/debug/DebugActivity$17;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/widget/Button;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static isCustomColorSettingEnabled(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "DebugSettings"

    .line 1053
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 1054
    sget-object v1, Lcom/amazon/kcp/debug/DebugActivity;->CustomColorsEnabled:Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v1, "CustomColorSetting"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1055
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-ne p0, v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/amazon/kcp/debug/DebugActivity;->CustomColorsEnabled:Ljava/lang/Boolean;

    .line 1057
    :cond_1
    sget-object p0, Lcom/amazon/kcp/debug/DebugActivity;->CustomColorsEnabled:Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private openBookDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1614
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-static {p0, p1, v0}, Lcom/amazon/kindle/utils/StoreOpeners;->createBookDetailsOpener(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    return-void
.end method

.method private openBuyPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1619
    invoke-static {p0, p1}, Lcom/amazon/kindle/utils/StoreOpeners;->createBuyPageOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/BuyPageStoreOpener;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lcom/amazon/kindle/store/BuyPageStoreOpener;->setPrice(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/store/BuyPageStoreOpener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    return-void
.end method

.method private prepareDebugButtons()V
    .locals 2

    .line 2814
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 2815
    sget v0, Lcom/amazon/kindle/krl/R$id;->debug_button_container:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kcp/debug/DebugActivity;->m_buttonContainer:Landroid/widget/LinearLayout;

    .line 2816
    sget-object v0, Lcom/amazon/kcp/debug/DebugActivity;->m_debugButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/debug/DebugActivity$DebugButton;

    .line 2817
    invoke-direct {p0, v1}, Lcom/amazon/kcp/debug/DebugActivity;->addButton(Lcom/amazon/kcp/debug/DebugActivity$DebugButton;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private prepareHfsDebugOptions()V
    .locals 2

    .line 3044
    sget v0, Lcom/amazon/kindle/krl/R$id;->force_hfs_failure_toggle:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 3045
    invoke-static {p0}, Lcom/amazon/kcp/application/UserSettingsController;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getForceHFSResponseFailure()Z

    move-result v1

    .line 3046
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3048
    sget v0, Lcom/amazon/kindle/krl/R$id;->force_hfs_expired_toggle:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 3049
    invoke-static {p0}, Lcom/amazon/kcp/application/UserSettingsController;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getForceHFSExpired()Z

    move-result v1

    .line 3050
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3052
    sget v0, Lcom/amazon/kindle/krl/R$id;->use_debug_hfs_feed_toggle:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 3053
    invoke-static {p0}, Lcom/amazon/kcp/application/UserSettingsController;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getUseDebugHFSFeed()Z

    move-result v1

    .line 3054
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3056
    sget v0, Lcom/amazon/kindle/krl/R$id;->save_hfs_feed_toggle:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 3057
    invoke-static {p0}, Lcom/amazon/kcp/application/UserSettingsController;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getUseDebugHFSFeed()Z

    move-result v1

    .line 3058
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private readAnnotation(III)Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;
    .locals 0

    .line 3000
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    .line 3001
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;

    move-result-object p1

    .line 3002
    invoke-direct {p0, p2}, Lcom/amazon/kcp/debug/DebugActivity;->readPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 3006
    invoke-direct {p0, p3}, Lcom/amazon/kcp/debug/DebugActivity;->readPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p3

    if-nez p3, :cond_0

    .line 3007
    invoke-static {p1, p2}, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;->valueOf(Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;

    move-result-object p1

    goto :goto_0

    .line 3008
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;->valueOf(Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation$Type;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;

    move-result-object p1

    :goto_0
    return-object p1

    .line 3004
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid start position"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readContentIdentifier(II)Lcom/amazon/kindle/annotationconversion/ContentIdentifier;
    .locals 3

    .line 3030
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3031
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3032
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "Invalid "

    if-nez v1, :cond_1

    .line 3035
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3036
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3037
    invoke-static {p2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3040
    invoke-static {v0, p2}, Lcom/amazon/kindle/annotationconversion/ContentIdentifier;->valueOf(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/annotationconversion/ContentIdentifier;

    move-result-object p1

    return-object p1

    .line 3038
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3033
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private readModules(Ljava/io/InputStream;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "failed to close the input stream."

    .line 1130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1132
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1134
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 1136
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v3, "#"

    .line 1137
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "="

    .line 1138
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1139
    array-length v3, p1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    .line 1140
    aget-object v3, p1, v3

    const-string v4, ".module"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 1141
    aget-object p1, p1, v3

    .line 1142
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1146
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1151
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1153
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 1151
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1155
    throw p1

    :catch_1
    move-exception p1

    .line 1153
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1151
    :catch_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_1
    return-object v1

    :catch_3
    move-exception p1

    .line 1153
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 3

    .line 3013
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 3014
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3015
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3020
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3024
    new-instance v0, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    return-object v0

    .line 3022
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerCustomColorButtonProviders()V
    .locals 3

    .line 387
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 388
    sget-boolean v1, Lcom/amazon/kcp/debug/DebugActivity;->isCustomActionButtonRegistered:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 390
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kcp/debug/DebugActivity;->getTabletCustomColorActionButtonProvider()Lcom/amazon/kindle/krx/providers/ISortableProvider;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerActionButtonProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    .line 391
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/debug/DebugActivity;->getStandAloneCustomColorActionButtonProvider()Lcom/amazon/kindle/krx/providers/IProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerCustomActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    const/4 v0, 0x1

    .line 392
    sput-boolean v0, Lcom/amazon/kcp/debug/DebugActivity;->isCustomActionButtonRegistered:Z

    :cond_0
    return-void
.end method

.method public static registerDebugButton(Lcom/amazon/kcp/debug/DebugActivity$DebugButton;)V
    .locals 2

    .line 2862
    sget-object v0, Lcom/amazon/kcp/debug/DebugActivity;->m_debugButtons:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2863
    sget-object v0, Lcom/amazon/kcp/debug/DebugActivity;->m_debugButtons:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2864
    invoke-static {}, Lcom/amazon/kcp/debug/DebugActivity;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$RegisterEvent;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/debug/DebugActivity$RegisterEvent;-><init>(Lcom/amazon/kcp/debug/DebugActivity$DebugButton;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_0
    return-void
.end method

.method private saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2335
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2337
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2340
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x5a

    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2341
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 2342
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2344
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private setAutoShelvingEnabled(Z)Z
    .locals 2

    const-string v0, "com.amazon.kindle.autoshelf.AutoShelfUtils"

    const-string v1, "isAutoShelfFeatureEnabled"

    .line 2672
    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kcp/debug/DebugActivity;->setStaticBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public static setCurrentColorsOnCustomColorDialog(Landroid/view/View;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 7

    .line 721
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 723
    instance-of v1, p1, Lcom/amazon/android/docviewer/DebugKindleDocViewer;

    if-eqz v1, :cond_8

    .line 724
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ResizableFont:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 725
    invoke-interface {v0, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->FontFaceChange:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    .line 726
    invoke-interface {v0, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 727
    :cond_0
    check-cast p1, Lcom/amazon/android/docviewer/DebugKindleDocViewer;

    .line 729
    invoke-interface {p1}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugGetTextColor()I

    move-result v0

    .line 730
    sget v1, Lcom/amazon/kindle/krl/R$id;->fontRText:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 731
    sget v2, Lcom/amazon/kindle/krl/R$id;->fontGText:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 732
    sget v3, Lcom/amazon/kindle/krl/R$id;->fontBText:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 733
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 737
    invoke-interface {p1}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugGetBackgroundColor()I

    move-result v0

    .line 738
    sget v1, Lcom/amazon/kindle/krl/R$id;->backgroundRText:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 739
    sget v2, Lcom/amazon/kindle/krl/R$id;->backgroundGText:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 740
    sget v3, Lcom/amazon/kindle/krl/R$id;->backgroundBText:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 741
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 745
    sget v0, Lcom/amazon/kindle/krl/R$id;->fontSizeText:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 746
    sget v1, Lcom/amazon/kindle/krl/R$id;->spacingText:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 747
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugGetFontSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugGetLineSpacing()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 750
    sget v0, Lcom/amazon/kindle/krl/R$id;->marginLeftText:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 751
    sget v1, Lcom/amazon/kindle/krl/R$id;->marginTopText:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 752
    sget v2, Lcom/amazon/kindle/krl/R$id;->marginRightText:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 753
    sget v3, Lcom/amazon/kindle/krl/R$id;->marginBottomText:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    .line 754
    invoke-interface {p1}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugGetMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p1

    .line 755
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 759
    :cond_1
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne v1, v2, :cond_8

    .line 760
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-kfx-ebook"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 761
    check-cast p1, Lcom/amazon/android/docviewer/DebugKindleDocViewer;

    .line 763
    sget-object v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_MASK_COLOR:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugGetProperty(Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;)I

    move-result v0

    .line 764
    sget v1, Lcom/amazon/kindle/krl/R$id;->maskAText:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 765
    sget v2, Lcom/amazon/kindle/krl/R$id;->maskRText:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 766
    sget v3, Lcom/amazon/kindle/krl/R$id;->maskGText:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 767
    sget v4, Lcom/amazon/kindle/krl/R$id;->maskBText:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 768
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 769
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 770
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 771
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 773
    sget-object v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_TRANSITION_DURATION:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugGetProperty(Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;)I

    move-result v0

    .line 774
    sget v1, Lcom/amazon/kindle/krl/R$id;->animationDurationText:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 775
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 777
    sget v0, Lcom/amazon/kindle/krl/R$id;->fitToWidthCheck:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 778
    sget-object v1, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->FIT_TO_WIDTH:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-interface {p1, v1}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugGetProperty(Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    .line 779
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 781
    sget v0, Lcom/amazon/kindle/krl/R$id;->twoPageUpCheck:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 782
    sget-object v4, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->MULTI_COLUMN:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-interface {p1, v4}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugGetProperty(Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;)I

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    .line 783
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    xor-int/2addr v1, v3

    .line 784
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 786
    sget v0, Lcom/amazon/kindle/krl/R$id;->fullpageOnEnterCheck:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 787
    sget-object v1, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_SHOW_FULL_ON_ENTER:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-interface {p1, v1}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugGetProperty(Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;)I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const/4 v1, 0x1

    .line 788
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 790
    sget v0, Lcom/amazon/kindle/krl/R$id;->fullpageOnExitCheck:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 791
    sget-object v1, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_SHOW_FULL_ON_EXIT:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-interface {p1, v1}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugGetProperty(Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;)I

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    const/4 v1, 0x1

    .line 792
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 794
    sget v0, Lcom/amazon/kindle/krl/R$id;->verticalScrollCheck:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 795
    sget-object v1, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->VERTICAL_SCROLL:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-interface {p1, v1}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugGetProperty(Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;)I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    const/4 v1, 0x1

    .line 796
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 798
    sget v0, Lcom/amazon/kindle/krl/R$id;->autoRotateCheck:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    .line 799
    sget-object v0, Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;->GV_AUTO_ROTATE:Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/DebugKindleDocViewer;->debugGetProperty(Lcom/amazon/android/docviewer/DebugKindleDocViewer$ExtraSettings;)I

    move-result p1

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v2, 0x1

    .line 800
    :goto_5
    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_8
    :goto_6
    return-void
.end method

.method private setDebugIndexingEnabled(Z)Z
    .locals 2

    const-string v0, "com.amazon.krf.platform.KRIFThumbnailManager"

    const-string v1, "DEBUG_INDEXING"

    .line 2676
    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kcp/debug/DebugActivity;->setStaticBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private setLibraryViewSelection()V
    .locals 7

    .line 2600
    sget v0, Lcom/amazon/kindle/krl/R$id;->library_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 2601
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2602
    invoke-static {}, Lcom/amazon/kindle/krx/library/LibraryView;->values()[Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 2603
    sget-object v6, Lcom/amazon/kindle/krx/library/LibraryView;->BACK_ISSUES:Lcom/amazon/kindle/krx/library/LibraryView;

    if-eq v5, v6, :cond_0

    sget-object v6, Lcom/amazon/kindle/krx/library/LibraryView;->COLLECTION_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    if-eq v5, v6, :cond_0

    .line 2604
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2606
    :cond_1
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v2, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2607
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private setNLNEnabled(Z)Z
    .locals 2

    const-string v0, "com.amazon.kindle.nln.pageflip.NLNUtils"

    const-string v1, "IS_NLN_ENABLED"

    .line 2668
    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kcp/debug/DebugActivity;->setStaticBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private setStaticBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    .line 2681
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2682
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2683
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 2684
    invoke-virtual {v0, v2, p3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p3

    .line 2687
    sget-object v0, Lcom/amazon/kcp/debug/DebugActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private updateBuyInformation()V
    .locals 7

    .line 1584
    sget v0, Lcom/amazon/kindle/krl/R$id;->debug_purchasing_buy_info:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1588
    invoke-static {}, Lcom/amazon/kindle/store/utils/PriceCache;->getAllPrices()[Lcom/amazon/kindle/store/models/PriceInfo;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    .line 1590
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 1591
    aget-object v4, v1, v3

    .line 1593
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Asin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/store/IPriceInfo;->getAsin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " unbuyable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/store/IPriceInfo;->isUnbuyable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " buyable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/store/IPriceInfo;->isBuyable()Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1595
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1596
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1599
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buy info: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1602
    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$34;

    invoke-direct {v1, p0, v0, v2}, Lcom/amazon/kcp/debug/DebugActivity$34;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateEnablePerfLoggingButton(Landroid/widget/Button;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p2, "Disable logcat perf markers"

    .line 1115
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p2, "Enable logcat perf markers"

    .line 1117
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateEnableQAPerfLoggingButton(Landroid/widget/Button;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p2, "Disable logcat perf markers for QA"

    .line 1123
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p2, "Enable logcat perf markers for QA"

    .line 1125
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateEnableSystraceButton(Landroid/widget/Button;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p2, "Disable systrace markers"

    .line 1107
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p2, "Enable systrace markers"

    .line 1109
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateEnableTracingButton(Landroid/widget/Button;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p2, "Disable tracing of cold open"

    .line 1091
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p2, "Enable tracing of cold open"

    .line 1093
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateEnableXMLToDiskButton(Landroid/widget/Button;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p2, "Disable write xml responses to disk"

    .line 1099
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p2, "Enable write xml responses to disk"

    .line 1101
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updateNLNButton(Landroid/widget/Button;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p2, "Force Disable NLN"

    .line 2661
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p2, "Enable NLN"

    .line 2663
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private updatePricingText()V
    .locals 8

    .line 1538
    sget v0, Lcom/amazon/kindle/krl/R$id;->debug_purchasing_price_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1542
    invoke-static {}, Lcom/amazon/kindle/store/utils/PriceCache;->getAllPrices()[Lcom/amazon/kindle/store/models/PriceInfo;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    .line 1544
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_4

    .line 1545
    aget-object v4, v1, v3

    .line 1547
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "price looping: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/store/IPriceInfo;->getAsin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1549
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Asin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/store/IPriceInfo;->getAsin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1550
    invoke-interface {v4}, Lcom/amazon/kindle/krx/store/IPriceInfo;->isOwned()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1551
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Owned "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1552
    :cond_0
    invoke-interface {v4}, Lcom/amazon/kindle/krx/store/IPriceInfo;->isBuyable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1553
    invoke-interface {v4}, Lcom/amazon/kindle/krx/store/IPriceInfo;->isBorrowable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1554
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Borrowable "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1556
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/store/IPriceInfo;->getFormattedPrice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1559
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Not Buyable "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1562
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/store/IPriceInfo;->getState()Lcom/amazon/kindle/krx/store/PurchaseState;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1564
    invoke-interface {v4}, Lcom/amazon/kindle/krx/store/IPriceInfo;->getPriceTTL()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1565
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " valid until: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/store/IPriceInfo;->getPriceTTL()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1568
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " buyable: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/store/IPriceInfo;->isBuyable()Z

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1570
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1571
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1575
    :cond_4
    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$33;

    invoke-direct {v1, p0, v0, v2}, Lcom/amazon/kcp/debug/DebugActivity$33;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateToggleDebugSetting(Landroid/widget/CheckBox;Ljava/lang/String;)V
    .locals 2

    const-string v0, "DebugSettings"

    const/4 v1, 0x0

    .line 2623
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2624
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2625
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2626
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private updateToggleLocalCleanupInMAPAccountRemovedReceiverButton()V
    .locals 3

    .line 2327
    sget v0, Lcom/amazon/kindle/krl/R$id;->toggle_local_cleanup_in_map_account_removed_receiver:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/amazon/kcp/debug/DebugActivity;->localCleanupInMAPAccountRemovedReceiverEnabled:Z

    if-eqz v2, :cond_0

    const-string v2, "Disable"

    goto :goto_0

    :cond_0
    const-string v2, "Enable"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " local cleanup in MAPAccountRemovedReceiver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2328
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateYJCacheSizeText()V
    .locals 2

    .line 2546
    sget v0, Lcom/amazon/kindle/krl/R$id;->debug_yj_cache_size_for_main_process:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2549
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/debug/YJCacheSizeDebug;->getYJCacheSizeForMainProcess(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 2548
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2552
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->debug_yj_cache_size_for_thumbnail_process:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2555
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/debug/YJCacheSizeDebug;->getYJCacheSizeForThumbnailProcess(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 2554
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public deleteFontDir(Landroid/view/View;)V
    .locals 0

    .line 1693
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/font/FontUtils;->deleteDownloadedFontDir(Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    return-void
.end method

.method public deregister(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public initializeAutoShelfOptions(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    .line 692
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_auto_shelving_switch:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const-string v2, "EnableAutoShelving"

    .line 697
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 698
    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugActivity;->setAutoShelvingEnabled(Z)Z

    .line 699
    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 700
    invoke-interface {p2, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 701
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 703
    new-instance p1, Lcom/amazon/kcp/debug/DebugActivity$19;

    invoke-direct {p1, p0, p2, v0}, Lcom/amazon/kcp/debug/DebugActivity$19;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/content/SharedPreferences$Editor;Landroid/widget/Switch;)V

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public launchLibrary(Landroid/view/View;)V
    .locals 1

    .line 2611
    sget p1, Lcom/amazon/kindle/krl/R$id;->library_view:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    .line 2612
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/krx/library/LibraryView;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/library/LibraryView;

    move-result-object p1

    .line 2613
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/ILibraryController;->showLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    return-void
.end method

.method public mphlSetButtonOnClick(Landroid/view/View;)V
    .locals 5

    const/4 p1, 0x0

    .line 2574
    :try_start_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->mphl_delay_ms_tv:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2575
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "com.amazon.kcp.reader.gestures.SelectionGestureHandler"

    .line 2577
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "TIME_BEFORE_MULTIPAGE_HIGHLIGHT_PAGE_FLIP"

    .line 2578
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 2579
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 2580
    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 2582
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MPHL Flip Delay set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2584
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set the delay with exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onAppRestriction(Landroid/view/View;)V
    .locals 4

    .line 1767
    sget p1, Lcom/amazon/kindle/krl/R$id;->app_name:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 1768
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1769
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1771
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isAppDisabled(Ljava/lang/String;)Z

    move-result p1

    .line 1772
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App Restricted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1774
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1776
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Not Applicable"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1778
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public onBookPurchaseBlocked(Landroid/view/View;)V
    .locals 4

    .line 1677
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1678
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1680
    invoke-interface {p1}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBookPurchaseBlocked()Z

    move-result p1

    .line 1681
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Book purchase blocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1683
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1685
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Not Applicable"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1687
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public onBookPurchaseProtected(Landroid/view/View;)V
    .locals 4

    .line 1725
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1726
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1728
    invoke-interface {p1}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBookPurchaseProtected()Z

    move-result p1

    .line 1729
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Book purchase protected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1731
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1733
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Not Applicable"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1735
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public onBookTypeBadgeButtonClick(Landroid/view/View;)V
    .locals 3

    .line 2784
    sget p1, Lcom/amazon/kindle/krl/R$id;->enable_bookType_badge:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const/4 v0, 0x0

    const-string v1, "DebugSettings"

    .line 2785
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2786
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2787
    sget-boolean v2, Lcom/amazon/kcp/debug/DebugUtils;->bookTypeCoverBadgeEnabled:Z

    if-eqz v2, :cond_0

    const-string v2, "Enable BookType in cover badge"

    .line 2788
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2789
    sput-boolean v0, Lcom/amazon/kcp/debug/DebugUtils;->bookTypeCoverBadgeEnabled:Z

    goto :goto_0

    :cond_0
    const-string v0, "Disable BookType in cover badge"

    .line 2791
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    const-string v0, "New and reading progress information wont be shown"

    .line 2792
    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2793
    sput-boolean p1, Lcom/amazon/kcp/debug/DebugUtils;->bookTypeCoverBadgeEnabled:Z

    .line 2796
    :goto_0
    sget-boolean p1, Lcom/amazon/kcp/debug/DebugUtils;->bookTypeCoverBadgeEnabled:Z

    const-string v0, "EnableBookTypeCoverBadge"

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2797
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onButtonRegisteredEvent(Lcom/amazon/kcp/debug/DebugActivity$RegisterEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 2842
    iget-object p1, p1, Lcom/amazon/kcp/debug/DebugActivity$RegisterEvent;->registeredButton:Lcom/amazon/kcp/debug/DebugActivity$DebugButton;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/debug/DebugActivity;->addButton(Lcom/amazon/kcp/debug/DebugActivity$DebugButton;)V

    return-void
.end method

.method public onCancelBook(Landroid/view/View;)V
    .locals 2

    .line 2112
    sget p1, Lcom/amazon/kindle/krl/R$id;->textview_download_bookId:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 2113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.amazon.kindle.action.CANCEL_DOWNLOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2114
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "bookId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2115
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onChangeCampaignDomain(Landroid/view/View;)V
    .locals 3

    .line 2159
    new-instance p1, Landroid/widget/EditText;

    invoke-direct {p1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 2160
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Enter new campaign Domain"

    .line 2162
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2163
    invoke-static {}, Lcom/amazon/kindle/webservices/DynamicConfigManager;->getInstance()Lcom/amazon/kindle/webservices/IDynamicConfigManager;

    move-result-object v1

    const-string/jumbo v2, "url.rec.prod"

    invoke-interface {v1, v2}, Lcom/amazon/kindle/webservices/IDynamicConfigManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2164
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2166
    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$39;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/DebugActivity$39;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/widget/EditText;)V

    const-string v2, "Ok"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2174
    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$40;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/debug/DebugActivity$40;-><init>(Lcom/amazon/kcp/debug/DebugActivity;)V

    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2180
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2182
    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$41;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/DebugActivity$41;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2190
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public onChangeDictionaryLanguage(Landroid/view/View;)V
    .locals 4

    .line 1502
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "Use book\'s language"

    .line 1503
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1504
    invoke-static {}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getAllDictionaryLanguages()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1507
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 1508
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1512
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 1513
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getDictionaryLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1514
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 1515
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 1516
    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 1522
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Pick a language"

    .line 1523
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1524
    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$32;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/DebugActivity$32;-><init>(Lcom/amazon/kcp/debug/DebugActivity;[Ljava/lang/String;)V

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1534
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onClearDynamicConfig(Landroid/view/View;)V
    .locals 0

    .line 1485
    invoke-static {}, Lcom/amazon/kindle/webservices/DynamicConfigManager;->getInstance()Lcom/amazon/kindle/webservices/IDynamicConfigManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/webservices/IDynamicConfigManager;->clearConfigUrls()V

    return-void
.end method

.method public onClearLastNotificationDate(Landroid/view/View;)V
    .locals 4

    .line 1661
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUpdateManager()Lcom/amazon/kcp/application/internal/IUpdateManager;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/application/AndroidUpdateManager;

    .line 1663
    invoke-virtual {p1}, Lcom/amazon/kcp/application/AndroidUpdateManager;->getNotificationLastShownDate()Ljava/util/Date;

    move-result-object v0

    .line 1664
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last Notification Date was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Clearing."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1666
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    .line 1667
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/AndroidUpdateManager;->setNotificationLastShownDate(Ljava/util/Date;)V

    return-void
.end method

.method public onClearSettingsClick(Landroid/view/View;)V
    .locals 0

    .line 1166
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->clearSettings()V

    return-void
.end method

.method public onClearSidecarMigrationSetting(Landroid/view/View;)V
    .locals 7

    .line 2560
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    const/4 v0, 0x0

    .line 2562
    :try_start_0
    const-class v1, Lcom/amazon/kindle/persistence/AbstractSettingsController;

    const-string/jumbo v2, "persistValue"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2563
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 2564
    sget-object v3, Lcom/amazon/kcp/application/UserSettingsController$Setting;->SIDECAR_MIGRATION:Lcom/amazon/kcp/application/UserSettingsController$Setting;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2565
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Got \'im"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2567
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Didn\'t clear"

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2568
    sget-object v0, Lcom/amazon/kcp/debug/DebugActivity;->TAG:Ljava/lang/String;

    const-string v1, "Didn\'t clear flag"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onClearStoreCredentials(Landroid/view/View;)V
    .locals 0

    .line 1474
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/store/IWebStoreController;->clearStoreCredentials()V

    return-void
.end method

.method public onClearTutorials(Landroid/view/View;)V
    .locals 1

    .line 1435
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getTutorialManager()Lcom/amazon/kcp/info/TutorialManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/info/TutorialManager;->clearTutorialHistory()V

    .line 1436
    invoke-static {}, Lcom/amazon/kcp/debug/DebugActivity;->getMessageQueue()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/krx/events/KRXClearTutorialHistoryEvent;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/events/KRXClearTutorialHistoryEvent;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    const-string p1, "Tutorials cleared. Period. (Andrei\'s words)"

    const/4 v0, 0x0

    .line 1437
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onConvertAnnotation(Landroid/view/View;)V
    .locals 3

    .line 2963
    :try_start_0
    sget p1, Lcom/amazon/kindle/krl/R$id;->annotation_type:I

    sget v0, Lcom/amazon/kindle/krl/R$id;->annotation_start_position:I

    sget v1, Lcom/amazon/kindle/krl/R$id;->annotation_end_position:I

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kcp/debug/DebugActivity;->readAnnotation(III)Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2965
    sget v0, Lcom/amazon/kindle/krl/R$id;->source_asin:I

    sget v1, Lcom/amazon/kindle/krl/R$id;->source_guid:I

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/debug/DebugActivity;->readContentIdentifier(II)Lcom/amazon/kindle/annotationconversion/ContentIdentifier;

    move-result-object v0

    .line 2966
    sget v1, Lcom/amazon/kindle/krl/R$id;->target_asin:I

    sget v2, Lcom/amazon/kindle/krl/R$id;->target_guid:I

    invoke-direct {p0, v1, v2}, Lcom/amazon/kcp/debug/DebugActivity;->readContentIdentifier(II)Lcom/amazon/kindle/annotationconversion/ContentIdentifier;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2973
    new-instance v2, Lcom/amazon/kcp/debug/DebugActivity$46;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/amazon/kcp/debug/DebugActivity$46;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Ljava/util/List;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    .line 2994
    invoke-virtual {v2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :catch_0
    move-exception p1

    .line 2968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error reading input: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2969
    sget-object v0, Lcom/amazon/kcp/debug/DebugActivity;->TAG:Ljava/lang/String;

    const-string v1, "Error reading input"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 228
    sget v0, Lcom/amazon/kindle/krl/R$style;->Theme_Kindle_NoActionBar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 229
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 230
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isReleaseBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 235
    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$layout;->debug_screen:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 238
    sget p1, Lcom/amazon/kindle/krl/R$layout;->meminfo:I

    invoke-static {p1}, Lcom/amazon/kcp/debug/DebugActivity;->addDebugView(I)V

    .line 240
    sget p1, Lcom/amazon/kindle/krl/R$layout;->log_level:I

    invoke-static {p1}, Lcom/amazon/kcp/debug/DebugActivity;->addDebugView(I)V

    .line 242
    invoke-direct {p0}, Lcom/amazon/kcp/debug/DebugActivity;->initialize()V

    .line 244
    invoke-direct {p0}, Lcom/amazon/kcp/debug/DebugActivity;->prepareDebugButtons()V

    return-void
.end method

.method public onDeleteAllAnnotations(Landroid/view/View;)V
    .locals 5

    const/4 p1, 0x0

    .line 2395
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "No-op: KindleDocViewer is null"

    .line 2397
    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 2400
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    .line 2402
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getAnnotationsList()[Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v1

    .line 2403
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 2404
    invoke-interface {v0, v4}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->deleteAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2407
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " raw annotations"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2408
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete annotations: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public onDeleteDiskCachedCoversClick(Landroid/view/View;)V
    .locals 0

    .line 1198
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/cover/ICoverImageService;->deleteAllDiskCachedCovers()V

    return-void
.end method

.method public onDeleteDownloadedFontsClick(Landroid/view/View;)V
    .locals 3

    .line 1209
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object p1

    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fonts"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->emptyDirectory(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/io/FileSystemHelper;->emptyDirectory(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Z

    return-void
.end method

.method public onDownloadAllBooks(Landroid/view/View;)V
    .locals 11

    const-string/jumbo p1, "notification"

    .line 1875
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/app/NotificationManager;

    .line 1877
    sget-object p1, Lcom/amazon/kcp/debug/DebugActivity;->IS_DOWNLOADING_BOOKS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const-string v6, "Cancel Downloads"

    const-string v7, "Download All Books"

    const/4 v8, 0x0

    if-eqz p1, :cond_1

    .line 1878
    sget-object p1, Lcom/amazon/kcp/debug/DebugActivity;->IS_DOWNLOADING_BOOKS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1880
    sget p1, Lcom/amazon/kindle/krl/R$id;->download_all_books:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sget-object v0, Lcom/amazon/kcp/debug/DebugActivity;->IS_DOWNLOADING_BOOKS:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1881
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v7

    :goto_0
    invoke-virtual {p1, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1882
    sget p1, Lcom/amazon/kcp/debug/DebugActivity;->NOTIFICATION_ID:I

    invoke-virtual {v5, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    .line 1886
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 1888
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object p1

    const/4 v0, 0x0

    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$35;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/debug/DebugActivity$35;-><init>(Lcom/amazon/kcp/debug/DebugActivity;)V

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/content/ILibraryService;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/ContentMetadataFilter;)Ljava/util/Collection;

    move-result-object p1

    .line 1896
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1897
    sget-object v0, Lcom/amazon/kcp/debug/DebugActivity;->IS_DOWNLOADING_BOOKS:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1899
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    .line 1901
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x1080081

    .line 1903
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const-string v0, "Downloading Books"

    .line 1904
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1905
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1906
    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1908
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    const-string v0, "kindle_debug_channel"

    .line 1909
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_2
    const-string v4, " queued for download."

    .line 1916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "All books are in the process of being"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1917
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1923
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1925
    sget v0, Lcom/amazon/kcp/debug/DebugActivity;->NOTIFICATION_ID:I

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1927
    new-instance v10, Lcom/amazon/kcp/debug/DebugActivity$36;

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/debug/DebugActivity$36;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/app/Notification$Builder;ILjava/lang/String;Landroid/app/NotificationManager;)V

    new-array v0, v9, [Ljava/util/Collection;

    aput-object p1, v0, v8

    .line 1962
    invoke-virtual {v10, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1965
    :cond_3
    sget p1, Lcom/amazon/kindle/krl/R$id;->download_all_books:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sget-object v0, Lcom/amazon/kcp/debug/DebugActivity;->IS_DOWNLOADING_BOOKS:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1966
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move-object v6, v7

    :goto_1
    invoke-virtual {p1, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDownloadBook(Landroid/view/View;)V
    .locals 2

    .line 2105
    sget p1, Lcom/amazon/kindle/krl/R$id;->textview_download_bookId:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 2106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.amazon.kindle.action.DOWNLOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2107
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "bookId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2108
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onDumpDatabases(Landroid/view/View;)V
    .locals 8

    const/4 p1, 0x0

    .line 2351
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2352
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 2353
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/data/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/databases"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2356
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyyMMdd_H_mm_ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 2357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/kindle_dbs/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2358
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2359
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2360
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 2363
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2364
    new-instance v3, Lcom/amazon/kcp/debug/DebugActivity$43;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/debug/DebugActivity$43;-><init>(Lcom/amazon/kcp/debug/DebugActivity;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 2370
    array-length v1, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, v2, v4

    .line 2371
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2372
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2373
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2374
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2375
    invoke-static {v6, v7}, Lcom/amazon/kindle/io/IOUtils;->writeInToFile(Ljava/io/InputStream;Ljava/io/File;)I

    .line 2376
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2379
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Databases dumped to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2380
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 2382
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Database directory is invalid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2383
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2388
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error dumping databases: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2389
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2388
    invoke-static {v1, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 2389
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onDumpHeap(Landroid/view/View;)V
    .locals 5

    .line 2494
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2495
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kindle.hprof-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2496
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2497
    sget v1, Lcom/amazon/kindle/krl/R$id;->dump_heap:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2498
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/amazon/kcp/debug/DebugActivity$44;

    invoke-direct {v2, p0, v0, p1}, Lcom/amazon/kcp/debug/DebugActivity$44;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Ljava/lang/String;Landroid/view/View;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2512
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onDumpPageSettings(Landroid/view/View;)V
    .locals 8

    const-string p1, " / "

    const-string v0, "ja"

    const-string/jumbo v1, "zh"

    const-string v2, "en"

    const-string v3, "\n"

    const/4 v4, 0x1

    .line 2696
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2697
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v6

    const-string v7, "EN Font Name: "

    .line 2700
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2701
    invoke-virtual {v6, v2}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamily(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2702
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "EN Secondary Font Name: "

    .line 2703
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2704
    invoke-virtual {v6, v2}, Lcom/amazon/kcp/application/UserSettingsController;->getSecondaryFontFamily(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2705
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CN Font Name: "

    .line 2706
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2707
    invoke-virtual {v6, v1}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamily(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2708
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CN Secondary Font Name: "

    .line 2709
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2710
    invoke-virtual {v6, v1}, Lcom/amazon/kcp/application/UserSettingsController;->getSecondaryFontFamily(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2711
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "JP Font Name: "

    .line 2712
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2713
    invoke-virtual {v6, v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamily(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2714
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "JP Secondary Font Name: "

    .line 2715
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2716
    invoke-virtual {v6, v0}, Lcom/amazon/kcp/application/UserSettingsController;->getSecondaryFontFamily(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2717
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2718
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "The following are for the currently open book only. \n"

    .line 2720
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2721
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Font Size: "

    .line 2724
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2725
    invoke-static {}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getFontSizes()[I

    move-result-object v0

    invoke-virtual {v6}, Lcom/amazon/kcp/application/UserSettingsController;->getFontSizeIndex()I

    move-result v1

    aget v0, v0, v1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2726
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2728
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->getAvailableWindowDimensions(Landroid/content/Context;Z)Landroid/graphics/Point;

    move-result-object v0

    const-string v1, "Screen Width: "

    .line 2731
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2732
    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2733
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Screen Height: "

    .line 2736
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2737
    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2738
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Additional Line Spacing: "

    .line 2740
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2741
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    .line 2744
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    goto :goto_0

    .line 2746
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getLineSpacing()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2747
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    .line 2749
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    const-string p1, "Left / Right Margins: null / null\n"

    .line 2752
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Top / Bottom Margins: null / null\n"

    .line 2753
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v2, "Left / Right Margins: "

    .line 2755
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2756
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Top / Bottom Margins: "

    .line 2757
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2758
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2762
    :goto_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Page Settings For Open Book"

    .line 2763
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2764
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "Close"

    .line 2765
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2766
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "Couldn\'t get page settings. Is a book open?"

    .line 2769
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method public onEnableCustomColors(Landroid/view/View;)V
    .locals 2

    .line 2060
    sget-object p1, Lcom/amazon/kcp/debug/DebugActivity;->CustomColorsEnabled:Ljava/lang/Boolean;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2061
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/amazon/kcp/debug/DebugActivity;->CustomColorsEnabled:Ljava/lang/Boolean;

    .line 2062
    sget p1, Lcom/amazon/kindle/krl/R$id;->custom_colors_switch:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v1, "Enable Custom Settings"

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2064
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/amazon/kcp/debug/DebugActivity;->CustomColorsEnabled:Ljava/lang/Boolean;

    .line 2065
    invoke-direct {p0}, Lcom/amazon/kcp/debug/DebugActivity;->registerCustomColorButtonProviders()V

    .line 2066
    sget p1, Lcom/amazon/kindle/krl/R$id;->custom_colors_switch:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v1, "Disable Custom Settings"

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-string p1, "DebugSettings"

    .line 2068
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 2069
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2070
    sget-object v0, Lcom/amazon/kcp/debug/DebugActivity;->CustomColorsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "CustomColorSetting"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2071
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onEnableFirstPageRenderLock(Landroid/view/View;)V
    .locals 1

    .line 2075
    sget p1, Lcom/amazon/kcp/debug/DebugActivity;->firstPageRenderLockEnabled:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 2076
    sput p1, Lcom/amazon/kcp/debug/DebugActivity;->firstPageRenderLockEnabled:I

    .line 2077
    sget p1, Lcom/amazon/kindle/krl/R$id;->lock_switch:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "Enable first page render lock"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2079
    :cond_0
    sput v0, Lcom/amazon/kcp/debug/DebugActivity;->firstPageRenderLockEnabled:I

    .line 2080
    sget p1, Lcom/amazon/kindle/krl/R$id;->lock_switch:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "Disable first page render lock"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onEnableSubPixelRendering(Landroid/view/View;)V
    .locals 1

    .line 2040
    sget-boolean p1, Lcom/amazon/kcp/debug/DebugActivity;->SPRoptionEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2041
    sput-boolean p1, Lcom/amazon/kcp/debug/DebugActivity;->SPRoptionEnabled:Z

    .line 2042
    sget p1, Lcom/amazon/kindle/krl/R$id;->spr_switch:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "Enable SPR toggle"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2044
    sput-boolean p1, Lcom/amazon/kcp/debug/DebugActivity;->SPRoptionEnabled:Z

    .line 2045
    sget p1, Lcom/amazon/kindle/krl/R$id;->spr_switch:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "Disable SPR toggle"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onEnableTestFonts(Landroid/view/View;)V
    .locals 1

    .line 2050
    sget-boolean p1, Lcom/amazon/kcp/debug/DebugActivity;->TestFontsEnabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2051
    sput-boolean p1, Lcom/amazon/kcp/debug/DebugActivity;->TestFontsEnabled:Z

    .line 2052
    sget p1, Lcom/amazon/kindle/krl/R$id;->font_switch:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "Enable test fonts"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 2054
    sput-boolean p1, Lcom/amazon/kcp/debug/DebugActivity;->TestFontsEnabled:Z

    .line 2055
    sget p1, Lcom/amazon/kindle/krl/R$id;->font_switch:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const-string v0, "Disable test fonts"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onExitAppClick(Landroid/view/View;)V
    .locals 7

    .line 1223
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    .line 1226
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "activity"

    .line 1227
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1228
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1229
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne p1, v4, :cond_0

    .line 1231
    iget-object v2, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    if-eqz v2, :cond_3

    .line 1237
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1238
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1239
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1240
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v1}, Landroid/os/Process;->sendSignal(II)V

    goto :goto_1

    .line 1246
    :cond_3
    invoke-static {p1, v1}, Landroid/os/Process;->sendSignal(II)V

    return-void
.end method

.method public onForceHFSExpired(Landroid/view/View;)V
    .locals 1

    .line 2921
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 2922
    check-cast p1, Landroid/widget/CheckBox;

    .line 2923
    invoke-static {p0}, Lcom/amazon/kcp/application/UserSettingsController;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setForceHFSExpired(Z)V

    :cond_0
    return-void
.end method

.method public onForceHFSResponseFailure(Landroid/view/View;)V
    .locals 1

    .line 2914
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 2915
    check-cast p1, Landroid/widget/CheckBox;

    .line 2916
    invoke-static {p0}, Lcom/amazon/kcp/application/UserSettingsController;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setForceHFSResponseFailure(Z)V

    :cond_0
    return-void
.end method

.method public onInvalidateFingerprint(Landroid/view/View;)V
    .locals 5

    const-string p1, "DeviceFingerprint"

    .line 1256
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/persistence/AndroidSecureStorage;->create(Landroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSecureStorage;

    move-result-object v0

    const/4 v1, 0x0

    .line 1259
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/persistence/AndroidSecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1260
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android_id"

    .line 1263
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1265
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/amazon/kindle/persistence/AndroidSecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1267
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Error parsing fingerprint"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 1271
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Fingerprint changed"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    return-void
.end method

.method public onNewsstandPurchaseBlocked(Landroid/view/View;)V
    .locals 4

    .line 1703
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1704
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1706
    invoke-interface {p1}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isNewsstandPurchaseBlocked()Z

    move-result p1

    .line 1707
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Newsstand purchase blocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1709
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1711
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Not Applicable"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1713
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public onNwstdBackissuesMagazinesLimitReset(Landroid/view/View;)V
    .locals 3

    .line 2447
    :try_start_0
    sget p1, Lcom/amazon/kindle/krl/R$id;->debug_nwstd_backissues_MAGAZINES_timelimit:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const/4 v0, 0x0

    .line 2448
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v0, -0x1

    .line 2449
    sput-wide v0, Lcom/amazon/kcp/debug/DebugActivity;->NewsstandLibraryBackissuesTimeLimit_magazines:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2451
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error resetting magazines limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2452
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 2451
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 2452
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onNwstdBackissuesMagazinesLimitSet(Landroid/view/View;)V
    .locals 4

    const/4 p1, 0x0

    .line 2421
    :try_start_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->debug_nwstd_backissues_MAGAZINES_timelimit:I

    .line 2422
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2423
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2422
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    int-to-long v1, v0

    .line 2426
    sput-wide v1, Lcom/amazon/kcp/debug/DebugActivity;->NewsstandLibraryBackissuesTimeLimit_magazines:J

    .line 2427
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accepted value of ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] minutes"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2429
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2433
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cannot accept a negative time limit - please input a positive value (in minutes)"

    .line 2432
    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2435
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2439
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting Newsstand library magazines back-issues expiry limit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2441
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2438
    invoke-static {v1, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 2441
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onNwstdBackissuesNewspapersLimitReset(Landroid/view/View;)V
    .locals 3

    .line 2484
    :try_start_0
    sget p1, Lcom/amazon/kindle/krl/R$id;->debug_nwstd_backissues_NEWSPAPERS_timelimit:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const/4 v0, 0x0

    .line 2485
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v0, -0x1

    .line 2486
    sput-wide v0, Lcom/amazon/kcp/debug/DebugActivity;->NewsstandLibraryBackissuesTimeLimit_newspapers:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2488
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error resetting newspapers limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2489
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 2488
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 2489
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onNwstdBackissuesNewspapersLimitSet(Landroid/view/View;)V
    .locals 4

    const/4 p1, 0x0

    .line 2458
    :try_start_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->debug_nwstd_backissues_NEWSPAPERS_timelimit:I

    .line 2459
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2460
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2459
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    int-to-long v1, v0

    .line 2463
    sput-wide v1, Lcom/amazon/kcp/debug/DebugActivity;->NewsstandLibraryBackissuesTimeLimit_newspapers:J

    .line 2464
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Accepted value of ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] minutes"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2466
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2470
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cannot accept a negative time limit - please input a positive value (in minutes)"

    .line 2469
    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2472
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2476
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting Newsstand library newspapers back-issues expiry limit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2478
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2475
    invoke-static {v1, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 2478
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onOpenBook(Landroid/view/View;)V
    .locals 3

    .line 2097
    sget p1, Lcom/amazon/kindle/krl/R$id;->textview_openbook_bookId:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 2098
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 2099
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kindle://book/?action=open&book_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2101
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onPageSnapshot(Landroid/view/View;)V
    .locals 7

    .line 2274
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 2273
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 2274
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2275
    instance-of v0, p1, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "com.amazon.android.docviewer.mobi.PageRenderDrawableArray"

    .line 2278
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 2280
    const-class v4, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, "getItem"

    new-array v4, v2, [Ljava/lang/Class;

    .line 2282
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v3, "com.amazon.android.docviewer.mobi.PageRenderDrawable"

    .line 2284
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getRenderElement"

    new-array v6, v5, [Ljava/lang/Class;

    .line 2285
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2287
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2288
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 2289
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x0

    new-array v6, v2, [Ljava/lang/Object;

    aput-object p1, v6, v5

    .line 2292
    invoke-virtual {v1, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    new-array v0, v5, [Ljava/lang/Object;

    .line 2294
    invoke-virtual {v3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;

    .line 2296
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getHeight()I

    move-result p1

    invoke-interface {v0, v1, p1, v5, v5}, Lcom/amazon/android/docviewer/mobi/IMobiRenderElement;->createPageBitmap(IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v0, "currentPage.png"

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/debug/DebugActivity;->saveBitmapToFile(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2298
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPerformManualSync(Landroid/view/View;)V
    .locals 2

    .line 1821
    new-instance p1, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v0, Lcom/amazon/kcp/application/sync/internal/SyncType;->LIBRARY_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1, v1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    .line 1823
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    .line 1824
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/sync/SynchronizationManager;->hasRequestFor(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1825
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    :cond_0
    return-void
.end method

.method public onPreviewCoverLengthClick(Landroid/view/View;)V
    .locals 2

    .line 2247
    sget p1, Lcom/amazon/kindle/krl/R$id;->debug_preview_length:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 2248
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2250
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "CoverSettings"

    .line 2251
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2252
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2253
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "DebugPreviewLength"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2254
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public onRemoveLocalBooks(Landroid/view/View;)V
    .locals 6

    .line 1970
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 1972
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/debug/DebugActivity$37;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/debug/DebugActivity$37;-><init>(Lcom/amazon/kcp/debug/DebugActivity;)V

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/content/ILibraryService;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/ContentMetadataFilter;)Ljava/util/Collection;

    move-result-object p1

    .line 1980
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string/jumbo v0, "notification"

    .line 1982
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1983
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080081

    .line 1985
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const-string v2, "Removing Books"

    .line 1986
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1987
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const/4 v2, 0x1

    .line 1988
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1990
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    const-string v3, "kindle_debug_channel"

    .line 1991
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_0
    const-string v3, "0 books removed..."

    .line 1994
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1995
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    invoke-static {p0, v4, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2001
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 2002
    sget v3, Lcom/amazon/kcp/debug/DebugActivity;->NOTIFICATION_ID:I

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2004
    new-instance v3, Lcom/amazon/kcp/debug/DebugActivity$38;

    invoke-direct {v3, p0, v1, v0}, Lcom/amazon/kcp/debug/DebugActivity$38;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/app/Notification$Builder;Landroid/app/NotificationManager;)V

    new-array v0, v2, [Ljava/util/Collection;

    aput-object p1, v0, v4

    .line 2035
    invoke-virtual {v3, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 9

    .line 398
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onResume()V

    .line 399
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isReleaseBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 403
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 404
    :goto_0
    sget v3, Lcom/amazon/kindle/krl/R$id;->currentlyReadingBookDetailsButton:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 405
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCookieJar()Lcom/amazon/kcp/store/CookieJar;

    move-result-object v0

    const-string/jumbo v3, "store_cookies"

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/store/CookieJar;->shouldForceUSDomain(Ljava/lang/String;)Z

    move-result v0

    .line 407
    sget v3, Lcom/amazon/kindle/krl/R$id;->force_domain_toggle:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 408
    sget v0, Lcom/amazon/kindle/krl/R$id;->version_number:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    .line 409
    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleApplicationController;->getInternalVersionNumber()J

    move-result-wide v3

    .line 408
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;->isIgnoringRemoteDeregister(Lcom/amazon/kcp/application/IKindleApplicationController;)Z

    move-result v0

    .line 413
    sget v3, Lcom/amazon/kindle/krl/R$id;->ignore_remote_deregister_toggle:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 415
    sget v0, Lcom/amazon/kindle/krl/R$id;->page_curl_toggle:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/UserSettingsController;->isPageCurlDebugToggleEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 417
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getMetricsSettings()Lcom/amazon/kindle/krx/metrics/IMetricsSettings;

    move-result-object v0

    .line 418
    sget v3, Lcom/amazon/kindle/krl/R$id;->toggle_metrics:I

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amazon/kindle/krx/metrics/IMetricsSettings;->isMetricsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 420
    sget-boolean v0, Lcom/amazon/kcp/debug/DebugActivity;->SPRoptionEnabled:Z

    if-eqz v0, :cond_3

    .line 421
    sget v0, Lcom/amazon/kindle/krl/R$id;->spr_switch:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v3, "Disable SPR toggle"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 423
    :cond_3
    sget v0, Lcom/amazon/kindle/krl/R$id;->spr_switch:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v3, "Enable SPR toggle"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 426
    :goto_2
    sget-boolean v0, Lcom/amazon/kcp/debug/DebugActivity;->TestFontsEnabled:Z

    if-eqz v0, :cond_4

    .line 427
    sget v0, Lcom/amazon/kindle/krl/R$id;->font_switch:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v3, "Disable test fonts"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 429
    :cond_4
    sget v0, Lcom/amazon/kindle/krl/R$id;->font_switch:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v3, "Enable test fonts"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 432
    :goto_3
    sget-object v0, Lcom/amazon/kcp/debug/DebugActivity;->CustomColorsEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 433
    sget v0, Lcom/amazon/kindle/krl/R$id;->custom_colors_switch:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v3, "Disable Custom Settings"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 435
    :cond_5
    sget v0, Lcom/amazon/kindle/krl/R$id;->custom_colors_switch:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v3, "Enable Custom Settings"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 438
    :goto_4
    sget v0, Lcom/amazon/kcp/debug/DebugActivity;->firstPageRenderLockEnabled:I

    if-ne v0, v1, :cond_6

    .line 439
    sget v0, Lcom/amazon/kindle/krl/R$id;->lock_switch:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v3, "Disable first page render lock"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 441
    :cond_6
    sget v0, Lcom/amazon/kindle/krl/R$id;->lock_switch:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v3, "Enable first page render lock"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 444
    :goto_5
    invoke-direct {p0}, Lcom/amazon/kcp/debug/DebugActivity;->updateToggleLocalCleanupInMAPAccountRemovedReceiverButton()V

    .line 446
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/krl/R$raw;->modules:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/DebugActivity;->readModules(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    .line 447
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$raw;->audiomodules:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/amazon/kcp/debug/DebugActivity;->readModules(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v3

    .line 449
    sget v4, Lcom/amazon/kindle/krl/R$id;->modules_list:I

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 450
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    const-string v5, "DebugSettings"

    .line 452
    invoke-virtual {p0, v5, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 453
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "ForcedAppUpdate"

    .line 455
    invoke-interface {v5, v7, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 456
    sget v8, Lcom/amazon/kindle/krl/R$id;->forced_app_update_toggle:I

    invoke-virtual {p0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 457
    invoke-virtual {v8, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 458
    new-instance v7, Lcom/amazon/kcp/debug/DebugActivity$6;

    invoke-direct {v7, p0, v6}, Lcom/amazon/kcp/debug/DebugActivity$6;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v8, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 470
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kcp/application/IAppSettingsController;->getDisableFTUELoadingScreen()Z

    move-result v7

    .line 471
    sget v8, Lcom/amazon/kindle/krl/R$id;->disable_ftue_loading_screen_toggle:I

    invoke-virtual {p0, v8}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 472
    invoke-virtual {v8, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 473
    new-instance v7, Lcom/amazon/kcp/debug/DebugActivity$7;

    invoke-direct {v7, p0}, Lcom/amazon/kcp/debug/DebugActivity$7;-><init>(Lcom/amazon/kcp/debug/DebugActivity;)V

    invoke-virtual {v8, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-eqz v0, :cond_7

    .line 481
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 482
    new-instance v8, Landroid/widget/CheckBox;

    invoke-direct {v8, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 483
    invoke-virtual {v8, v7}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 484
    invoke-interface {v5, v7, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 485
    invoke-virtual {v8, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 487
    new-instance v7, Lcom/amazon/kcp/debug/DebugActivity$8;

    invoke-direct {v7, p0, v6, v8}, Lcom/amazon/kcp/debug/DebugActivity$8;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v8, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 495
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    :cond_7
    if-eqz v3, :cond_8

    .line 500
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 501
    new-instance v7, Landroid/widget/CheckBox;

    invoke-direct {v7, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 502
    invoke-virtual {v7, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 503
    invoke-interface {v5, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 504
    invoke-virtual {v7, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 506
    new-instance v3, Lcom/amazon/kcp/debug/DebugActivity$9;

    invoke-direct {v3, p0, v6, v7}, Lcom/amazon/kcp/debug/DebugActivity$9;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v7, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 514
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_7

    .line 518
    :cond_8
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_appstart_tracing:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_9

    const-string v1, "EnableAppStartTrace"

    .line 520
    invoke-interface {v5, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 521
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/debug/DebugActivity;->updateEnableTracingButton(Landroid/widget/Button;Z)V

    .line 522
    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$10;

    invoke-direct {v1, p0, v5, v6}, Lcom/amazon/kcp/debug/DebugActivity$10;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    :cond_9
    sget v0, Lcom/amazon/kindle/krl/R$id;->write_xml_to_disk:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_a

    const-string v1, "EnableWriteXmlToDisk"

    .line 536
    invoke-interface {v5, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 537
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/debug/DebugActivity;->updateEnableXMLToDiskButton(Landroid/widget/Button;Z)V

    .line 538
    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$11;

    invoke-direct {v1, p0, v5, v6}, Lcom/amazon/kcp/debug/DebugActivity$11;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    :cond_a
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_systrace_markers:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_b

    const-string v1, "EnablePerfMarkersSystrace"

    .line 553
    invoke-interface {v5, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 554
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/debug/DebugActivity;->updateEnableSystraceButton(Landroid/widget/Button;Z)V

    .line 555
    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$12;

    invoke-direct {v1, p0, v5, v6}, Lcom/amazon/kcp/debug/DebugActivity$12;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    :cond_b
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_logcat_perf_markers:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_c

    const-string v1, "EnablePerfMarkersLogcat"

    .line 570
    invoke-interface {v5, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 571
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/debug/DebugActivity;->updateEnablePerfLoggingButton(Landroid/widget/Button;Z)V

    .line 572
    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$13;

    invoke-direct {v1, p0, v5, v6}, Lcom/amazon/kcp/debug/DebugActivity$13;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    :cond_c
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_logcat_qa_perf_markers:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_d

    const-string v1, "EnableQAPerformanceMarkersLogcat"

    .line 587
    invoke-interface {v5, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 588
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/debug/DebugActivity;->updateEnableQAPerfLoggingButton(Landroid/widget/Button;Z)V

    .line 589
    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$14;

    invoke-direct {v1, p0, v5, v6}, Lcom/amazon/kcp/debug/DebugActivity$14;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    :cond_d
    invoke-direct {p0}, Lcom/amazon/kcp/debug/DebugActivity;->updateYJCacheSizeText()V

    .line 605
    sget v0, Lcom/amazon/kindle/krl/R$id;->mphl_delay_ms_tv:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_e

    .line 607
    invoke-static {}, Lcom/amazon/kcp/debug/DebugActivity;->getDebugMPHLFlipDelay()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    :cond_e
    invoke-direct {p0, v5, v6}, Lcom/amazon/kcp/debug/DebugActivity;->initializeNLNOptions(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 612
    invoke-virtual {p0, v5, v6}, Lcom/amazon/kcp/debug/DebugActivity;->initializeAutoShelfOptions(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 614
    sget v0, Lcom/amazon/kindle/krl/R$id;->endactions_debug_activity_button:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 615
    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$15;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/debug/DebugActivity$15;-><init>(Lcom/amazon/kcp/debug/DebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 624
    invoke-direct {p0, v5, v6}, Lcom/amazon/kcp/debug/DebugActivity;->initializeTutorialOptions(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 626
    sget v0, Lcom/amazon/kindle/krl/R$id;->nln_not_indexed:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_f

    const-string v1, "NlnDebugIndexing"

    .line 628
    invoke-interface {v5, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 629
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 630
    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$16;

    invoke-direct {v1, p0, v5, v6}, Lcom/amazon/kcp/debug/DebugActivity$16;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    :cond_f
    invoke-direct {p0}, Lcom/amazon/kcp/debug/DebugActivity;->initializeBookTypeBadgeSetting()V

    return-void
.end method

.method public onSaveHFSFeed(Landroid/view/View;)V
    .locals 1

    .line 2935
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 2936
    check-cast p1, Landroid/widget/CheckBox;

    .line 2937
    invoke-static {p0}, Lcom/amazon/kcp/application/UserSettingsController;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setSaveHFSFeed(Z)V

    :cond_0
    return-void
.end method

.method public onSelectFile(Landroid/view/View;)V
    .locals 3

    .line 2259
    sget p1, Lcom/amazon/kindle/krl/R$id;->textview_filename:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 2260
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2261
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Overlaying image"

    .line 2262
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2263
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/debug/DebugImageOverlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "OVERLAY_FILENAME"

    .line 2264
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2265
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2266
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 2268
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot find image: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onSendOdotMessage(Landroid/view/View;)V
    .locals 7

    .line 1344
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    const-string v3, "Send Dummy Odot Message(s)"

    .line 1349
    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "1 Message (pending messages purged)"

    aput-object v5, v4, v2

    new-array v5, v0, [Ljava/lang/Object;

    const/16 v6, 0x6e

    .line 1351
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%d Messages (pending messages intact)"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    new-instance v0, Lcom/amazon/kcp/debug/DebugActivity$31;

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/debug/DebugActivity$31;-><init>(Lcom/amazon/kcp/debug/DebugActivity;[Z)V

    .line 1350
    invoke-virtual {v3, v4, v2, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/amazon/kcp/debug/DebugActivity$30;

    invoke-direct {v2, p0, v1, p0}, Lcom/amazon/kcp/debug/DebugActivity$30;-><init>(Lcom/amazon/kcp/debug/DebugActivity;[ZLandroid/content/Context;)V

    const-string v1, "Send Message"

    .line 1369
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1431
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onSetLastNotificationDateEarlier(Landroid/view/View;)V
    .locals 5

    .line 1629
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUpdateManager()Lcom/amazon/kcp/application/internal/IUpdateManager;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/application/AndroidUpdateManager;

    .line 1631
    invoke-virtual {p1}, Lcom/amazon/kcp/application/AndroidUpdateManager;->getNotificationLastShownDate()Ljava/util/Date;

    move-result-object v0

    .line 1632
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 1634
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    :cond_0
    const/4 v2, 0x5

    const/16 v3, -0xe

    .line 1636
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 1637
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1639
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last Notification Date was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Setting to "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 1638
    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1641
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1642
    invoke-virtual {p1, v1}, Lcom/amazon/kcp/application/AndroidUpdateManager;->setNotificationLastShownDate(Ljava/util/Date;)V

    return-void
.end method

.method public onSetLoginCookies(Landroid/view/View;)V
    .locals 2

    .line 1650
    new-instance p1, Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;

    invoke-direct {p1}, Lcom/amazon/kcp/debug/DebugLoginCookiesDialogFragment;-><init>()V

    .line 1651
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "LoginCookies"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public onSetNotificationsEndpoint(Landroid/view/View;)V
    .locals 4

    .line 2120
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "RESET_NOTIFICATIONS_ENDPOINT"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2121
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2122
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 2125
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "NOTIFICATIONS_BUILD"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2127
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2128
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 2130
    :cond_1
    sget v0, Lcom/amazon/kindle/krl/R$id;->textview_notifications_endpoint:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2131
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 2132
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "Notifications.pref"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 2133
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "endpointarn"

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2134
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2135
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2137
    :catch_0
    sget-object p1, Lcom/amazon/kcp/debug/DebugActivity;->TAG:Ljava/lang/String;

    const-string v0, "Failed opening or writing to notifications build file."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onShowCurrentlyReadingBookDetails(Landroid/view/View;)V
    .locals 3

    .line 1176
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object p1

    .line 1178
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "ASIN: "

    .line 1179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "AMZN GUID: "

    .line 1180
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getAmzGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "isSample: "

    .line 1181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->isSample()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "bookType: "

    .line 1182
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, "bookRead: "

    .line 1183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kindle/model/content/LocalBookState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/model/content/LocalBookState;->isBookRead()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 1185
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1186
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1187
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onShowDeviceInformation(Landroid/view/View;)V
    .locals 4

    .line 1296
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object p1

    .line 1297
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->DEVICE_NAME:Lcom/amazon/kindle/services/authentication/TokenKey;

    .line 1298
    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    .line 1300
    invoke-direct {p0}, Lcom/amazon/kcp/debug/DebugActivity;->getDevicePixelDensity()Ljava/lang/String;

    move-result-object v1

    .line 1302
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "DSN: "

    .line 1303
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\nDensity: "

    .line 1304
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nDevice Type: "

    .line 1305
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nModel ID: "

    .line 1306
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceModelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\nPID: "

    .line 1307
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getPid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\nDevice Name: "

    .line 1308
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\nInternal storage path: "

    .line 1309
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1311
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1312
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1313
    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$28;

    invoke-direct {v1, p0, v0, v2}, Lcom/amazon/kcp/debug/DebugActivity$28;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v0, "Share device information"

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1326
    new-instance v0, Lcom/amazon/kcp/debug/DebugActivity$29;

    invoke-direct {v0, p0, v2}, Lcom/amazon/kcp/debug/DebugActivity$29;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Ljava/lang/StringBuffer;)V

    const-string v1, "Print to logcat"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "Cancel"

    const/4 v1, 0x0

    .line 1334
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1336
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public onSocialNetworkBlocked(Landroid/view/View;)V
    .locals 4

    .line 1746
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1747
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1749
    invoke-interface {p1}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isSocialNetworkBlocked()Z

    move-result p1

    .line 1750
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Social network blocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1752
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1754
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "Not Applicable"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1756
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method public onSuppressMrprDialog(Landroid/view/View;)V
    .locals 4

    const-string p1, "ShouldSuppressMrpr"

    const/4 v0, 0x0

    .line 1850
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    .line 1851
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getSecureStorage()Lcom/amazon/kindle/persistence/ISecureStorage;

    move-result-object v1

    .line 1852
    invoke-interface {v1, p1}, Lcom/amazon/kindle/persistence/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1853
    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/amazon/kindle/persistence/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1855
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Suppression of MRPR Dialog "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_1

    const-string v1, "Enabled"

    goto :goto_1

    :cond_1
    const-string v1, "Disabled"

    :goto_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1857
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v1, "Unable to find BookReaderActivity class"

    .line 1860
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1861
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1862
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public onToggleCNPushNotification(Landroid/view/View;)V
    .locals 2

    .line 2091
    sget p1, Lcom/amazon/kindle/krl/R$id;->toggle_cn_push_notification:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    .line 2093
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    const-string v0, "com.amazon.kcp.notifications.CNPushNotificationUtils"

    const-string v1, "isEnabledViaDebug"

    .line 2092
    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kcp/debug/DebugActivity;->setStaticBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    return-void
.end method

.method public onToggleForceDemoMode(Landroid/view/View;)V
    .locals 1

    .line 2617
    check-cast p1, Landroid/widget/CheckBox;

    const-string v0, "ForceDemoModeIsTrue"

    .line 2618
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/debug/DebugActivity;->updateToggleDebugSetting(Landroid/widget/CheckBox;Ljava/lang/String;)V

    .line 2619
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-static {p1}, Lcom/amazon/kcp/debug/DebugUtils;->setDemoModeToggle(Z)V

    return-void
.end method

.method public onToggleKRFAccessibilityPageTurnSupport(Landroid/view/View;)V
    .locals 1

    .line 1447
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 1448
    check-cast p1, Landroid/widget/CheckBox;

    .line 1449
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setKrfAccessibilityPageTurnSupportDebugEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onToggleLocalCleanupInMAPAccountRemovedReceiver(Landroid/view/View;)V
    .locals 0

    .line 2322
    sget-boolean p1, Lcom/amazon/kcp/debug/DebugActivity;->localCleanupInMAPAccountRemovedReceiverEnabled:Z

    xor-int/lit8 p1, p1, 0x1

    sput-boolean p1, Lcom/amazon/kcp/debug/DebugActivity;->localCleanupInMAPAccountRemovedReceiverEnabled:Z

    .line 2323
    invoke-direct {p0}, Lcom/amazon/kcp/debug/DebugActivity;->updateToggleLocalCleanupInMAPAccountRemovedReceiverButton()V

    return-void
.end method

.method public onToggleMetrics(Landroid/view/View;)V
    .locals 1

    .line 2142
    check-cast p1, Landroid/widget/ToggleButton;

    .line 2143
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getMetricsSettings()Lcom/amazon/kindle/krx/metrics/IMetricsSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2145
    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/metrics/IMetricsSettings;->setMetricsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onToggleSilentUpdates(Landroid/view/View;)V
    .locals 1

    .line 2085
    sget p1, Lcom/amazon/kindle/krl/R$id;->toggle_silent_updates:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    .line 2086
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAppSettingsController()Lcom/amazon/kcp/application/IAppSettingsController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IAppSettingsController;->setSilentUpdatesEnabled(Z)V

    return-void
.end method

.method public onToggleUtm(Landroid/view/View;)V
    .locals 1

    .line 1441
    check-cast p1, Landroid/widget/CheckBox;

    const-string v0, "EnableUnifiedTutorialManager"

    .line 1442
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/debug/DebugActivity;->updateToggleDebugSetting(Landroid/widget/CheckBox;Ljava/lang/String;)V

    .line 1443
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/amazon/kcp/debug/DebugUtils;->setUtmEnabled(Landroid/content/Context;Z)V

    return-void
.end method

.method public onTriggerBookOpenSync(Landroid/view/View;)V
    .locals 3

    .line 1831
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 1830
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 1831
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1837
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    .line 1838
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_OPEN_AUTO:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 1839
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, v2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kindle/model/content/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    .line 1840
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object p1

    .line 1841
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->hasRequestFor(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1842
    invoke-virtual {p1, v0}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    :cond_1
    return-void
.end method

.method public onUpdateEvent(Lcom/amazon/kcp/debug/DebugActivity$UpdateEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 2847
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugActivity;->m_buttonToViewMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/amazon/kcp/debug/DebugActivity$UpdateEvent;->publisher:Lcom/amazon/kcp/debug/DebugActivity$DebugButton;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 2849
    iget-object p1, p1, Lcom/amazon/kcp/debug/DebugActivity$UpdateEvent;->publisher:Lcom/amazon/kcp/debug/DebugActivity$DebugButton;

    invoke-virtual {p1, p0}, Lcom/amazon/kcp/debug/DebugActivity$DebugButton;->getButtonText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onUploadMetrics(Landroid/view/View;)V
    .locals 2

    .line 2151
    new-instance p1, Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-direct {p1}, Lcom/amazon/kcp/application/models/internal/TodoItem;-><init>()V

    .line 2152
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->SEND:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setAction(Lcom/amazon/kcp/application/models/internal/TodoItem$Action;)V

    .line 2153
    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->REMOTE_COMMAND:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setType(Lcom/amazon/kcp/application/models/internal/TodoItem$Type;)V

    const-string v0, "SYSLOG:UPLOAD"

    .line 2154
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->setKey(Ljava/lang/String;)V

    .line 2155
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getRemoteTodoService()Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;-><init>(Lcom/amazon/kcp/application/models/internal/TodoItem;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;->processTodoItem(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z

    return-void
.end method

.method public onUseDebugHFSFeed(Landroid/view/View;)V
    .locals 1

    .line 2928
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 2929
    check-cast p1, Landroid/widget/CheckBox;

    .line 2930
    invoke-static {p0}, Lcom/amazon/kcp/application/UserSettingsController;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setUseDebugHFSFeed(Z)V

    :cond_0
    return-void
.end method

.method public onXmlToggle(Landroid/view/View;)V
    .locals 4

    const/4 p1, 0x0

    :try_start_0
    const-string v0, "com.amazon.foundation.internal.DefaultContentHandler"

    .line 2305
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "DEBUG_RESPONSE"

    .line 2306
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 2307
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2308
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2309
    :goto_0
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 2310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultContentHandler logging "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_1

    const-string v1, "Enabled"

    goto :goto_1

    :cond_1
    const-string v1, "Disabled"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 2312
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Unable to find DefaultContentHandler class"

    .line 2314
    invoke-static {p0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 2315
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2316
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public onYJCacheSizeSet(Landroid/view/View;)V
    .locals 5

    .line 2518
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/amazon/kindle/krl/R$id;->yj_cache_size_main_set:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2519
    sget p1, Lcom/amazon/kindle/krl/R$id;->debug_yj_cache_size_for_main_process:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/widget/EditText;

    const-string p1, "YJCacheSizeMainProcess"

    goto :goto_0

    .line 2522
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/amazon/kindle/krl/R$id;->yj_cache_size_thumbnail_set:I

    if-ne p1, v0, :cond_1

    .line 2523
    sget p1, Lcom/amazon/kindle/krl/R$id;->debug_yj_cache_size_for_thumbnail_process:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/widget/EditText;

    const-string p1, "YJCacheSizeThumbnailProcess"

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .line 2529
    :try_start_0
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2530
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "DebugSettings"

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2532
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 2533
    invoke-interface {v4, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2534
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v1, -0x1

    .line 2536
    invoke-interface {v3, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2537
    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2539
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting YJ cache size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2540
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2539
    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 2540
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onloadAsinDetail(Landroid/view/View;)V
    .locals 2

    .line 2194
    new-instance p1, Landroid/widget/EditText;

    invoke-direct {p1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 2195
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Enter Asin"

    .line 2197
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2198
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2200
    new-instance v1, Lcom/amazon/kcp/debug/DebugActivity$42;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/debug/DebugActivity$42;-><init>(Lcom/amazon/kcp/debug/DebugActivity;Landroid/widget/EditText;)V

    const-string p1, "Ok"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string p1, "Cancel"

    const/4 v1, 0x0

    .line 2209
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2211
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 2212
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public requiresRegistration()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setMaxScrollSpeed(Landroid/view/View;)V
    .locals 3

    .line 2646
    :try_start_0
    sget p1, Lcom/amazon/kindle/krl/R$id;->max_scroll_speed:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2647
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "com.amazon.kcp.library.fragments.LibraryFragmentHelper"

    .line 2649
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "MAX_LIST_VIEW_SCROLL_SPEED"

    .line 2650
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 2651
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 2652
    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 2653
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAX SCROLL SPEED set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2655
    sget-object v0, Lcom/amazon/kcp/debug/DebugActivity;->TAG:Ljava/lang/String;

    const-string v1, "Error setting max scroll speed"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public toggleDomainForcing(Landroid/view/View;)V
    .locals 4

    .line 1789
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 1790
    check-cast p1, Landroid/widget/CheckBox;

    .line 1792
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCookieJar()Lcom/amazon/kcp/store/CookieJar;

    move-result-object v0

    .line 1793
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 1792
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/store/CookieJar;->setUSDomainForcing(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1796
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully changed domain forcing to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1797
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1796
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1798
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1800
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to change domain forcing to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1800
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1802
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1803
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toggleIgnoreRemoteDeregister(Landroid/view/View;)V
    .locals 1

    .line 2216
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 2217
    check-cast p1, Landroid/widget/CheckBox;

    .line 2219
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    .line 2220
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 2219
    invoke-static {v0, p1}, Lcom/amazon/kindle/todo/NamesRecordTodoItemHandler;->setIgnoreRemoteDeregister(Lcom/amazon/kcp/application/IKindleApplicationController;Z)V

    :cond_0
    return-void
.end method

.method public togglePageCurl(Landroid/view/View;)V
    .locals 3

    .line 2225
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    .line 2226
    check-cast p1, Landroid/widget/CheckBox;

    .line 2227
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 2228
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    .line 2230
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/application/UserSettingsController;->setPageCurlDebugToggleEnabled(Z)V

    if-nez v1, :cond_0

    return-void

    .line 2237
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2238
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isPageCurlEnabled()Z

    move-result p1

    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->enablePageCurl(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2240
    invoke-interface {v1, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->enablePageCurl(Z)V

    :cond_2
    :goto_0
    return-void
.end method
