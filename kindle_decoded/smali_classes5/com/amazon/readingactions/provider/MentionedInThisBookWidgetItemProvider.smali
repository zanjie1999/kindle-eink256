.class public final Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider;
.super Ljava/lang/Object;
.source "MentionedInThisBookWidgetItemProvider.kt"

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
    value = "SMAP\nMentionedInThisBookWidgetItemProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MentionedInThisBookWidgetItemProvider.kt\ncom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider\n*L\n1#1,90:1\n*E\n"
.end annotation


# instance fields
.field private final chromeClickHandler:Lcom/amazon/readingactions/helpers/IChromeClickHandler;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/readingactions/helpers/IChromeClickHandler;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chromeClickHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object p2, p0, Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider;->chromeClickHandler:Lcom/amazon/readingactions/helpers/IChromeClickHandler;

    return-void
.end method

.method public static final synthetic access$getSdk$p(Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
    .locals 3
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

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 32
    iget-object v1, p0, Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider;->chromeClickHandler:Lcom/amazon/readingactions/helpers/IChromeClickHandler;

    sget-object v2, Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;->OPEN_MENTIONED_IN_THIS_BOOK:Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;

    invoke-interface {v1, p1, v2}, Lcom/amazon/readingactions/helpers/IChromeClickHandler;->canRegisterChromeClick(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/readingactions/helpers/IChromeClickHandler$ActionType;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThreadPoolManager()Lcom/amazon/kindle/krx/thread/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider$get$$inlined$let$lambda$1;

    invoke-direct {v1, p1, p0}, Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider$get$$inlined$let$lambda$1;-><init>(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 49
    new-instance p1, Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItem;

    iget-object v0, p0, Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {p1, v0}, Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItem;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object p1

    :cond_1
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/provider/MentionedInThisBookWidgetItemProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    move-result-object p1

    return-object p1
.end method
