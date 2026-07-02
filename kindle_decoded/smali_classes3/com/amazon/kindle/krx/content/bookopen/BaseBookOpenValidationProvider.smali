.class public final Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenValidationProvider;
.super Ljava/lang/Object;
.source "BaseBookOpenValidationProvider.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBaseValidation(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateValidation;
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenValidationProvider$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 21
    new-instance p1, Lcom/amazon/kindle/krx/content/bookopen/ReaderBaseValidation;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/content/bookopen/ReaderBaseValidation;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 20
    :cond_1
    new-instance p1, Lcom/amazon/kindle/krx/content/bookopen/SplashScreenBaseValidation;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/content/bookopen/SplashScreenBaseValidation;-><init>()V

    goto :goto_0

    .line 19
    :cond_2
    new-instance p1, Lcom/amazon/kindle/krx/content/bookopen/DownloadBaseValidation;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/content/bookopen/DownloadBaseValidation;-><init>()V

    goto :goto_0

    .line 18
    :cond_3
    new-instance p1, Lcom/amazon/kindle/krx/content/bookopen/EntryPointBaseValidation;

    invoke-direct {p1}, Lcom/amazon/kindle/krx/content/bookopen/EntryPointBaseValidation;-><init>()V

    :goto_0
    return-object p1
.end method
