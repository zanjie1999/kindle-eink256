.class public final Lcom/amazon/kcp/application/StandAloneKindleObjectModuleKt;
.super Ljava/lang/Object;
.source "StandAloneKindleObjectModule.kt"


# static fields
.field private static final PLAY_SERVICE_SUCCESS_CODES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "StandAloneKindleObjectModule"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 25
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/StandAloneKindleObjectModuleKt;->PLAY_SERVICE_SUCCESS_CODES:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getPLAY_SERVICE_SUCCESS_CODES$p()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/kcp/application/StandAloneKindleObjectModuleKt;->PLAY_SERVICE_SUCCESS_CODES:Ljava/util/List;

    return-object v0
.end method
