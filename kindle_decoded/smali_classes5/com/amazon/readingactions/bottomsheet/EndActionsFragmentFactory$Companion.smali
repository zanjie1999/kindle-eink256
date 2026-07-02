.class public final Lcom/amazon/readingactions/bottomsheet/EndActionsFragmentFactory$Companion;
.super Ljava/lang/Object;
.source "EndActionsFragmentFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/bottomsheet/EndActionsFragmentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEndActionsFragmentFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EndActionsFragmentFactory.kt\ncom/amazon/readingactions/bottomsheet/EndActionsFragmentFactory$Companion\n*L\n1#1,31:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/amazon/readingactions/bottomsheet/EndActionsFragmentFactory$Companion;-><init>()V

    return-void
.end method

.method private final isMaxHeightPercentageValid(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public final create(FLjava/lang/String;Lcom/amazon/ea/ReaderEventHandler$EndActionsEntryPoint;)Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;
    .locals 4

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entryPoint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/bottomsheet/EndActionsFragmentFactory$Companion;->isMaxHeightPercentageValid(F)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    :goto_0
    new-instance v1, Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;

    invoke-direct {v1}, Lcom/amazon/readingactions/bottomsheet/EndActionsFragment;-><init>()V

    .line 15
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ID"

    .line 16
    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "maxHeightPercentage"

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 18
    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 21
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method
