.class public final Lcom/amazon/kindle/recaps/widget/RecapsWidgetItemProvider;
.super Ljava/lang/Object;
.source "RecapsWidgetItemProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecapsWidgetItemProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecapsWidgetItemProvider.kt\ncom/amazon/kindle/recaps/widget/RecapsWidgetItemProvider\n*L\n1#1,59:1\n*E\n"
.end annotation


# instance fields
.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    const-string v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/recaps/widget/RecapsWidgetItemProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 23
    sget-object p1, Lcom/amazon/kindle/recaps/RecapsFeatureSettings;->INSTANCE:Lcom/amazon/kindle/recaps/RecapsFeatureSettings;

    invoke-virtual {p1}, Lcom/amazon/kindle/recaps/RecapsFeatureSettings;->getRecapsEnabledForCurrentBook()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    new-instance p1, Lcom/amazon/kindle/recaps/widget/RecapsWidgetItem;

    iget-object v0, p0, Lcom/amazon/kindle/recaps/widget/RecapsWidgetItemProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {p1, v0}, Lcom/amazon/kindle/recaps/widget/RecapsWidgetItem;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/recaps/widget/RecapsWidgetItemProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    move-result-object p1

    return-object p1
.end method
