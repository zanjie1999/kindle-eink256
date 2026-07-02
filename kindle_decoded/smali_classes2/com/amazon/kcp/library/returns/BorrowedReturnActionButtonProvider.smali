.class public Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;
.super Ljava/lang/Object;
.source "BorrowedReturnActionButtonProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$IReturnType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/ui/IActionButton<",
        "Ljava/util/List<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;>;",
        "Ljava/util/List<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "dialogTag"

.field private static final RETURN_ACTION_METRICS_TAG:Ljava/lang/String; = "ReturnItems"


# instance fields
.field private final activityProvider:Lcom/amazon/kcp/library/ActivityProvider;

.field private final libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field private returnTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$IReturnType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/ActivityProvider;Lcom/amazon/kindle/content/ILibraryService;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;->returnTypes:Ljava/util/List;

    .line 34
    iput-object p1, p0, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;->activityProvider:Lcom/amazon/kcp/library/ActivityProvider;

    .line 35
    iput-object p2, p0, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 36
    new-instance p1, Lcom/amazon/kcp/library/returns/PrimeReturnType;

    invoke-direct {p1}, Lcom/amazon/kcp/library/returns/PrimeReturnType;-><init>()V

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;->registerReturnType(Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$IReturnType;)V

    .line 37
    new-instance p1, Lcom/amazon/kcp/library/returns/KUReturnType;

    invoke-direct {p1}, Lcom/amazon/kcp/library/returns/KUReturnType;-><init>()V

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;->registerReturnType(Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$IReturnType;)V

    .line 38
    new-instance p1, Lcom/amazon/kcp/library/returns/CUReturnType;

    invoke-direct {p1}, Lcom/amazon/kcp/library/returns/CUReturnType;-><init>()V

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;->registerReturnType(Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$IReturnType;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;)Lcom/amazon/kcp/library/ActivityProvider;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;->activityProvider:Lcom/amazon/kcp/library/ActivityProvider;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;->getTitleString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;)Lcom/amazon/kindle/content/ILibraryService;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    return-object p0
.end method

.method private createReturnButtonListener()Lcom/amazon/kcp/library/returns/ReturnActionButton$ReturnActionButtonListener;
    .locals 1

    .line 101
    new-instance v0, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$1;-><init>(Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;)V

    return-object v0
.end method

.method private getButtonText(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;->activityProvider:Lcom/amazon/kcp/library/ActivityProvider;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ActivityProvider;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->return_menu_plural:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->return_menu_singular:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method private getTitleString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;->activityProvider:Lcom/amazon/kcp/library/ActivityProvider;

    invoke-interface {v0}, Lcom/amazon/kcp/library/ActivityProvider;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 66
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 67
    iget-object v2, p0, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;->returnTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$IReturnType;

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/krx/content/IBook;

    .line 69
    invoke-interface {v3, v5}, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$IReturnType;->matches(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    .line 81
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->return_title_singular_template:I

    .line 82
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$IReturnType;

    invoke-interface {v1}, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$IReturnType;->getTypeStringId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    .line 83
    invoke-virtual {v0, p1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 87
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 88
    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->return_title_plural_one_program_template:I

    .line 89
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$IReturnType;

    invoke-interface {v1}, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$IReturnType;->getTypeStringId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v3

    aput-object v1, v5, v4

    invoke-virtual {v0, v2, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 92
    :cond_4
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->return_title_plural_multiple_program:I

    new-array v2, v4, [Ljava/lang/Object;

    .line 93
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method protected filterMatchingBooks(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/content/IBook;

    .line 128
    iget-object v2, p0, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;->returnTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$IReturnType;

    .line 129
    invoke-interface {v3, v1}, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$IReturnType;->matches(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/krx/content/ContentType;->MAGAZINE:Lcom/amazon/kindle/krx/content/ContentType;

    if-eq v3, v4, :cond_1

    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public get(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/IActionButton;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)",
            "Lcom/amazon/kindle/krx/ui/IActionButton<",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation

    .line 43
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;->filterMatchingBooks(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v1, p1, :cond_0

    .line 45
    new-instance p1, Lcom/amazon/kcp/library/returns/ReturnActionButton;

    invoke-direct {p0}, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;->createReturnButtonListener()Lcom/amazon/kcp/library/returns/ReturnActionButton$ReturnActionButtonListener;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;->getButtonText(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/amazon/kcp/library/returns/ReturnActionButton;-><init>(Lcom/amazon/kcp/library/returns/ReturnActionButton$ReturnActionButtonListener;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;->get(Ljava/util/List;)Lcom/amazon/kindle/krx/ui/IActionButton;

    move-result-object p1

    return-object p1
.end method

.method public registerReturnType(Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider$IReturnType;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/library/returns/BorrowedReturnActionButtonProvider;->returnTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
