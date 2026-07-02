.class public final Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;
.super Ljava/lang/Object;
.source "SearchFilterMenuProviderImpl.kt"

# interfaces
.implements Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchFilterMenuProviderImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchFilterMenuProviderImpl.kt\ncom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,687:1\n1819#2,2:688\n1819#2,2:690\n1819#2,2:692\n1819#2,2:694\n*E\n*S KotlinDebug\n*F\n+ 1 SearchFilterMenuProviderImpl.kt\ncom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl\n*L\n509#1,2:688\n528#1,2:690\n547#1,2:692\n682#1,2:694\n*E\n"
.end annotation


# instance fields
.field private final artPhotographyFilter$delegate:Lkotlin/Lazy;

.field private final audibleFilter$delegate:Lkotlin/Lazy;

.field private final biographiesMemoirsFilter$delegate:Lkotlin/Lazy;

.field private final businessCareersFilter$delegate:Lkotlin/Lazy;

.field private final businessInvestingFilter$delegate:Lkotlin/Lazy;

.field private final childrenFilter$delegate:Lkotlin/Lazy;

.field private final childrenYoungAdultFilter$delegate:Lkotlin/Lazy;

.field private final comicsGraphicNovelsFilter$delegate:Lkotlin/Lazy;

.field private final comixologyUnlimitedFilter$delegate:Lkotlin/Lazy;

.field private final computerTechnologyFilter$delegate:Lkotlin/Lazy;

.field private final crimeThrillerMysteryFilter$delegate:Lkotlin/Lazy;

.field private final economicManagementFilter$delegate:Lkotlin/Lazy;

.field private final englishEbooksFilter$delegate:Lkotlin/Lazy;

.field private final fantasySciencFictionHorrorFilter$delegate:Lkotlin/Lazy;

.field private final fictionFilter$delegate:Lkotlin/Lazy;

.field private final foreignLanguageFilter$delegate:Lkotlin/Lazy;

.field private final foreignLanguageStudyReferenceFilter$delegate:Lkotlin/Lazy;

.field private final healthFamilyFilter$delegate:Lkotlin/Lazy;

.field private final healthFamilyPersonalDevelopmentFilter$delegate:Lkotlin/Lazy;

.field private final healthFitnessDietingFilter$delegate:Lkotlin/Lazy;

.field private final historyFilter$delegate:Lkotlin/Lazy;

.field private final historyGeographyFilter$delegate:Lkotlin/Lazy;

.field private final hobbiesPracticalUsesSportsOutdoorsFilter$delegate:Lkotlin/Lazy;

.field private itemGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;",
            ">;"
        }
    .end annotation
.end field

.field private itemToGroup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final kindleUnlimitedFilter$delegate:Lkotlin/Lazy;

.field private final kindleVellaFilter$delegate:Lkotlin/Lazy;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final literatureFictionFilter$delegate:Lkotlin/Lazy;

.field private final literatureFilter$delegate:Lkotlin/Lazy;

.field private final literatureLiteraryCriticismFilter$delegate:Lkotlin/Lazy;

.field private final marketplace:Lcom/amazon/kcp/application/Marketplace;

.field private final newsstandFilter$delegate:Lkotlin/Lazy;

.field private final nonfictionJapaneseBooksFilter$delegate:Lkotlin/Lazy;

.field private final philosophyReligionFilter$delegate:Lkotlin/Lazy;

.field private final politicsHistoryFilter$delegate:Lkotlin/Lazy;

.field private final politicsSocialSciencesFilter$delegate:Lkotlin/Lazy;

.field private final primeReadingFilter$delegate:Lkotlin/Lazy;

.field private final psychologicalSelfHelpTestingFilter$delegate:Lkotlin/Lazy;

.field private final psychologyFilter$delegate:Lkotlin/Lazy;

.field private final religionSpiritualityFilter$delegate:Lkotlin/Lazy;

.field private final romanceFilter$delegate:Lkotlin/Lazy;

.field private final sciFiFantasyFilter$delegate:Lkotlin/Lazy;

.field private final scienceTechnologyMedicineFilter$delegate:Lkotlin/Lazy;

.field private selectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final selfHelpFilter$delegate:Lkotlin/Lazy;

.field private final sociologyFilter$delegate:Lkotlin/Lazy;

.field private final teenYoungAdultFilter$delegate:Lkotlin/Lazy;

.field private final theme:Lcom/amazon/kindle/krx/theme/Theme;

.field private final travelTourismFilter$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->itemGroups:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->selectedItems:Ljava/util/List;

    .line 65
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v2}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    const-string v2, "Marketplace.getInstance(\u2026fetchToken(TokenKey.PFM))"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->marketplace:Lcom/amazon/kcp/application/Marketplace;

    .line 66
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    :goto_0
    const-string v1, "Utils.getFactory().kindl\u2026T_OF_BOOK) ?: Theme.LIGHT"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->theme:Lcom/amazon/kindle/krx/theme/Theme;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->listeners:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->itemToGroup:Ljava/util/Map;

    .line 74
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$kindleUnlimitedFilter$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$kindleUnlimitedFilter$2;-><init>(Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->kindleUnlimitedFilter$delegate:Lkotlin/Lazy;

    .line 85
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$primeReadingFilter$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$primeReadingFilter$2;-><init>(Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->primeReadingFilter$delegate:Lkotlin/Lazy;

    .line 95
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$comixologyUnlimitedFilter$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$comixologyUnlimitedFilter$2;-><init>(Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->comixologyUnlimitedFilter$delegate:Lkotlin/Lazy;

    .line 107
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$newsstandFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$newsstandFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->newsstandFilter$delegate:Lkotlin/Lazy;

    .line 117
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$kindleVellaFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$kindleVellaFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->kindleVellaFilter$delegate:Lkotlin/Lazy;

    .line 127
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$audibleFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$audibleFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->audibleFilter$delegate:Lkotlin/Lazy;

    .line 137
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$artPhotographyFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$artPhotographyFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->artPhotographyFilter$delegate:Lkotlin/Lazy;

    .line 146
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$biographiesMemoirsFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$biographiesMemoirsFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->biographiesMemoirsFilter$delegate:Lkotlin/Lazy;

    .line 155
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$businessCareersFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$businessCareersFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->businessCareersFilter$delegate:Lkotlin/Lazy;

    .line 164
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$businessInvestingFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$businessInvestingFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->businessInvestingFilter$delegate:Lkotlin/Lazy;

    .line 173
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$childrenFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$childrenFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->childrenFilter$delegate:Lkotlin/Lazy;

    .line 182
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$childrenYoungAdultFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$childrenYoungAdultFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->childrenYoungAdultFilter$delegate:Lkotlin/Lazy;

    .line 191
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$comicsGraphicNovelsFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$comicsGraphicNovelsFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->comicsGraphicNovelsFilter$delegate:Lkotlin/Lazy;

    .line 200
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$computerTechnologyFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$computerTechnologyFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->computerTechnologyFilter$delegate:Lkotlin/Lazy;

    .line 209
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$crimeThrillerMysteryFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$crimeThrillerMysteryFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->crimeThrillerMysteryFilter$delegate:Lkotlin/Lazy;

    .line 218
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$economicManagementFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$economicManagementFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->economicManagementFilter$delegate:Lkotlin/Lazy;

    .line 227
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$englishEbooksFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$englishEbooksFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->englishEbooksFilter$delegate:Lkotlin/Lazy;

    .line 236
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$fantasySciencFictionHorrorFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$fantasySciencFictionHorrorFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->fantasySciencFictionHorrorFilter$delegate:Lkotlin/Lazy;

    .line 245
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$fictionFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$fictionFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->fictionFilter$delegate:Lkotlin/Lazy;

    .line 254
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$foreignLanguageFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$foreignLanguageFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->foreignLanguageFilter$delegate:Lkotlin/Lazy;

    .line 263
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$foreignLanguageStudyReferenceFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$foreignLanguageStudyReferenceFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->foreignLanguageStudyReferenceFilter$delegate:Lkotlin/Lazy;

    .line 272
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$healthFamilyFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$healthFamilyFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->healthFamilyFilter$delegate:Lkotlin/Lazy;

    .line 281
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$healthFamilyPersonalDevelopmentFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$healthFamilyPersonalDevelopmentFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->healthFamilyPersonalDevelopmentFilter$delegate:Lkotlin/Lazy;

    .line 290
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$healthFitnessDietingFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$healthFitnessDietingFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->healthFitnessDietingFilter$delegate:Lkotlin/Lazy;

    .line 299
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$historyFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$historyFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->historyFilter$delegate:Lkotlin/Lazy;

    .line 308
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$historyGeographyFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$historyGeographyFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->historyGeographyFilter$delegate:Lkotlin/Lazy;

    .line 317
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$hobbiesPracticalUsesSportsOutdoorsFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$hobbiesPracticalUsesSportsOutdoorsFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->hobbiesPracticalUsesSportsOutdoorsFilter$delegate:Lkotlin/Lazy;

    .line 326
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$literatureFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$literatureFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->literatureFilter$delegate:Lkotlin/Lazy;

    .line 335
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$literatureFictionFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$literatureFictionFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->literatureFictionFilter$delegate:Lkotlin/Lazy;

    .line 344
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$literatureLiteraryCriticismFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$literatureLiteraryCriticismFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->literatureLiteraryCriticismFilter$delegate:Lkotlin/Lazy;

    .line 353
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$nonfictionJapaneseBooksFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$nonfictionJapaneseBooksFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->nonfictionJapaneseBooksFilter$delegate:Lkotlin/Lazy;

    .line 362
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$philosophyReligionFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$philosophyReligionFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->philosophyReligionFilter$delegate:Lkotlin/Lazy;

    .line 371
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$psychologicalSelfHelpTestingFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$psychologicalSelfHelpTestingFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->psychologicalSelfHelpTestingFilter$delegate:Lkotlin/Lazy;

    .line 380
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$psychologyFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$psychologyFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->psychologyFilter$delegate:Lkotlin/Lazy;

    .line 389
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$politicsHistoryFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$politicsHistoryFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->politicsHistoryFilter$delegate:Lkotlin/Lazy;

    .line 398
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$politicsSocialSciencesFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$politicsSocialSciencesFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->politicsSocialSciencesFilter$delegate:Lkotlin/Lazy;

    .line 407
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$religionSpiritualityFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$religionSpiritualityFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->religionSpiritualityFilter$delegate:Lkotlin/Lazy;

    .line 416
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$romanceFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$romanceFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->romanceFilter$delegate:Lkotlin/Lazy;

    .line 425
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$sciFiFantasyFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$sciFiFantasyFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->sciFiFantasyFilter$delegate:Lkotlin/Lazy;

    .line 434
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$selfHelpFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$selfHelpFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->selfHelpFilter$delegate:Lkotlin/Lazy;

    .line 443
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$scienceTechnologyMedicineFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$scienceTechnologyMedicineFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->scienceTechnologyMedicineFilter$delegate:Lkotlin/Lazy;

    .line 452
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$sociologyFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$sociologyFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->sociologyFilter$delegate:Lkotlin/Lazy;

    .line 461
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$teenYoungAdultFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$teenYoungAdultFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->teenYoungAdultFilter$delegate:Lkotlin/Lazy;

    .line 470
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$travelTourismFilter$2;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl$travelTourismFilter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->travelTourismFilter$delegate:Lkotlin/Lazy;

    .line 480
    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->buildOptions()V

    return-void
.end method

.method public static final synthetic access$getKindleUnlimitedBadgeDescriptionId(Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;Lcom/amazon/kcp/application/Marketplace;)I
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getKindleUnlimitedBadgeDescriptionId(Lcom/amazon/kcp/application/Marketplace;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getMarketplace$p(Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;)Lcom/amazon/kcp/application/Marketplace;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->marketplace:Lcom/amazon/kcp/application/Marketplace;

    return-object p0
.end method

.method public static final synthetic access$getTheme$p(Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;)Lcom/amazon/kindle/krx/theme/Theme;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->theme:Lcom/amazon/kindle/krx/theme/Theme;

    return-object p0
.end method

.method private final buildItemToGroupMap()V
    .locals 5

    .line 629
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->itemToGroup:Ljava/util/Map;

    .line 630
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->itemGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;

    .line 631
    invoke-virtual {v1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    .line 632
    iget-object v4, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->itemToGroup:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;->getItemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final buildOptions()V
    .locals 3

    .line 507
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->getMARKETPLACE_TO_READING_PROGRAM()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->marketplace:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 508
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    .line 688
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 510
    invoke-direct {p0, v2}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getFilterItemWithFilterString(Ljava/lang/String;)Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 512
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 517
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 518
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;

    .line 520
    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->search_filter_read_program_description:I

    .line 518
    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;-><init>(Ljava/util/List;I)V

    .line 522
    iget-object v1, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->itemGroups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_2
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->getMARKETPLACE_TO_FORMAT()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->marketplace:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 527
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_4

    .line 690
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 529
    invoke-direct {p0, v2}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getFilterItemWithFilterString(Ljava/lang/String;)Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 531
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 536
    :cond_4
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 537
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;

    .line 539
    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->search_filter_format_description:I

    .line 537
    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;-><init>(Ljava/util/List;I)V

    .line 541
    iget-object v1, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->itemGroups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_5
    sget-object v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->INSTANCE:Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortItemConstants;->getMARKETPLACE_TO_GENRE()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->marketplace:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 546
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_7

    .line 692
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 548
    invoke-direct {p0, v2}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getFilterItemWithFilterString(Ljava/lang/String;)Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 550
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 554
    :cond_7
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    .line 555
    new-instance v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;

    .line 557
    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->search_filter_genre_description:I

    .line 555
    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;-><init>(Ljava/util/List;I)V

    .line 559
    iget-object v1, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->itemGroups:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    :cond_8
    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->buildItemToGroupMap()V

    return-void
.end method

.method private final getArtPhotographyFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->artPhotographyFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getAudibleFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->audibleFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getBiographiesMemoirsFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->biographiesMemoirsFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getBusinessCareersFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->businessCareersFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getBusinessInvestingFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->businessInvestingFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getChildrenFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->childrenFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getChildrenYoungAdultFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->childrenYoungAdultFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getComicsGraphicNovelsFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->comicsGraphicNovelsFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getComixologyUnlimitedFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->comixologyUnlimitedFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getComputerTechnologyFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->computerTechnologyFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getCrimeThrillerMysteryFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->crimeThrillerMysteryFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getEconomicManagementFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->economicManagementFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getEnglishEbooksFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->englishEbooksFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getFantasySciencFictionHorrorFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->fantasySciencFictionHorrorFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getFictionFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->fictionFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getFilterItemWithFilterString(Ljava/lang/String;)Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 567
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "BiographiesMemoirs"

    .line 578
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getBiographiesMemoirsFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "ComputerTechnology"

    .line 584
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getComputerTechnologyFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "ForeignLanguage"

    .line 590
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getForeignLanguageFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "ScienceTechnologyMedicine"

    .line 611
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getScienceTechnologyMedicineFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "Childrens"

    .line 581
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getChildrenFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "PhilosophyReligion"

    .line 602
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getPhilosophyReligionFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "HealthFamilyPersonalDevelopment"

    .line 593
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getHealthFamilyPersonalDevelopmentFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "TeenYoungAdult"

    .line 613
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getTeenYoungAdultFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "Sociology"

    .line 612
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getSociologyFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "PsychologicalSelfHelpTesting"

    .line 605
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getPsychologicalSelfHelpTestingFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "SelfHelp"

    .line 610
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getSelfHelpFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "Audible"

    .line 575
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getAudibleFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "ChildrenYoungAdult"

    .line 582
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getChildrenYoungAdultFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "NonfictionJapaneseBook"

    .line 601
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getNonfictionJapaneseBooksFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "Psychology"

    .line 606
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getPsychologyFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "Fiction"

    .line 589
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getFictionFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "CrimeThrillerMystery"

    .line 585
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getCrimeThrillerMysteryFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "TravelTourism"

    .line 614
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getTravelTourismFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "KindleVella"

    .line 574
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getKindleVellaFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "HealthFamily"

    .line 592
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getHealthFamilyFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "PoliticsHistory"

    .line 603
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getPoliticsHistoryFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "Literature"

    .line 598
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getLiteratureFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "BusinessInvesting"

    .line 580
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getBusinessInvestingFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "EnglishEbooks"

    .line 587
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getEnglishEbooksFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "PoliticsSocialSciences"

    .line 604
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getPoliticsSocialSciencesFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "HealthFitnessDieting"

    .line 594
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getHealthFitnessDietingFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "EconomicManagement"

    .line 586
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getEconomicManagementFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "ComicsGraphicNovels"

    .line 583
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getComicsGraphicNovelsFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "BusinessCareers"

    .line 579
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getBusinessCareersFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "ArtPhotography"

    .line 577
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getArtPhotographyFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "ForeignLanguageStudyReference"

    .line 591
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getForeignLanguageStudyReferenceFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "ComixologyUnlimied"

    .line 571
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getComixologyUnlimitedFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "LiteratureFiction"

    .line 599
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getLiteratureFictionFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "Romance"

    .line 608
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getRomanceFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "HistoryGeography"

    .line 596
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getHistoryGeographyFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_23
    const-string v0, "FantasySicenceFictionHorror"

    .line 588
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getFantasySciencFictionHorrorFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto/16 :goto_1

    :sswitch_24
    const-string v0, "PrimeReading"

    .line 570
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getPrimeReadingFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto :goto_1

    :sswitch_25
    const-string v0, "ReligionSpirituality"

    .line 607
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getReligionSpiritualityFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto :goto_1

    :sswitch_26
    const-string v0, "History"

    .line 595
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getHistoryFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto :goto_1

    :sswitch_27
    const-string v0, "LiteratureLiteraryCriticism"

    .line 600
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getLiteratureLiteraryCriticismFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto :goto_1

    :sswitch_28
    const-string v0, "KindleUnlimited"

    .line 569
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getKindleUnlimitedFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto :goto_1

    :sswitch_29
    const-string v0, "SciFiFantasy"

    .line 609
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getSciFiFantasyFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto :goto_1

    :sswitch_2a
    const-string v0, "Newsstand"

    .line 573
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getNewsstandFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto :goto_1

    :sswitch_2b
    const-string v0, "HobbiesPracticalUsesSportsOutdoors"

    .line 597
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getHobbiesPracticalUsesSportsOutdoorsFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x77aa2979 -> :sswitch_2b
        -0x7581db3d -> :sswitch_2a
        -0x72068316 -> :sswitch_29
        -0x71a044cc -> :sswitch_28
        -0x6feacbe6 -> :sswitch_27
        -0x6587838c -> :sswitch_26
        -0x6274bf90 -> :sswitch_25
        -0x57ecf4d3 -> :sswitch_24
        -0x52d27434 -> :sswitch_23
        -0x4e892298 -> :sswitch_22
        -0x4aa95501 -> :sswitch_21
        -0x44dc8b9d -> :sswitch_20
        -0x4052677b -> :sswitch_1f
        -0x3f121132 -> :sswitch_1e
        -0x2cca98a6 -> :sswitch_1d
        -0x29f7bf4b -> :sswitch_1c
        -0x27a9bbf9 -> :sswitch_1b
        -0x23abddc8 -> :sswitch_1a
        -0x2f7b9fe -> :sswitch_19
        -0x2156903 -> :sswitch_18
        0x1bdbbd5 -> :sswitch_17
        0x963cfcd -> :sswitch_16
        0xed2b171 -> :sswitch_15
        0xfb629d3 -> :sswitch_14
        0x11716900 -> :sswitch_13
        0x1ce2e5a5 -> :sswitch_12
        0x2635e691 -> :sswitch_11
        0x2740e295 -> :sswitch_10
        0x2fca76f4 -> :sswitch_f
        0x37ef4de9 -> :sswitch_e
        0x38274fa1 -> :sswitch_d
        0x387dae01 -> :sswitch_c
        0x3bce72e2 -> :sswitch_b
        0x4ae1f0cd -> :sswitch_a
        0x4b24dc8e -> :sswitch_9
        0x4b572c02 -> :sswitch_8
        0x59648d1c -> :sswitch_7
        0x5ade75bb -> :sswitch_6
        0x63808be2 -> :sswitch_5
        0x71d38234 -> :sswitch_4
        0x749bd8ca -> :sswitch_3
        0x75071c2c -> :sswitch_2
        0x7e52b6a7 -> :sswitch_1
        0x7eed37ff -> :sswitch_0
    .end sparse-switch
.end method

.method private final getForeignLanguageFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->foreignLanguageFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getForeignLanguageStudyReferenceFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->foreignLanguageStudyReferenceFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getHealthFamilyFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->healthFamilyFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getHealthFamilyPersonalDevelopmentFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->healthFamilyPersonalDevelopmentFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getHealthFitnessDietingFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->healthFitnessDietingFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getHistoryFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->historyFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getHistoryGeographyFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->historyGeographyFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getHobbiesPracticalUsesSportsOutdoorsFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->hobbiesPracticalUsesSportsOutdoorsFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getKindleUnlimitedBadgeDescriptionId(Lcom/amazon/kcp/application/Marketplace;)I
    .locals 1

    .line 493
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    if-ne p1, v0, :cond_0

    .line 494
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->kindle_unlimited_cn:I

    return p1

    .line 495
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    if-ne p1, v0, :cond_1

    .line 496
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->kindle_unlimited_fr:I

    return p1

    .line 497
    :cond_1
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    if-ne p1, v0, :cond_2

    .line 498
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->kindle_unlimited_ja:I

    return p1

    .line 500
    :cond_2
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->kindle_unlimited:I

    return p1
.end method

.method private final getKindleUnlimitedFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->kindleUnlimitedFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getKindleVellaFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->kindleVellaFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getLiteratureFictionFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->literatureFictionFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getLiteratureFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->literatureFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getLiteratureLiteraryCriticismFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->literatureLiteraryCriticismFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getNewsstandFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->newsstandFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getNonfictionJapaneseBooksFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->nonfictionJapaneseBooksFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getPhilosophyReligionFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->philosophyReligionFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getPoliticsHistoryFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->politicsHistoryFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getPoliticsSocialSciencesFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->politicsSocialSciencesFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getPrimeReadingFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->primeReadingFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getPsychologicalSelfHelpTestingFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->psychologicalSelfHelpTestingFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getPsychologyFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->psychologyFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getReligionSpiritualityFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->religionSpiritualityFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getRomanceFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->romanceFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getSciFiFantasyFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->sciFiFantasyFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getScienceTechnologyMedicineFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->scienceTechnologyMedicineFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getSelfHelpFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->selfHelpFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getSociologyFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->sociologyFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getTeenYoungAdultFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->teenYoungAdultFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final getTravelTourismFilter()Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->travelTourismFilter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    return-object v0
.end method

.method private final notifyListeners()V
    .locals 2

    .line 682
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->listeners:Ljava/util/List;

    .line 694
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider$Listener;

    .line 683
    invoke-interface {v1}, Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider$Listener;->onUpdatedMenuState()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/amazon/kcp/search/wayfinder/SearchSortFilterMenuProvider$Listener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;",
            ">;"
        }
    .end annotation

    .line 638
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->itemGroups:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;",
            ">;"
        }
    .end annotation

    .line 666
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->selectedItems:Ljava/util/List;

    return-object v0
.end method

.method public resetSelections()V
    .locals 1

    .line 661
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->selectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 662
    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->notifyListeners()V

    return-void
.end method

.method public setPreselectedItem(Ljava/lang/String;)V
    .locals 1

    .line 620
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 621
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->getFilterItemWithFilterString(Ljava/lang/String;)Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 623
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->selectedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public toggleItem(Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;)V
    .locals 3

    const-string v0, "clickedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->selectedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->selectedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->itemToGroup:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;

    if-eqz v0, :cond_1

    .line 646
    invoke-virtual {v0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuGroup;->getItems()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 648
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/wayfinder/SearchFilterSortMenuItem;

    .line 649
    iget-object v2, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->selectedItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 650
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->selectedItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 655
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->selectedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    :goto_1
    invoke-direct {p0}, Lcom/amazon/kcp/search/wayfinder/SearchFilterMenuProviderImpl;->notifyListeners()V

    return-void
.end method
