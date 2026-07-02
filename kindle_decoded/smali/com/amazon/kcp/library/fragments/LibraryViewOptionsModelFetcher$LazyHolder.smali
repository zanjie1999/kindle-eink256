.class Lcom/amazon/kcp/library/fragments/LibraryViewOptionsModelFetcher$LazyHolder;
.super Ljava/lang/Object;
.source "LibraryViewOptionsModelFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/fragments/LibraryViewOptionsModelFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    invoke-static {}, Lcom/amazon/kcp/library/fragments/LibraryViewOptionsModelFetcher$LazyHolder;->createViewOptionsModel()Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/fragments/LibraryViewOptionsModelFetcher$LazyHolder;->INSTANCE:Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;

    return-void
.end method

.method private static createViewOptionsModel()Lcom/amazon/kcp/library/fragments/LibraryFragmentViewOptionsModel;
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "LibrarySettings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;

    .line 36
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/amazon/kcp/library/fragments/LinkedLibraryFragmentViewOptionsModel;-><init>(Landroid/content/SharedPreferences;Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V

    return-object v1
.end method
