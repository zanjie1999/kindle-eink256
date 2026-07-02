.class public final Lcom/amazon/kindle/utils/ManageYourTitlesUtilsManager;
.super Ljava/lang/Object;
.source "ManageYourTitlesUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/utils/ManageYourTitlesUtilsManager;

.field private static final INSTANCE$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 153
    new-instance v0, Lcom/amazon/kindle/utils/ManageYourTitlesUtilsManager;

    invoke-direct {v0}, Lcom/amazon/kindle/utils/ManageYourTitlesUtilsManager;-><init>()V

    sput-object v0, Lcom/amazon/kindle/utils/ManageYourTitlesUtilsManager;->INSTANCE:Lcom/amazon/kindle/utils/ManageYourTitlesUtilsManager;

    .line 155
    sget-object v0, Lcom/amazon/kindle/utils/ManageYourTitlesUtilsManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kindle/utils/ManageYourTitlesUtilsManager$INSTANCE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/utils/ManageYourTitlesUtilsManager;->INSTANCE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getINSTANCE()Lcom/amazon/kindle/utils/ManageYourTitlesUtils;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/utils/ManageYourTitlesUtilsManager;->INSTANCE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/utils/ManageYourTitlesUtils;

    return-object v0
.end method

.method public static final getInstance()Lcom/amazon/kindle/utils/ManageYourTitlesUtils;
    .locals 1

    .line 158
    sget-object v0, Lcom/amazon/kindle/utils/ManageYourTitlesUtilsManager;->INSTANCE:Lcom/amazon/kindle/utils/ManageYourTitlesUtilsManager;

    invoke-direct {v0}, Lcom/amazon/kindle/utils/ManageYourTitlesUtilsManager;->getINSTANCE()Lcom/amazon/kindle/utils/ManageYourTitlesUtils;

    move-result-object v0

    return-object v0
.end method
