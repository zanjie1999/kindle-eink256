.class public final Lcom/amazon/falkor/FalkorBookOpenManager;
.super Ljava/lang/Object;
.source "FalkorBookOpenManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFalkorBookOpenManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FalkorBookOpenManager.kt\ncom/amazon/falkor/FalkorBookOpenManager\n*L\n1#1,99:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/falkor/FalkorBookOpenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/amazon/falkor/FalkorBookOpenManager;

    invoke-direct {v0}, Lcom/amazon/falkor/FalkorBookOpenManager;-><init>()V

    sput-object v0, Lcom/amazon/falkor/FalkorBookOpenManager;->INSTANCE:Lcom/amazon/falkor/FalkorBookOpenManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getSyncValidation(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateValidation;
    .locals 1

    .line 59
    new-instance v0, Lcom/amazon/falkor/FalkorBookOpenManager$getSyncValidation$1;

    invoke-direct {v0, p1}, Lcom/amazon/falkor/FalkorBookOpenManager$getSyncValidation$1;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object v0
.end method

.method private final openBook(Landroid/app/Activity;Lcom/amazon/kindle/krx/content/IBook;ZLcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 7

    .line 50
    new-instance v5, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;

    invoke-direct {v5}, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;-><init>()V

    if-eqz p3, :cond_0

    .line 53
    sget-object p3, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->READER_OPEN:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    invoke-direct {p0, p4}, Lcom/amazon/falkor/FalkorBookOpenManager;->getSyncValidation(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateValidation;

    move-result-object p4

    invoke-virtual {v5, p3, p4}, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;->addValidation(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateValidation;)V

    .line 55
    :cond_0
    const-class p3, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;

    invoke-static {p3}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p3

    invoke-virtual {p3}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v4, "FALKOR"

    move-object v1, p2

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;->open(Lcom/amazon/kindle/krx/content/IBook;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;Ljava/lang/Integer;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final openBook(Landroid/app/Activity;Ljava/lang/String;ZLcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 8

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "readerSDK"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-interface {p4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    sget-object p2, Lcom/amazon/falkor/FalkorBookOpenManager;->INSTANCE:Lcom/amazon/falkor/FalkorBookOpenManager;

    const/4 p3, 0x0

    invoke-direct {p2, p1, v0, p3, p4}, Lcom/amazon/falkor/FalkorBookOpenManager;->openBook(Landroid/app/Activity;Lcom/amazon/kindle/krx/content/IBook;ZLcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void

    .line 43
    :cond_0
    new-instance v0, Lcom/amazon/falkor/FalkorBook;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/amazon/falkor/FalkorBook;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, v0, p2, p4}, Lcom/amazon/falkor/FalkorBookOpenManager;->openBook(Landroid/app/Activity;Lcom/amazon/kindle/krx/content/IBook;ZLcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void
.end method

.method public final openBook(Ljava/lang/String;ZLcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 2

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "readerSDK"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    const-string/jumbo v1, "readerSDK.readerUIManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/amazon/falkor/FalkorBookOpenManager;->openBook(Landroid/app/Activity;Ljava/lang/String;ZLcom/amazon/kindle/krx/IKindleReaderSDK;)V

    :cond_1
    return-void
.end method

.method public final openBookWithoutOneTap(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z
    .locals 3

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sdk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.readerUIManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Landroid/app/Activity;

    .line 69
    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p2

    invoke-interface {p2, p1, v2, v2, v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;Landroid/os/Bundle;Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method
