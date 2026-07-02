.class public final Lcom/audible/hushpuppy/view/common/UpsellLogic;
.super Ljava/lang/Object;
.source "UpsellLogic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/hushpuppy/view/common/UpsellLogic$State;
    }
.end annotation


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final hushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final paymentFlowsFeatureToggler:Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;

.field private final restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/common/UpsellLogic;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/common/UpsellLogic;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/audible/hushpuppy/view/common/UpsellLogic;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 72
    iput-object p2, p0, Lcom/audible/hushpuppy/view/common/UpsellLogic;->hushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    .line 73
    iput-object p3, p0, Lcom/audible/hushpuppy/view/common/UpsellLogic;->restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    .line 74
    iput-object p4, p0, Lcom/audible/hushpuppy/view/common/UpsellLogic;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 75
    iput-object p5, p0, Lcom/audible/hushpuppy/view/common/UpsellLogic;->paymentFlowsFeatureToggler:Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;

    return-void
.end method


# virtual methods
.method public getUpsellState()Lcom/audible/hushpuppy/view/common/UpsellLogic$State;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/UpsellLogic;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 187
    invoke-virtual {p0, v0}, Lcom/audible/hushpuppy/view/common/UpsellLogic;->getUpsellState(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    move-result-object v0

    return-object v0
.end method

.method public getUpsellState(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/view/common/UpsellLogic$State;
    .locals 3

    if-nez p1, :cond_0

    .line 120
    sget-object p1, Lcom/audible/hushpuppy/view/common/UpsellLogic;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "No current book; upsell state is NONE"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 121
    sget-object p1, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;->NONE:Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    return-object p1

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/UpsellLogic;->restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;->isAudiobookPlaybackEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    sget-object p1, Lcom/audible/hushpuppy/view/common/UpsellLogic;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "audiobook playback blocked by restriction apis; upsell state is NONE"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 126
    sget-object p1, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;->NONE:Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    return-object p1

    .line 129
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isDictionary()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    sget-object p1, Lcom/audible/hushpuppy/view/common/UpsellLogic;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Current IBOOK is dictionary; upsell state is NONE"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 131
    sget-object p1, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;->NONE:Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    return-object p1

    .line 134
    :cond_2
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/content/ContentType;->BOOK:Lcom/amazon/kindle/krx/content/ContentType;

    if-eq v0, v1, :cond_3

    .line 136
    sget-object p1, Lcom/audible/hushpuppy/view/common/UpsellLogic;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Current IBOOK is not a book; upsell state is NONE"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 137
    sget-object p1, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;->NONE:Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    return-object p1

    .line 141
    :cond_3
    sget-object v0, Lcom/audible/hushpuppy/view/common/UpsellLogic;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Current book %s "

    invoke-interface {v0, v2, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/UpsellLogic;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getCurrentRelationship()Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 143
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getEBook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 144
    :cond_4
    sget-object v0, Lcom/audible/hushpuppy/view/common/UpsellLogic;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "upsell logic getting relationship from storage; redundant lookup"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 145
    invoke-static {p1}, Lcom/audible/hushpuppy/common/ebook/HushpuppyEBookFormatter;->extractEBookInfoWithVersion(Lcom/amazon/kindle/krx/content/IBook;)Lcom/audible/hushpuppy/common/ebook/EBookInfo;

    move-result-object p1

    if-nez p1, :cond_5

    .line 147
    sget-object p1, Lcom/audible/hushpuppy/view/common/UpsellLogic;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Current book may have null ASIN, VERSION, or FORMAT; upsell state is NONE"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 148
    sget-object p1, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;->NONE:Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    return-object p1

    .line 151
    :cond_5
    iget-object v0, p0, Lcom/audible/hushpuppy/view/common/UpsellLogic;->hushpuppyStorage:Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->getEBookAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/audible/hushpuppy/service/db/ILegacyHushpuppyStorage;->getEBookRelationship(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/audible/hushpuppy/common/relationship/IRelationship;

    move-result-object v0

    :cond_6
    if-nez v0, :cond_7

    .line 158
    sget-object p1, Lcom/audible/hushpuppy/view/common/UpsellLogic;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "no relationship found; upsell state is NONE"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 159
    sget-object p1, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;->NONE:Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    return-object p1

    .line 160
    :cond_7
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasFullAudiobook()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 161
    sget-object p1, Lcom/audible/hushpuppy/view/common/UpsellLogic;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "full audiobook; upsell state is FULL"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 162
    sget-object p1, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;->FULL:Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    return-object p1

    .line 163
    :cond_8
    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasSampleAudiobook()Z

    move-result p1

    if-nez p1, :cond_9

    .line 164
    sget-object p1, Lcom/audible/hushpuppy/view/common/UpsellLogic;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "missing sample audiobook in relationship; upsell state is NONE"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    .line 165
    sget-object p1, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;->NONE:Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    return-object p1

    .line 166
    :cond_9
    iget-object p1, p0, Lcom/audible/hushpuppy/view/common/UpsellLogic;->restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;->isAudiobookStoreEnabled()Z

    move-result p1

    if-nez p1, :cond_a

    .line 167
    sget-object p1, Lcom/audible/hushpuppy/view/common/UpsellLogic;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "audiobook store blocked by restriction apis; upsell state is NONE"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 168
    sget-object p1, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;->NONE:Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    return-object p1

    .line 169
    :cond_a
    iget-object p1, p0, Lcom/audible/hushpuppy/view/common/UpsellLogic;->paymentFlowsFeatureToggler:Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;

    invoke-interface {p1}, Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;->shouldUsePaymentFlows()Z

    move-result p1

    if-nez p1, :cond_b

    .line 170
    sget-object p1, Lcom/audible/hushpuppy/view/common/UpsellLogic;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Suppressing upsell because payment flows are disabled"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 171
    sget-object p1, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;->NONE:Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    return-object p1

    .line 174
    :cond_b
    sget-object p1, Lcom/audible/hushpuppy/view/common/UpsellLogic;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "upsell is enabled"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 175
    sget-object p1, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;->UPSELL:Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    return-object p1
.end method
