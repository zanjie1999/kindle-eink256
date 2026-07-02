.class public Lcom/amazon/sitb/android/view/samples/ShowSampleBarDecider;
.super Ljava/lang/Object;
.source "ShowSampleBarDecider.java"

# interfaces
.implements Lcom/amazon/sitb/android/plugin/content/ShowBarDecider;


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;


# instance fields
.field private final model:Lcom/amazon/sitb/android/model/UpsellModel;

.field private final restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/view/samples/ShowSampleBarDecider;

    .line 18
    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/view/samples/ShowSampleBarDecider;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;Lcom/amazon/sitb/android/model/UpsellModel;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/sitb/android/view/samples/ShowSampleBarDecider;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    .line 25
    iput-object p2, p0, Lcom/amazon/sitb/android/view/samples/ShowSampleBarDecider;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    return-void
.end method


# virtual methods
.method public showBar()Z
    .locals 6

    .line 31
    invoke-static {}, Lcom/amazon/sitb/android/utils/PaymentFlowsUtil;->shouldUsePaymentFlows()Z

    move-result v0

    .line 32
    iget-object v1, p0, Lcom/amazon/sitb/android/view/samples/ShowSampleBarDecider;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBookPurchaseBlocked()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/amazon/sitb/android/view/samples/ShowSampleBarDecider;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    if-eqz v1, :cond_1

    .line 34
    invoke-virtual {v1}, Lcom/amazon/sitb/android/model/UpsellModel;->hasUpsellBook()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/sitb/android/view/samples/ShowSampleBarDecider;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    .line 35
    invoke-virtual {v1}, Lcom/amazon/sitb/android/model/UpsellModel;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/sitb/android/view/samples/ShowSampleBarDecider;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    .line 36
    invoke-virtual {v1}, Lcom/amazon/sitb/android/model/UpsellModel;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->TEXTBOOK:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    iget-object v1, p0, Lcom/amazon/sitb/android/view/samples/ShowSampleBarDecider;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    .line 38
    invoke-virtual {v1}, Lcom/amazon/sitb/android/model/UpsellModel;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_0
    sget-object v1, Lcom/amazon/sitb/android/view/samples/ShowSampleBarDecider;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    invoke-interface {v1}, Lcom/amazon/sitb/android/ISamplingLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 41
    sget-object v1, Lcom/amazon/sitb/android/view/samples/ShowSampleBarDecider;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    const-string v5, "Showing"

    goto :goto_1

    :cond_2
    const-string v5, "Not showing"

    :goto_1
    aput-object v5, v4, v3

    iget-object v3, p0, Lcom/amazon/sitb/android/view/samples/ShowSampleBarDecider;->restrictionHandler:Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    const-string v5, "null"

    if-nez v3, :cond_3

    move-object v3, v5

    goto :goto_2

    .line 44
    :cond_3
    invoke-interface {v3}, Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;->isBookPurchaseBlocked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_2
    aput-object v3, v4, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/amazon/sitb/android/view/samples/ShowSampleBarDecider;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    if-nez v3, :cond_4

    move-object v3, v5

    goto :goto_3

    .line 45
    :cond_4
    invoke-virtual {v3}, Lcom/amazon/sitb/android/model/UpsellModel;->hasUpsellBook()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_3
    aput-object v3, v4, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/amazon/sitb/android/view/samples/ShowSampleBarDecider;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    if-eqz v3, :cond_6

    .line 46
    invoke-virtual {v3}, Lcom/amazon/sitb/android/model/UpsellModel;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    iget-object v3, p0, Lcom/amazon/sitb/android/view/samples/ShowSampleBarDecider;->model:Lcom/amazon/sitb/android/model/UpsellModel;

    invoke-virtual {v3}, Lcom/amazon/sitb/android/model/UpsellModel;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getContentClass()Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    move-result-object v5

    :cond_6
    :goto_4
    aput-object v5, v4, v2

    const-string v2, "%s bar, restrictionHandler: %s, model.hasUpsellBook: %s, model.getCurrentBook().getContentClass(): %s"

    .line 41
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    :cond_7
    return v0
.end method
