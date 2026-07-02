.class final Lcom/amazon/android/util/ReviewUtilsManager$INSTANCE$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ReviewUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/util/ReviewUtilsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/android/util/ReviewUtils;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/android/util/ReviewUtilsManager$INSTANCE$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/android/util/ReviewUtilsManager$INSTANCE$2;

    invoke-direct {v0}, Lcom/amazon/android/util/ReviewUtilsManager$INSTANCE$2;-><init>()V

    sput-object v0, Lcom/amazon/android/util/ReviewUtilsManager$INSTANCE$2;->INSTANCE:Lcom/amazon/android/util/ReviewUtilsManager$INSTANCE$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/android/util/ReviewUtils;
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/android/util/ReviewUtils;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/util/ReviewUtils;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/android/util/NoOpReviewUtils;

    invoke-direct {v0}, Lcom/amazon/android/util/NoOpReviewUtils;-><init>()V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/amazon/android/util/ReviewUtilsManager$INSTANCE$2;->invoke()Lcom/amazon/android/util/ReviewUtils;

    move-result-object v0

    return-object v0
.end method
