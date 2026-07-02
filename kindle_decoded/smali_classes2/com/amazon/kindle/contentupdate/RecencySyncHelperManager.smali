.class public final Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager;
.super Ljava/lang/Object;
.source "RecencySyncHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager;

.field private static final INSTANCE$delegate:Lkotlin/Lazy;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager;

    invoke-direct {v0}, Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager;-><init>()V

    sput-object v0, Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager;->INSTANCE:Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager;

    .line 40
    sget-object v0, Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager$INSTANCE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager;->INSTANCE$delegate:Lkotlin/Lazy;

    .line 45
    const-class v0, Lcom/amazon/kindle/contentupdate/RecencySyncHelperImpl;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(RecencySyncHelperImpl::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getINSTANCE()Lcom/amazon/kindle/contentupdate/RecencySyncHelper;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager;->INSTANCE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/contentupdate/RecencySyncHelper;

    return-object v0
.end method

.method public static final getInstance()Lcom/amazon/kindle/contentupdate/RecencySyncHelper;
    .locals 1

    .line 42
    sget-object v0, Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager;->INSTANCE:Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager;

    invoke-direct {v0}, Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager;->getINSTANCE()Lcom/amazon/kindle/contentupdate/RecencySyncHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getTAG$KindleReaderLibrary_release()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/amazon/kindle/contentupdate/RecencySyncHelperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method
