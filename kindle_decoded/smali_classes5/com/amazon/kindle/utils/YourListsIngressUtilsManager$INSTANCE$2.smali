.class final Lcom/amazon/kindle/utils/YourListsIngressUtilsManager$INSTANCE$2;
.super Lkotlin/jvm/internal/Lambda;
.source "YourListsIngressUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/utils/YourListsIngressUtilsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/utils/YourListsIngressUtils;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/utils/YourListsIngressUtilsManager$INSTANCE$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/utils/YourListsIngressUtilsManager$INSTANCE$2;

    invoke-direct {v0}, Lcom/amazon/kindle/utils/YourListsIngressUtilsManager$INSTANCE$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/utils/YourListsIngressUtilsManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kindle/utils/YourListsIngressUtilsManager$INSTANCE$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/utils/YourListsIngressUtils;
    .locals 3

    .line 121
    new-instance v0, Lcom/amazon/kindle/utils/YourListsIngressUtils;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    const-string v2, "Utils.getFactory().authenticationManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/amazon/kindle/utils/YourListsIngressUtils;-><init>(Lcom/amazon/kcp/application/IAuthenticationManager;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/amazon/kindle/utils/YourListsIngressUtilsManager$INSTANCE$2;->invoke()Lcom/amazon/kindle/utils/YourListsIngressUtils;

    move-result-object v0

    return-object v0
.end method
