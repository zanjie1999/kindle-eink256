.class final Lcom/amazon/kindle/displaymask/DisplayMaskManager$INSTANCE$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DisplayMaskUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/displaymask/DisplayMaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/displaymask/DisplayMaskUtils;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/displaymask/DisplayMaskManager$INSTANCE$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/displaymask/DisplayMaskManager$INSTANCE$2;

    invoke-direct {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskManager$INSTANCE$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/displaymask/DisplayMaskManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kindle/displaymask/DisplayMaskManager$INSTANCE$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;
    .locals 3

    .line 23
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskUtilsKt;->access$getKnownFactories$p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/displaymask/DisplayMaskUtilsFactory;

    .line 24
    sget-object v2, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->INSTANCE:Lcom/amazon/kindle/displaymask/DisplayMaskManager;

    invoke-static {v2}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->access$getApplication$p(Lcom/amazon/kindle/displaymask/DisplayMaskManager;)Landroid/app/Application;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/displaymask/DisplayMaskUtilsFactory;->createDisplayMaskUtils(Landroid/app/Application;)Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 27
    :cond_1
    sget-object v0, Lcom/amazon/kindle/displaymask/NoDisplayMaskUtils;->INSTANCE:Lcom/amazon/kindle/displaymask/NoDisplayMaskUtils;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/amazon/kindle/displaymask/DisplayMaskManager$INSTANCE$2;->invoke()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    return-object v0
.end method
