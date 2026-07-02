.class public final Lcom/amazon/kindle/content/SideloadedContentUtilsManager;
.super Ljava/lang/Object;
.source "SideloadedContentUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/content/SideloadedContentUtilsManager;

.field private static final INSTANCE$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 229
    new-instance v0, Lcom/amazon/kindle/content/SideloadedContentUtilsManager;

    invoke-direct {v0}, Lcom/amazon/kindle/content/SideloadedContentUtilsManager;-><init>()V

    sput-object v0, Lcom/amazon/kindle/content/SideloadedContentUtilsManager;->INSTANCE:Lcom/amazon/kindle/content/SideloadedContentUtilsManager;

    .line 230
    sget-object v0, Lcom/amazon/kindle/content/SideloadedContentUtilsManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kindle/content/SideloadedContentUtilsManager$INSTANCE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/SideloadedContentUtilsManager;->INSTANCE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getINSTANCE()Lcom/amazon/kindle/content/SideloadedContentUtils;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/content/SideloadedContentUtilsManager;->INSTANCE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/SideloadedContentUtils;

    return-object v0
.end method

.method public static final getInstance()Lcom/amazon/kindle/content/SideloadedContentUtils;
    .locals 1

    .line 233
    sget-object v0, Lcom/amazon/kindle/content/SideloadedContentUtilsManager;->INSTANCE:Lcom/amazon/kindle/content/SideloadedContentUtilsManager;

    invoke-direct {v0}, Lcom/amazon/kindle/content/SideloadedContentUtilsManager;->getINSTANCE()Lcom/amazon/kindle/content/SideloadedContentUtils;

    move-result-object v0

    return-object v0
.end method
