.class Lcom/amazon/kindle/krx/ui/LibraryUIManager$ReadingListRecommendationProviderComparator;
.super Ljava/lang/Object;
.source "LibraryUIManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/ui/LibraryUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReadingListRecommendationProviderComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/ui/LibraryUIManager;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/krx/ui/LibraryUIManager;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/LibraryUIManager$ReadingListRecommendationProviderComparator;->this$0:Lcom/amazon/kindle/krx/ui/LibraryUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/krx/ui/LibraryUIManager;Lcom/amazon/kindle/krx/ui/LibraryUIManager$1;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/ui/LibraryUIManager$ReadingListRecommendationProviderComparator;-><init>(Lcom/amazon/kindle/krx/ui/LibraryUIManager;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider;Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider;)I
    .locals 2

    .line 87
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider;->getPriority()Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 88
    invoke-interface {p2}, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider;->getPriority()Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider$Priority;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 90
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 92
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ge p1, p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 82
    check-cast p1, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider;

    check-cast p2, Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/krx/ui/LibraryUIManager$ReadingListRecommendationProviderComparator;->compare(Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider;Lcom/amazon/kindle/krx/ui/IReadingListRecommendationsProvider;)I

    move-result p1

    return p1
.end method
