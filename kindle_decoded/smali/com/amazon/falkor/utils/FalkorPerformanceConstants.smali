.class public final Lcom/amazon/falkor/utils/FalkorPerformanceConstants;
.super Ljava/lang/Object;
.source "FalkorPerformanceUtils.kt"


# static fields
.field private static final DOWNLOAD_MANAGER_CLASS:Ljava/lang/String;

# The value of this static final field might be set in the static constructor
.field private static final DOWNLOAD_MANAGER_FAILED_CLASS:Ljava/lang/String; = "FalkorDownloadManagerFailed"

.field public static final INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

.field private static final NEXT_EPISODE_CALLING_CLASS:Ljava/lang/String;

.field private static final TOC_LOADING_CALLING_CLASS:Ljava/lang/String;

.field private static final TOC_NAVIGATION_CALLING_CLASS:Ljava/lang/String;

.field private static final UNLOCK_EPISODE_CALLING_CLASS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 116
    new-instance v0, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    invoke-direct {v0}, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;-><init>()V

    sput-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceConstants;

    .line 123
    const-class v0, Lcom/amazon/falkor/bottomsheet/SampleJSInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->UNLOCK_EPISODE_CALLING_CLASS:Ljava/lang/String;

    .line 138
    const-class v0, Lcom/amazon/falkor/bottomsheet/EndOfEpisodeJSInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->NEXT_EPISODE_CALLING_CLASS:Ljava/lang/String;

    .line 164
    const-class v0, Lcom/amazon/falkor/panels/FalkorEpisodeListPanelProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->TOC_LOADING_CALLING_CLASS:Ljava/lang/String;

    .line 165
    const-class v0, Lcom/amazon/falkor/panels/EpisodeListViewController;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->TOC_NAVIGATION_CALLING_CLASS:Ljava/lang/String;

    .line 188
    const-class v0, Lcom/amazon/falkor/download/FalkorDownloadManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sput-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->DOWNLOAD_MANAGER_CLASS:Ljava/lang/String;

    const-string v0, "FalkorDownloadManagerFailed"

    .line 189
    sput-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->DOWNLOAD_MANAGER_FAILED_CLASS:Ljava/lang/String;

    return-void

    .line 188
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDOWNLOAD_MANAGER_CLASS()Ljava/lang/String;
    .locals 1

    .line 188
    sget-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->DOWNLOAD_MANAGER_CLASS:Ljava/lang/String;

    return-object v0
.end method

.method public final getDOWNLOAD_MANAGER_FAILED_CLASS()Ljava/lang/String;
    .locals 1

    .line 189
    sget-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->DOWNLOAD_MANAGER_FAILED_CLASS:Ljava/lang/String;

    return-object v0
.end method

.method public final getNEXT_EPISODE_CALLING_CLASS()Ljava/lang/String;
    .locals 1

    .line 138
    sget-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->NEXT_EPISODE_CALLING_CLASS:Ljava/lang/String;

    return-object v0
.end method

.method public final getTOC_LOADING_CALLING_CLASS()Ljava/lang/String;
    .locals 1

    .line 164
    sget-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->TOC_LOADING_CALLING_CLASS:Ljava/lang/String;

    return-object v0
.end method

.method public final getTOC_NAVIGATION_CALLING_CLASS()Ljava/lang/String;
    .locals 1

    .line 165
    sget-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->TOC_NAVIGATION_CALLING_CLASS:Ljava/lang/String;

    return-object v0
.end method

.method public final getUNLOCK_EPISODE_CALLING_CLASS()Ljava/lang/String;
    .locals 1

    .line 123
    sget-object v0, Lcom/amazon/falkor/utils/FalkorPerformanceConstants;->UNLOCK_EPISODE_CALLING_CLASS:Ljava/lang/String;

    return-object v0
.end method
