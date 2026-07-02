.class public final Lcom/audible/mobile/network/adapters/ButtonTypeMoshiAdapter;
.super Ljava/lang/Object;
.source "ButtonTypeMoshiAdapter.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/lang/String;)Lcom/audible/mobile/network/models/common/Button$Type;
    .locals 1

    .line 9
    sget-object v0, Lcom/audible/mobile/network/models/common/Button$Type;->Companion:Lcom/audible/mobile/network/models/common/Button$Type$Companion;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/network/models/common/Button$Type$Companion;->typeFromString(Ljava/lang/String;)Lcom/audible/mobile/network/models/common/Button$Type;

    move-result-object p1

    return-object p1
.end method

.method public final toJson(Lcom/audible/mobile/network/models/common/Button$Type;)Ljava/lang/String;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/audible/mobile/network/models/common/Button$Type;->getTypeName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
