.class final Lcom/amazon/kindle/displaymask/NoDisplayMaskUtils;
.super Ljava/lang/Object;
.source "DisplayMaskUtils.kt"

# interfaces
.implements Lcom/amazon/kindle/displaymask/DisplayMaskUtils;


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/displaymask/NoDisplayMaskUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 142
    new-instance v0, Lcom/amazon/kindle/displaymask/NoDisplayMaskUtils;

    invoke-direct {v0}, Lcom/amazon/kindle/displaymask/NoDisplayMaskUtils;-><init>()V

    sput-object v0, Lcom/amazon/kindle/displaymask/NoDisplayMaskUtils;->INSTANCE:Lcom/amazon/kindle/displaymask/NoDisplayMaskUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addScreenModeChangeListener(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "listener"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public deviceSupportsDisplayMask()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeScreenModeChangeListener(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "listener"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
